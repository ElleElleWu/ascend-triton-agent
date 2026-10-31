#!/usr/bin/env node
// SPDX-License-Identifier: Apache-2.0
// Install the opencode agent, skills and knowledge into a project.
//
//   npx opencode-triton-ascend install --target /path/to/project
//   npx opencode-triton-ascend install --target /path/to/project --npm
//   npx opencode-triton-ascend install --target /path/to/project --core-kb
//   npx opencode-triton-ascend knowledge sync --target /path/to/project
//
// By default `install` fetches the complete cannbot-knowledge tree from the
// official repository at upstream HEAD (or --kb-ref for a pinned commit). The npm
// tarball only carries a 63-file core fallback; `--core-kb` stays offline.
// install and `knowledge sync` both track the upstream HEAD, so the KB can
// evolve without publishing a new npm package.

import { cpSync, existsSync, mkdirSync, readFileSync, writeFileSync } from "node:fs"
import { dirname, join, resolve } from "node:path"
import { fileURLToPath } from "node:url"
import {
  DEFAULT_REPOSITORY,
  defaultCacheRoot,
  installKnowledge,
  knowledgeStats,
  remoteHead,
} from "../lib/knowledge.js"

const PACKAGE_ROOT = resolve(dirname(fileURLToPath(import.meta.url)), "..")
const PLUGIN_NAME = "opencode-triton-ascend"

function parseArgs(argv) {
  const out = {
    command: "install",
    target: process.cwd(),
    mode: "local",
    core: false,
    kbLatest: false,
    kbRef: null,
    kbRepo: null,
    kbCache: null,
  }
  let i = 0
  if (argv[i] === "knowledge") {
    out.command = "sync"
    i += 1
    if (argv[i] === "sync") i += 1
  } else if (argv[i] === "install") {
    i += 1
  }
  for (; i < argv.length; i += 1) {
    const arg = argv[i]
    if (arg === "--target" || arg === "-t") {
      const value = argv[i + 1]
      if (!value) throw new Error("--target requires a path")
      out.target = resolve(value)
      i += 1
      continue
    }
    if (arg === "--npm" || arg === "--mode") {
      if (arg === "--mode") {
        const value = argv[i + 1]
        if (!["local", "npm"].includes(value)) throw new Error("--mode must be local or npm")
        out.mode = value
        i += 1
      } else {
        out.mode = "npm"
      }
      continue
    }
    if (arg === "--core-kb") {
      out.core = true
      continue
    }
    if (arg === "--kb-latest") {
      out.kbLatest = true
      continue
    }
    if (arg === "--kb-ref") {
      const value = argv[i + 1]
      if (!value) throw new Error("--kb-ref requires a commit/tag")
      out.kbRef = value
      i += 1
      continue
    }
    if (arg === "--kb-repo") {
      const value = argv[i + 1]
      if (!value) throw new Error("--kb-repo requires a URL")
      out.kbRepo = value
      i += 1
      continue
    }
    if (arg === "--kb-cache") {
      const value = argv[i + 1]
      if (!value) throw new Error("--kb-cache requires a path")
      out.kbCache = resolve(value)
      i += 1
      continue
    }
    if (arg === "--help" || arg === "-h") {
      out.help = true
      continue
    }
    throw new Error(`unknown argument: ${arg}`)
  }
  return out
}

function copyDir(source, destination) {
  if (!existsSync(source)) throw new Error(`missing package asset: ${source}`)
  mkdirSync(dirname(destination), { recursive: true })
  cpSync(source, destination, { recursive: true, force: true })
}

function copyFile(source, destination) {
  if (!existsSync(source)) throw new Error(`missing package asset: ${source}`)
  mkdirSync(dirname(destination), { recursive: true })
  cpSync(source, destination, { force: true })
}

function upsertOpencodeConfig(target) {
  const configPath = join(target, "opencode.json")
  let config = {}
  if (existsSync(configPath)) {
    try {
      config = JSON.parse(readFileSync(configPath, "utf8"))
    } catch (error) {
      throw new Error(`cannot parse ${configPath}: ${error.message}`)
    }
  }
  const plugins = Array.isArray(config.plugin) ? config.plugin : []
  if (!plugins.includes(PLUGIN_NAME)) plugins.push(PLUGIN_NAME)
  config.$schema ??= "https://opencode.ai/config.json"
  config.plugin = plugins
  writeFileSync(configPath, `${JSON.stringify(config, null, 2)}\n`)
  return configPath
}

