// SPDX-License-Identifier: Apache-2.0
import assert from "node:assert/strict"
import { execFileSync } from "node:child_process"
import { cpSync, existsSync, mkdtempSync, readFileSync, readdirSync, rmSync, statSync } from "node:fs"
import { tmpdir } from "node:os"
import { join, resolve } from "node:path"
import { test } from "node:test"
import { fileURLToPath } from "node:url"

const ROOT = resolve(fileURLToPath(new URL("..", import.meta.url)))
const SKILLS = [
  "triton-op-generator",
  "triton-task-extractor",
  "triton-op-designer",
  "triton-op-coding",
  "triton-op-verifier",
  "triton-latency-optimizer",
  "triton-precision-debug",
  "triton-simulator-optimizer",
  "triton-mfu-analyzer",
  "npu-arch",
]

function frontmatterName(markdown) {
  const match = markdown.match(/^---\n([\s\S]*?)\n---/)
  if (!match) return null
  return match[1].match(/^name:\s*(.+)$/m)?.[1]?.trim() ?? null
}

function walk(dir) {
  const out = []
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name)
    if (entry.isDirectory()) out.push(...walk(path))
    else out.push(path)
  }
  return out
}

test("no legacy Claude-only paths remain in public assets", () => {
  for (const base of ["skills", "knowledge"]) {
    for (const file of walk(join(ROOT, base)).filter((path) => path.endsWith(".md"))) {
      const text = readFileSync(file, "utf8")
      assert.ok(!text.includes("plugins-official"), `legacy plugin path in ${file}`)
      assert.ok(!text.includes(".claude/skills"), `Claude-only path in ${file}`)
    }
  }
})

test("agent, skills and knowledge are present", () => {
  const agent = readFileSync(join(ROOT, "agents", "triton-op-generator.md"), "utf8")
  assert.match(agent, /^---\n/)
  assert.match(agent, /^mode:\s*primary$/m)
  assert.ok(agent.split("\n").length > 900, "agent prompt should keep the full Phase 0-7 workflow")

  for (const skill of SKILLS) {
    const file = join(ROOT, "skills", skill, "SKILL.md")
    assert.ok(existsSync(file), `missing ${skill}`)
    assert.equal(frontmatterName(readFileSync(file, "utf8")), skill)
  }

  assert.ok(
    existsSync(join(ROOT, "knowledge", "ops", "triton", "guides", "constraints", "index.md")),
  )
  const debug = join(
    ROOT,
    "knowledge",
    "ops",
    "triton",
    "optimizations",
    "operator_optimization",
    "debug_checklist.md",
  )
  assert.ok(existsSync(debug))
  assert.equal(walk(join(ROOT, "knowledge", "ops")).length, 63)
})

test("installer copies assets and a local plugin", async () => {
  const target = mkdtempSync(join(tmpdir(), "triton-install-"))
  try {
    execFileSync(process.execPath, [join(ROOT, "bin", "install.js"), "install", "--target", target, "--core-kb"], {
      stdio: "pipe",
    })

    assert.ok(existsSync(join(target, ".opencode", "agents", "triton-op-generator.md")))
    for (const skill of SKILLS) {
      assert.ok(existsSync(join(target, ".opencode", "skills", skill, "SKILL.md")))
    }
    assert.ok(
      existsSync(join(target, ".opencode", "knowledge", "ops", "triton", "guides", "constraints", "index.md")),
    )
    assert.ok(existsSync(join(target, ".opencode", "triton-op-generator.config.json")))

    const pluginPath = join(target, ".opencode", "plugins", "triton-ascend.js")
    assert.ok(existsSync(pluginPath))
    assert.ok(existsSync(join(target, ".opencode", "plugins", "triton-ascend-guard.js")))
    const entry = readFileSync(pluginPath, "utf8")
    assert.ok(entry.includes('from "./triton-ascend-guard.js"'))
  } finally {
    rmSync(target, { recursive: true, force: true })
  }
})

test("installer --npm preserves existing opencode.json fields", () => {
  const target = mkdtempSync(join(tmpdir(), "triton-preserve-"))
  try {
    cpSync(join(ROOT, "opencode.json.example"), join(target, "opencode.json"))
    execFileSync(process.execPath, [join(ROOT, "bin", "install.js"), "install", "--target", target, "--npm", "--core-kb"], {
      stdio: "pipe",
    })
    const config = JSON.parse(readFileSync(join(target, "opencode.json"), "utf8"))
    assert.equal(config.model, "deepseek/deepseek-chat")
    assert.ok(config.plugin.includes("opencode-triton-ascend-generator"))
  } finally {
    rmSync(target, { recursive: true, force: true })
  }
})
