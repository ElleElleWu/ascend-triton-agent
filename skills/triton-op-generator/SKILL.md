---
name: triton-op-generator
description: >
  Triton-Ascend 算子端到端生成与优化编排。按 Phase 0-7 组织任务构建、约束卡设计、
  代码生成、精度验证、性能优化与报告归档；调用 9 个能力 Skill，知识卡来自本包
  knowledge/。触发：用户要求从 PyTorch/Triton 参考实现生成 Ascend Triton 算子，
  或优化已有 Triton-Ascend 算子时。
license: Apache-2.0
compatibility: opencode
metadata:
  audience: ascend-npu-developers
  workflow: phase-0-7
---

# Triton-Ascend 算子生成与优化编排

## 角色

你是 Triton-Ascend 算子开发的主编排。你的职责是**按阶段调用正确的 Skill、读正确的知识卡、把验证门禁走完**，而不是把所有细节都塞进当前上下文。

固定配置：

- framework: `torch`
- dsl: `triton_ascend`
- backend: `ascend`
- 目标几何平均加速比：默认 `5`，可通过项目根 `triton_op_generator.config.json` 的 `target_speedup` 覆盖
- 输出目录：项目根 `triton_ascend_output/`

## 不可违反的约束

1. **禁止 PyTorch 退化**：`forward()` 里只能用 `torch.empty/zeros/ones`、view/reshape/permute/transpose、shape/dtype/device 元信息、kernel 启动；计算必须在 `@triton.jit` kernel 里。
2. **禁止 host 侧 D2H 同步**：不能 `x.item()`、`int(x[i])`、`torch.nonzero(x)` 之类把张量值带回 host 做数据依赖分支。
3. **禁止修改 baseline**：`npu_benchmark/` 下的 `.py`/`.json` 是判据，不得编辑；只写 `triton_ascend_output/`。
4. **精度门禁先于性能**：`triton-op-verifier` 没通过，不进入 Phase 4。
5. **无 NPU 就停**：检测不到 Ascend NPU 时，明确报告“未检测到 Ascend NPU，无法执行生成/验证”，不要伪造结果。

## 知识库

本包自带 Triton 核心知识子集：

```text
.opencode/knowledge/ops/triton/
├── guides/constraints/          # 类别约束、global_constraints、attention 路由卡
├── guides/triton_ascend/        # 编程基础、API 参考、grid 限制、示例
└── optimizations/operator_optimization/debug_checklist.md
```

读取规则：

- 类别约束索引：`.opencode/knowledge/ops/triton/guides/constraints/index.md`
- attention 家族必须先读路由卡：`.opencode/knowledge/ops/triton/guides/constraints/attention_writing_classification.md`
- 类别卡：`.opencode/knowledge/ops/triton/guides/constraints/{category}_constraints.md`（`-` 换 `_` 后加 `_constraints.md`）
- 编程基础：`.opencode/knowledge/ops/triton/guides/triton_ascend/programming_basics.md`
- API 参考：`.opencode/knowledge/ops/triton/guides/triton_ascend/api_reference.md`
- grid 限制：`.opencode/knowledge/ops/triton/guides/triton_ascend/grid_launch_limits.md`
- 调试清单：`.opencode/knowledge/ops/triton/optimizations/operator_optimization/debug_checklist.md`

只读需要的卡，不要把整个知识库读进上下文。

## 输入模式

按优先级判定：

1. **Mode A：torch 标杆 + GPU Triton kernel**。torch 作为精度判据，GPU kernel 作为参考实现。若 torch 是单 case，扩展为至少 5 种 shape 的多 case。
2. **Mode A：仅 torch 标杆**。从 `get_input_groups()` 或同名 `.json` 构建任务；没有就生成多 case。
3. **Mode B：仅 GPU kernel + `.pt`**。`input_data` 必填，`gpu_output` 可选；没有 torch 标杆时用 `.pt` 做精度对照。

## Phase 0：参数确认

1. 解析 `arch`；用户未指定时运行 `npu-smi info` 推断，失败则用 `ascend910b1`。
2. 检查 `ASCEND_HOME_PATH` 与 `npu-smi info`；没有 NPU 直接停止，输出明确错误。
3. 解析知识库根：项目根 `.opencode/knowledge`；确认 `guides/constraints/index.md` 可读。
4. 解析配置覆盖：项目根 `triton_op_generator.config.json`。

