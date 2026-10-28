#!/usr/bin/env node
// SPDX-License-Identifier: Apache-2.0
// Install the opencode agent, skills and knowledge subset into a project.
//
//   npx opencode-triton-ascend install --target /path/to/project
//   npx opencode-triton-ascend install --target /path/to/project --npm
//
// Default mode copies the plugin into .opencode/plugins/ so it works before the
// package is published. --npm adds "opencode-triton-ascend" to opencode.json and
// lets opencode install the plugin from npm instead.

import { cpSync, existsSync, mkdirSync, readFileSync, writeFileSync } from "node:fs"
import { dirname, join, resolve } from "node:path"
import { fileURLToPath } from "node:url"

const PACKAGE_ROOT = resolve(dirname(fileURLToPath(import.meta.url)), "..")
const PLUGIN_NAME = "opencode-triton-ascend"

function parseArgs(argv) {
  const out = { target: process.cwd(), mode: "local" }
  for (let i = 0; i < argv.length; i += 1) {
    const arg = argv[i]
    if (arg === "install") continue
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

function main() {
  const options = parseArgs(process.argv.slice(2))
  if (options.help) {
    console.log("usage: opencode-triton-ascend install [--target <project>] [--npm]")
    return
  }
  const target = options.target
  const opencodeDir = join(target, ".opencode")

  copyDir(join(PACKAGE_ROOT, "agents"), join(opencodeDir, "agents"))
  copyDir(join(PACKAGE_ROOT, "skills"), join(opencodeDir, "skills"))
  copyDir(join(PACKAGE_ROOT, "knowledge"), join(opencodeDir, "knowledge"))

  let configPath = null
  if (options.mode === "npm") {
    configPath = upsertOpencodeConfig(target)
  } else {
    const pluginDir = join(opencodeDir, "plugins", "triton-ascend")
    copyFile(join(PACKAGE_ROOT, "index.js"), join(pluginDir, "index.js"))
    copyDir(join(PACKAGE_ROOT, "lib"), join(pluginDir, "lib"))
    writeFileSync(
      join(pluginDir, "package.json"),
      `${JSON.stringify({ private: true, type: "module" }, null, 2)}\n`,
    )
  }

  console.log(`triton-op-generator installed into ${target}`)
  console.log(`  agents:    ${join(opencodeDir, "agents")}`)
  console.log(`  skills:    ${join(opencodeDir, "skills")}`)
  console.log(`  knowledge: ${join(opencodeDir, "knowledge")}`)
  console.log(`  plugin:    ${options.mode === "npm" ? "opencode.json plugin array" : join(opencodeDir, "plugins", "triton-ascend")}`)
  if (configPath) console.log(`  config:    ${configPath}`)
  console.log("")
  console.log("Next: start opencode, select the triton-op-generator agent, then describe the task.")
  console.log("Requires Ascend NPU + CANN for generation/verification; install is safe without them.")
}

try {
  main()
} catch (error) {
  console.error(`opencode-triton-ascend: ${error.message}`)
  process.exit(1)
}
