// SPDX-License-Identifier: Apache-2.0

const PROTECTED = /(^|\/)npu_benchmark\/.*\.(py|json)$/i
const ALLOWED = /(^|\/)triton_ascend_output\//i
const PATH_KEYS = /^(filepath|file_path|path|filename|file|target|targetpath|target_path)$/i

function normalize(value) {
  return String(value).replaceAll("\\", "/")
}

export function isProtectedPath(value) {
  if (typeof value !== "string" || value.length === 0) return false
  const path = normalize(value)
  return PROTECTED.test(path) && !ALLOWED.test(path)
}

export function collectPaths(value, out = [], depth = 0) {
  if (!value || typeof value !== "object" || depth > 6) return out
  if (Array.isArray(value)) {
    for (const item of value) collectPaths(item, out, depth + 1)
    return out
  }
  for (const [key, child] of Object.entries(value)) {
    if (typeof child === "string" && PATH_KEYS.test(key)) out.push(child)
    else if (child && typeof child === "object") collectPaths(child, out, depth + 1)
  }
  return out
}
