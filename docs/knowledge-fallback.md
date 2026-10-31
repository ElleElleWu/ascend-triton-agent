# Triton-Ascend 核心知识子集

这是 npm 包内的离线 fallback（63 个 Triton 核心文件）。默认安装会从官方 `cannbot-knowledge` 仓拉取完整知识树；只有 `--core-kb` 才使用本目录。

```text
ops/triton/
├── guides/constraints/          # 55 个文件：类别约束卡、global_constraints、attention 路由卡、索引
├── guides/triton_ascend/        # 6 个文件：编程基础、API 参考、grid 限制、示例、索引
└── optimizations/operator_optimization/   # 2 个文件：debug_checklist、flash_attention_optimization
```

使用方式：

- 先读 `guides/constraints/index.md` 选类别；
- attention 家族先读 `guides/constraints/attention_writing_classification.md`；
- 再读 `{category}_constraints.md` 的 Layer 1-3；
- 编程问题读 `guides/triton_ascend/`；
- 优化后按 `debug_checklist.md` 自检。

全量知识库约 400 MB，包含 500+ 张卡与 runbook；本包只带核心子集，避免 npm 包和官方目录体积超限。需要完整知识时，可在项目内挂载外部 cannbot-knowledge。

来源：cannbot-knowledge `knowledge/ops/triton/`；保留原始内容与归属，许可证见仓库根 `LICENSE` 与上游仓说明。