## Phase 1：任务构建

调用 `triton-task-extractor`，传入 op_name、torch 标杆或 GPU kernel、可选 `.pt`、`arch`。产出任务文件与输入组；多 case 必须包含 `get_input_groups()` 或 `.json`。

## Phase 2：算法设计

1. 先定 `category`：读 `constraints/index.md`；attention 家族先读 `attention_writing_classification.md`。
2. 读对应 `{category}_constraints.md`，摘录 Layer 1 硬约束。
3. 生成 `precheck.json`，记录 `category`、`constraint_card`、`card_exists`、`layer1_constraints_loaded`、`loaded_via`。
4. 调用 `triton-op-designer`，传入任务、`arch`、约束卡、可选 GPU kernel；产出 `sketch.txt`。
5. 逐条核对 sketch 与 Layer 1；冲突则回到第 2 步重做，最多 2 次。

## Phase 3：代码生成与验证

1. 调用 `triton-op-coding`，传入任务、sketch、约束卡、可选 GPU 参考。
2. 调用 `triton-op-verifier` 的 `verify.py` 跑精度；失败按错误类型处理：
   - 编译错误：查 `guides/triton_ascend/` 与约束卡；
   - 精度错误：调用 `triton-precision-debug`；
   - 隐藏状态/形状错误：回到 Phase 2 修 sketch。
3. 精度通过后记录 `passed_cases/total_cases`，再进入 Phase 4。

## Phase 4：性能优化与验证

1. 调用 `triton-latency-optimizer`，按它的优化点清单逐点扫描；每点都要有验证证据。
2. 每轮修改后调用 `triton-op-verifier` 的 `benchmark.py`，记录延迟、加速比、精度。
3. 达到目标加速比或优化点耗尽后停止；不要为了数字改 baseline。
4. 需要瓶颈归因时调用 `triton-simulator-optimizer`（msprof）或 `triton-mfu-analyzer`（MFU）。

## Phase 5：报告

产出：

```text
triton_ascend_output/op_{op_name}_{timestamp}_{rid}/
├── {op_name}_generated.py
├── report.md
├── summary.json
└── session.md          # 可选
```

`summary.json` 至少包含：`op_name`、`arch`、`success`、`passed_cases`、`total_cases`、`speedup_vs_torch`、`target_speedup`、`latency_ms`、`config`、`artifacts`。

## Phase 6：会话导出（可选）

需要复盘时导出关键命令、验证输出与迭代记录；不导出密钥、Token、内网地址。

## Phase 7：经验沉淀（可选）

只写项目内草稿，不修改 `.opencode/knowledge` 或 npm 包内知识：

- 约束卡草稿：`knowledge/drafts/constraints/{category}.md`
- 性能 runbook 草稿：`knowledge/drafts/runbooks/{op_name}.md`
- 在草稿顶部写 `status: draft`、来源、平台、验证范围；是否上游合入由人工决定。

## Skill 路由

| 阶段 | Skill | 用途 |
|---|---|---|
| Phase 1 | `triton-task-extractor` | 任务文件、多 case 输入组 |
| Phase 2 | `triton-op-designer` | 算法草图与分块策略 |
| Phase 3 | `triton-op-coding` | kernel 生成与修复 |
| Phase 3/4 | `triton-op-verifier` | verify/benchmark/freeze baseline |
| Phase 4 | `triton-latency-optimizer` | 延迟优化点扫描 |
| Phase 3 | `triton-precision-debug` | 精度对齐 |
| Phase 4 | `triton-simulator-optimizer` | msprof 采集与瓶颈诊断 |
| Phase 4 | `triton-mfu-analyzer` | MFU 测量与拆解 |
| 全程 | `npu-arch` | 芯片架构与约束 |

## 失败处理

- 无 NPU：停止，输出“未检测到 Ascend NPU，无法执行生成/验证”，不要生成假报告。
- 知识卡缺失：记录 `card_exists: false`，继续但标注“无 Layer 1 保护”；不要凭记忆编造约束。
- 精度持续失败：先核对 baseline、输入、dtype、mask、layout，再怀疑编译器。
- 性能异常：先看 tile/分块/索引位宽/dtype，再看编译器选项。
