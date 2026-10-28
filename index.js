// SPDX-License-Identifier: Apache-2.0
// triton-op-generator opencode plugin.
//
// Thin plugin: environment warning + baseline path guard. The workflow lives in
// skills/, the knowledge subset lives in knowledge/, and the agent definition
// lives in agents/. This file only carries hooks.

import { collectPaths, isProtectedPath } from "./lib/guard.js"

export const TritonAscend = async (ctx = {}) => {
  const { $, directory, client } = ctx
  const projectRoot = directory || process.cwd()

  const log = async (level, message, extra) => {
    try {
      await client?.app?.log?.({
        body: { service: "triton-ascend", level, message, extra },
      })
    } catch {
      // Logging must never break the host.
    }
  }

  await log("info", "plugin loaded", { projectRoot })

  return {
    "tool.execute.before": async (input, output) => {
      if (!input || !["edit", "write", "patch"].includes(input.tool)) return
      const paths = collectPaths(output?.args)
      for (const path of paths) {
        if (isProtectedPath(path)) {
          throw new Error(
            `triton-ascend: 拒绝修改 baseline 路径 ${path}。` +
              " 只允许写 triton_ascend_output/；npu_benchmark/ 是判据。",
          )
        }
      }
    },

    "shell.env": async (input, output) => {
      if (!output?.env) return
      output.env.TRITON_ASCEND_PLUGIN = "1"
      output.env.TRITON_ASCEND_KB_ROOT = `${projectRoot}/.opencode/knowledge`
    },

    event: async ({ event }) => {
      if (event?.type !== "session.created") return
      try {
        if (typeof $ !== "function") return
        const result = await $`npu-smi info`.nothrow()
        if (result.exitCode === 0) {
          await log("info", "Ascend NPU detected")
        } else {
          await log(
            "warn",
            "未检测到 Ascend NPU；triton-op-generator 的生成/验证不可用",
          )
        }
      } catch {
        await log("warn", "NPU preflight skipped")
      }
    },
  }
}
