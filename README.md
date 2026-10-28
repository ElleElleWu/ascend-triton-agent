# opencode-triton-ascend

[![test](https://github.com/ElleElleWu/ascend-triton-agent/actions/workflows/test.yml/badge.svg)](https://github.com/ElleElleWu/ascend-triton-agent/actions/workflows/test.yml)

GitHub: <https://github.com/ElleElleWu/ascend-triton-agent>

Triton-Ascend 算子生成与优化工作流，面向 [opencode](https://opencode.ai)。一个 npm 包同时包含：

- 一个主编排 agent：`triton-op-generator`
- 10 个 Skill：1 个 Phase 0-7 编排 + 9 个能力 Skill
- 63 个 Triton-Ascend 核心知识文件：类别约束卡、编程指南、API 参考、调试清单
- 3 个 hook：baseline 路径保护、知识库路径注入、无 NPU 环境提示

> 这是社区包，不是 Anthropic、DeepSeek 或华为官方插件。生成/验证需要 Ascend NPU 与 CANN；安装和 Skill 发现不需要 NPU。

## 安装

```bash
npm i -D opencode-triton-ascend
npx opencode-triton-ascend install
```

安装器会：

1. 复制 `agents/` 到 `.opencode/agents/`
2. 复制 `skills/` 到 `.opencode/skills/`
3. 复制 `knowledge/` 到 `.opencode/knowledge/`
4. 默认把插件复制到 `.opencode/plugins/triton-ascend/`，不依赖 npm 发布即可加载

还没发布 npm 时，可以直接从 GitHub 安装：

```bash
npm i -D github:ElleElleWu/ascend-triton-agent
npx opencode-triton-ascend install
```

如果包已经发布到 npm，也可以改用：

```bash
npx opencode-triton-ascend install --npm
```

`--npm` 会把 `opencode-triton-ascend` 写入项目根 `opencode.json` 的 `plugin` 数组；已存在的配置只追加，不覆盖其他字段。

## 使用

启动 opencode，切换到 `triton-op-generator` agent（Tab 循环，或 `@triton-op-generator`），然后描述任务：

```text
生成一个 Triton-Ascend 框架的 softmax 算子实现，ASCEND_RT_VISIBLE_DEVICES=1
```

支持三种输入：

- torch 标杆（单 case 会自动扩为多 shape）
- torch 标杆 + GPU Triton kernel（kernel 作参考实现）
- 仅 GPU Triton kernel + 同名 `.pt`（含 `input_data`）

输出在 `triton_ascend_output/op_{op_name}_{timestamp}_{rid}/`：

```text
├── {op_name}_generated.py
├── report.md
├── summary.json
└── session.md
```

## 包内结构

```text
opencode-triton-ascend/
├── index.js                         # plugin：hooks
├── lib/guard.js                     # 路径保护 helper
├── bin/install.js                   # 资产安装器
├── agents/
│   └── triton-op-generator.md       # 主编排 agent
├── skills/
│   ├── triton-op-generator/         # Phase 0-7 编排
│   ├── triton-task-extractor/
│   ├── triton-op-designer/
│   ├── triton-op-coding/
│   ├── triton-op-verifier/
│   ├── triton-latency-optimizer/
│   ├── triton-precision-debug/
│   ├── triton-simulator-optimizer/
│   ├── triton-mfu-analyzer/
│   └── npu-arch/
└── knowledge/
    └── ops/triton/
        ├── guides/constraints/      # 类别约束卡 + 路由卡 + 索引
        ├── guides/triton_ascend/    # 编程基础、API、grid 限制、示例
        └── optimizations/operator_optimization/debug_checklist.md
```

## Hooks

| Hook | 行为 |
|---|---|
| `tool.execute.before` | 拦截 `edit`/`write`/`patch` 对 `npu_benchmark/*.py|json` 的修改；`triton_ascend_output/` 放行 |
| `shell.env` | 注入 `TRITON_ASCEND_PLUGIN=1` 与 `TRITON_ASCEND_KB_ROOT=<project>/.opencode/knowledge` |
| `event: session.created` | 调 `npu-smi info`；无 NPU 时写 warning，不阻塞会话 |

## 无 NPU 时

- 安装、Skill 发现、agent 切换都正常；
- 执行生成/验证时，编排 Skill 会要求先跑 `npu-smi info`，检测不到就停止并报告“未检测到 Ascend NPU，无法执行生成/验证”；
- 插件不会伪造结果，也不会生成半成品报告。

## 环境要求

- opencode（当前版本）
- 执行生成/验证时：Ascend 910/950 系列 NPU、CANN Toolkit、`torch_npu`、`triton-ascend`
- 安装与加载：Node.js ≥ 18

## 知识库范围

本包只带 Triton 核心子集，不包含 cannbot-knowledge 全量（约 400 MB）：

- 55 个 `guides/constraints/*.md`
- 6 个 `guides/triton_ascend/*.md`
- 2 个 `optimizations/operator_optimization/` 优化卡（debug_checklist、flash_attention_optimization）

需要完整知识库时，可在项目内配置外部 KB；编排 Skill 会优先使用 `.opencode/knowledge`，缺失的卡会记录 `card_exists: false` 并标注“无 Layer 1 保护”。

## 本地验证

```bash
npm test          # 10 项：资产存在性、frontmatter、安装器、guard、NPU 事件
npm pack --dry-run
```

当前结果：

- 10/10 通过；
- npm 包 431 文件、1.6 MB tarball、5.4 MB unpacked；
- 用 tarball 在临时项目安装，安装器成功复制 10 个 Skill、64 个知识文件，以及本地插件；
- `import("opencode-triton-ascend")` 只导出 `TritonAscend`；guard helper 在 `lib/guard.js`，不作为插件导出。

## 首版限制

- 未在真实 opencode + Ascend NPU 环境完成端到端联调；
- 9 个能力 Skill 的脚本来自 cannbot-skills，路径与依赖按 opencode 布局做了复制，尚未逐脚本验证；
- 未发布到 npm；npm 包名 `opencode-triton-ascend` 目前未被占用；
- 不是 opencode 官方插件，ecosystem 收录需要单独 PR。

## 许可证

Apache-2.0。知识卡与 Skill 内容来自 CANNBot 仓群，保留原始归属；发布前需完成公司授权与归属披露。
