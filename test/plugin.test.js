// SPDX-License-Identifier: Apache-2.0
import assert from "node:assert/strict"
import { test } from "node:test"
import { TritonAscend } from "../index.js"
import { collectPaths, isProtectedPath } from "../lib/guard.js"

function fakeContext(exitCode = 0) {
  const logs = []
  const ctx = {
    directory: "/tmp/triton-demo",
    client: {
      app: {
        log: async (entry) => {
          logs.push(entry)
        },
      },
    },
    $: () => ({ nothrow: async () => ({ exitCode }) }),
  }
  return { ctx, logs }
}

test("isProtectedPath blocks npu_benchmark but allows output", () => {
  assert.equal(isProtectedPath("/p/npu_benchmark/case.py"), true)
  assert.equal(isProtectedPath("/p/npu_benchmark/case.json"), true)
  assert.equal(isProtectedPath("/p/triton_ascend_output/case.py"), false)
  assert.equal(isProtectedPath("C:\\p\\npu_benchmark\\case.py"), true)
})

test("collectPaths only collects path-like keys", () => {
  const paths = collectPaths({
    filePath: "/a.py",
    content: "not a path",
    nested: { path: "/b.py", other: { file_path: "/c.json" } },
  })
  assert.deepEqual(paths.sort(), ["/a.py", "/b.py", "/c.json"])
})

test("guard rejects baseline edits and allows output writes", async () => {
  const { ctx } = fakeContext()
  const hooks = await TritonAscend(ctx)

  await assert.rejects(
    hooks["tool.execute.before"](
      { tool: "write" },
      { args: { filePath: "/tmp/triton-demo/npu_benchmark/case.py" } },
    ),
    /拒绝修改 baseline/,
  )

  await hooks["tool.execute.before"](
    { tool: "write" },
    { args: { filePath: "/tmp/triton-demo/triton_ascend_output/case.py" } },
  )

  await hooks["tool.execute.before"](
    { tool: "read" },
    { args: { filePath: "/tmp/triton-demo/npu_benchmark/case.py" } },
  )
})

test("shell.env injects plugin and KB root", async () => {
  const { ctx } = fakeContext()
  const hooks = await TritonAscend(ctx)
  const output = { env: {} }
  await hooks["shell.env"]({ cwd: "/tmp/triton-demo" }, output)
  assert.equal(output.env.TRITON_ASCEND_PLUGIN, "1")
  assert.equal(
    output.env.TRITON_ASCEND_KB_ROOT,
    "/tmp/triton-demo/.opencode/knowledge",
  )
})

test("session.created warns without NPU", async () => {
  const { ctx, logs } = fakeContext(1)
  const hooks = await TritonAscend(ctx)
  await hooks.event({ event: { type: "session.created" } })
  assert.ok(logs.some((entry) => entry.body.level === "warn"))
})

test("session.created logs info with NPU", async () => {
  const { ctx, logs } = fakeContext(0)
  const hooks = await TritonAscend(ctx)
  await hooks.event({ event: { type: "session.created" } })
  assert.ok(logs.some((entry) => entry.body.message === "Ascend NPU detected"))
})