function help() {
  console.log(`usage:
  opencode-triton-ascend install [--target <project>] [--npm] [--core-kb]
                                 [--kb-ref <commit>]
                                 [--kb-repo <url>] [--kb-cache <dir>]
  opencode-triton-ascend knowledge sync [--target <project>]
                                        [--kb-ref <commit>]
                                        [--kb-repo <url>] [--kb-cache <dir>]

install:
  default           fetch the full cannbot-knowledge tree at upstream HEAD
  --core-kb         copy only the bundled 63-file core fallback (offline)
  --kb-ref <ref>    fetch a specific commit/tag/branch (pin when needed)
  --kb-latest       accepted for compatibility; HEAD is already the default
  --npm             register the npm plugin in opencode.json

knowledge sync:
  replace <project>/.opencode/knowledge with the latest upstream full tree
  (or --kb-ref <ref>), then update .opencode/knowledge/.cannbot-kb.json.

install and knowledge sync both default to upstream HEAD, so the KB evolves with
cannbot-knowledge without a new npm release. Use --kb-ref to pin a known commit.`)
}

function resolveRef(options) {
  const repository = options.kbRepo || process.env.TRITON_KB_REPO || DEFAULT_REPOSITORY
  const ref = options.kbRef || remoteHead(repository)
  return { repository, ref }
}

function installKnowledgeFor(options, target) {
  const { repository, ref } = options.core
    ? { repository: options.kbRepo || process.env.TRITON_KB_REPO || DEFAULT_REPOSITORY, ref: null }
    : resolveRef(options)
  const result = installKnowledge({
    packageRoot: PACKAGE_ROOT,
    target,
    repository,
    ref,
    core: options.core,
    cacheRoot: options.kbCache || defaultCacheRoot(),
    log: console.log,
  })
  const stats = knowledgeStats(result.destination)
  const mode = result.mode === "full" ? `full @ ${String(result.ref).slice(0, 12)}` : "core fallback"
  console.log(`  knowledge: ${result.destination} (${mode}, ${result.file_count ?? stats.files} files, ${(stats.bytes / 1024 / 1024).toFixed(1)} MB)`)
  return { ...result, stats }
}

function main() {
  const options = parseArgs(process.argv.slice(2))
  if (options.help) {
    help()
    return
  }
  const target = options.target

  if (options.command === "sync") {
    console.log(`syncing full knowledge into ${target}`)
    installKnowledgeFor(options, target)
    console.log("knowledge sync complete")
    return
  }

  const opencodeDir = join(target, ".opencode")
  copyDir(join(PACKAGE_ROOT, "agents"), join(opencodeDir, "agents"))
  copyDir(join(PACKAGE_ROOT, "skills"), join(opencodeDir, "skills"))
  installKnowledgeFor(options, target)
  copyFile(join(PACKAGE_ROOT, "config.json"), join(opencodeDir, "triton-op-generator.config.json"))

  let configPath = null
  if (options.mode === "npm") {
    configPath = upsertOpencodeConfig(target)
  } else {
    // opencode only auto-discovers top-level *.js files under .opencode/plugins/,
    // not nested directories. Copy a rewritten entry point plus its guard helper.
    const pluginDir = join(opencodeDir, "plugins")
    const entry = readFileSync(join(PACKAGE_ROOT, "index.js"), "utf8").replace(
      'from "./lib/guard.js"',
      'from "./triton-ascend-guard.js"',
    )
    copyFile(join(PACKAGE_ROOT, "lib", "guard.js"), join(pluginDir, "triton-ascend-guard.js"))
    writeFileSync(join(pluginDir, "triton-ascend.js"), entry)
  }

  console.log(`triton-op-generator installed into ${target}`)
  console.log(`  agents:    ${join(opencodeDir, "agents")}`)
  console.log(`  skills:    ${join(opencodeDir, "skills")}`)
  console.log(`  config:    ${join(opencodeDir, "triton-op-generator.config.json")}`)
  console.log(`  plugin:    ${options.mode === "npm" ? "opencode.json plugin array" : join(opencodeDir, "plugins", "triton-ascend.js")}`)
  if (configPath) console.log(`  config:    ${configPath}`)
  console.log("")
  console.log("Next: start opencode, select the triton-op-generator agent, then describe the task.")
  console.log("Requires Ascend NPU + CANN for generation/verification; install is safe without them.")
}

try {
  main()
} catch (error) {
  console.error(`opencode-triton-ascend: ${error.message}`)
  if (!process.argv.includes("--core-kb")) {
    console.error("If the machine is offline, retry with --core-kb to install the bundled 63-file fallback.")
  }
  process.exit(1)
}
