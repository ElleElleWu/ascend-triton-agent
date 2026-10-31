// SPDX-License-Identifier: Apache-2.0
// Full cannbot-knowledge fetch/cache/sync helpers.
//
// The npm tarball stays small: it ships only the 63-file core fallback. The
// installer fetches the complete knowledge tree from the official repository at
// upstream HEAD by default; pass --kb-ref to pin a known commit.

import { cpSync, existsSync, mkdirSync, readdirSync, renameSync, rmSync, statSync, writeFileSync } from "node:fs"
import { spawnSync } from "node:child_process"
import { homedir } from "node:os"
import { dirname, join, resolve } from "node:path"

export const DEFAULT_REPOSITORY = "https://gitcode.com/cann/cannbot-knowledge.git"
export const MIN_FULL_FILES = 1000

function runGit(args, options = {}) {
  const result = spawnSync("git", ["-c", "credential.helper=", ...args], {
    encoding: "utf8",
    stdio: ["ignore", "pipe", "pipe"],
    env: {
      ...process.env,
      GIT_TERMINAL_PROMPT: "0",
      ...(process.env.GIT_ASKPASS ? { GIT_ASKPASS: process.env.GIT_ASKPASS } : {}),
      ...options.env,
    },
  })
  if (result.error) throw new Error(`git not available: ${result.error.message}`)
  if (result.status !== 0) {
    const detail = (result.stderr || result.stdout || "").trim().split("\n").slice(-3).join(" ")
    throw new Error(`git ${args[0]} failed: ${detail}`)
  }
  return result.stdout.trim()
}

export function remoteHead(repository = DEFAULT_REPOSITORY) {
  const out = runGit(["ls-remote", repository, "HEAD"])
  const sha = out.split(/\s+/)[0]
  if (!/^[0-9a-f]{40}$/.test(sha)) throw new Error(`cannot resolve HEAD for ${repository}`)
  return sha
}

export function defaultCacheRoot() {
  const base = process.env.XDG_CACHE_HOME || join(homedir(), ".cache")
  return join(base, "opencode-triton-ascend", "knowledge")
}

function cacheDir(cacheRoot, ref) {
  return join(cacheRoot, ref)
}

function countFiles(dir) {
  if (!existsSync(dir)) return 0
  let count = 0
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name)
    if (entry.isDirectory()) count += countFiles(path)
    else count += 1
  }
  return count
}

// Clone one sparse checkout of <repo>/knowledge at an exact commit into the
// shared cache. Returns the cache directory (which contains knowledge/).
export function ensureKnowledge({ repository = DEFAULT_REPOSITORY, ref, cacheRoot = defaultCacheRoot(), log = console.log } = {}) {
  if (!ref) throw new Error("a knowledge ref/commit is required")
  const destination = cacheDir(cacheRoot, ref)
  const knowledgeDir = join(destination, "knowledge")
  if (existsSync(knowledgeDir) && countFiles(knowledgeDir) >= MIN_FULL_FILES) return destination

  mkdirSync(dirname(destination), { recursive: true })
  const tmp = `${destination}.tmp-${process.pid}-${Date.now()}`
  rmSync(tmp, { recursive: true, force: true })
  log(`[knowledge] fetching ${repository} @ ${ref.slice(0, 12)}`)
  try {
    runGit(["clone", "--depth", "1", "--filter=blob:none", "--no-checkout", repository, tmp])
    runGit(["-C", tmp, "sparse-checkout", "init", "--cone"])
    runGit(["-C", tmp, "sparse-checkout", "set", "knowledge"])
    runGit(["-C", tmp, "fetch", "--depth", "1", "origin", ref])
    runGit(["-C", tmp, "checkout", "--detach", "FETCH_HEAD"])
    runGit(["-C", tmp, "sparse-checkout", "reapply"])
    const files = countFiles(join(tmp, "knowledge"))
    if (files < MIN_FULL_FILES) throw new Error(`full KB has only ${files} files (expected >= ${MIN_FULL_FILES})`)
    rmSync(destination, { recursive: true, force: true })
    renameSync(tmp, destination)
    writeFileSync(
      join(destination, ".source.json"),
      `${JSON.stringify({ repository, ref, file_count: files, fetched_at: new Date().toISOString() }, null, 2)}\n`,
    )
    log(`[knowledge] cached ${files} files at ${destination}`)
    return destination
  } catch (error) {
    rmSync(tmp, { recursive: true, force: true })
    throw error
  }
}

// Copy the full (or bundled core) tree into <target>/.opencode/knowledge.
// Replacing the directory avoids stale cards when the upstream KB evolves.
export function installKnowledge({
  packageRoot,
  target,
  repository = DEFAULT_REPOSITORY,
  ref,
  core = false,
  cacheRoot = defaultCacheRoot(),
  log = console.log,
} = {}) {
  let source
  let metadata = null
  if (core) {
    source = join(packageRoot, "knowledge")
    metadata = { mode: "core", repository, ref: null, file_count: countFiles(source) }
  } else {
    const cached = ensureKnowledge({ repository, ref, cacheRoot, log })
    source = join(cached, "knowledge")
    metadata = {
      mode: "full",
      repository,
      ref,
      file_count: countFiles(source),
      synced_at: new Date().toISOString(),
    }
  }
  const destination = join(target, ".opencode", "knowledge")
  rmSync(destination, { recursive: true, force: true })
  mkdirSync(dirname(destination), { recursive: true })
  cpSync(source, destination, { recursive: true, force: true })
  if (metadata) {
    writeFileSync(join(destination, ".cannbot-kb.json"), `${JSON.stringify(metadata, null, 2)}\n`)
  }
  return { destination, ...metadata }
}

export function knowledgeStats(dir) {
  return {
    files: countFiles(dir),
    bytes: dirSize(dir),
  }
}

function dirSize(dir) {
  if (!existsSync(dir)) return 0
  let bytes = 0
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name)
    if (entry.isDirectory()) bytes += dirSize(path)
    else {
      try {
        bytes += statSync(path).size
      } catch {
        // A concurrent update may remove a file; ignore it for the report.
      }
    }
  }
  return bytes
}
