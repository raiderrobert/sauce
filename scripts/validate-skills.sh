#!/usr/bin/env bash
set -euo pipefail

errors=0
warnings=0
checked=0

fail() {
  echo "FAIL: $1"
  errors=$((errors + 1))
}

warn() {
  echo "WARN: $1"
  warnings=$((warnings + 1))
}

ok() {
  echo "  OK: $1"
}

# Extract a frontmatter field value by key
get_field() {
  local file="$1" key="$2"
  awk -v key="$key" '
    /^---$/ { block++; next }
    block == 1 && $0 ~ "^" key ":" {
      sub("^" key ":[[:space:]]*", "")
      gsub(/^["'"'"']|["'"'"']$/, "")
      print
      exit
    }
  ' "$file"
}

# Count lines in SKILL.md body (after second ---)
count_body_lines() {
  awk '
    /^---$/ { block++; next }
    block >= 2 { count++ }
    END { print count + 0 }
  ' "$1"
}

# Check that every skill directory has a SKILL.md
for skill_dir in skills/*/; do
  [ -d "$skill_dir" ] || continue
  if [ ! -f "${skill_dir}SKILL.md" ]; then
    fail "${skill_dir} — missing SKILL.md"
  fi
done

echo "=== Validating skills ==="
echo ""

for skill_file in skills/*/SKILL.md; do
  [ -f "$skill_file" ] || continue
  checked=$((checked + 1))

  skill_dir=$(dirname "$skill_file")
  dir_name=$(basename "$skill_dir")
  file_errors=0

  echo "--- $skill_file ---"

  # --- name field ---
  name=$(get_field "$skill_file" "name")

  if [ -z "$name" ]; then
    fail "  name — missing or empty"
    file_errors=$((file_errors + 1))
  else
    if [ "${#name}" -gt 64 ]; then
      fail "  name — ${#name} chars (max 64)"
      file_errors=$((file_errors + 1))
    fi

    if echo "$name" | grep -qE '[^a-z0-9-]'; then
      fail "  name — contains invalid characters (only lowercase a-z, 0-9, hyphens allowed): '$name'"
      file_errors=$((file_errors + 1))
    fi

    if echo "$name" | grep -qE '^-|-$'; then
      fail "  name — must not start or end with a hyphen: '$name'"
      file_errors=$((file_errors + 1))
    fi

    if echo "$name" | grep -qE '\-\-'; then
      fail "  name — must not contain consecutive hyphens: '$name'"
      file_errors=$((file_errors + 1))
    fi

    if [ "$name" != "$dir_name" ]; then
      fail "  name — '$name' does not match directory name '$dir_name'"
      file_errors=$((file_errors + 1))
    fi
  fi

  # --- description field ---
  description=$(get_field "$skill_file" "description")

  if [ -z "$description" ]; then
    fail "  description — missing or empty"
    file_errors=$((file_errors + 1))
  else
    desc_len=${#description}
    if [ "$desc_len" -gt 1024 ]; then
      fail "  description — $desc_len chars (max 1024)"
      file_errors=$((file_errors + 1))
    else
      ok "description — $desc_len chars"
    fi
  fi

  # --- compatibility field (optional, but has max length) ---
  compatibility=$(get_field "$skill_file" "compatibility")
  if [ -n "$compatibility" ] && [ "${#compatibility}" -gt 500 ]; then
    fail "  compatibility — ${#compatibility} chars (max 500)"
    file_errors=$((file_errors + 1))
  fi

  # --- body length (warning only) ---
  body_lines=$(count_body_lines "$skill_file")
  if [ "$body_lines" -gt 500 ]; then
    warn "  body is $body_lines lines (recommended max 500)"
  fi

  if [ "$file_errors" -eq 0 ]; then
    ok "name — '$name'"
  fi

  echo ""
done

echo "=== Summary ==="

if [ "$checked" -eq 0 ]; then
  echo "No skills found to validate"
  exit 1
fi

echo "$checked skill(s) checked, $errors error(s), $warnings warning(s)"

if [ "$errors" -gt 0 ]; then
  exit 1
fi
