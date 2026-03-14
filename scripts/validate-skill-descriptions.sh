#!/usr/bin/env bash
set -euo pipefail

MAX_LENGTH=1024
errors=0
checked=0

for skill_file in skills/*/SKILL.md; do
  [ -f "$skill_file" ] || continue

  # Extract description from YAML frontmatter (between --- delimiters)
  description=$(awk '
    /^---$/ { block++; next }
    block == 1 && /^description:/ {
      sub(/^description:[[:space:]]*/, "")
      # Strip surrounding quotes if present
      gsub(/^["'"'"']|["'"'"']$/, "")
      print
      exit
    }
  ' "$skill_file")

  if [ -z "$description" ]; then
    echo "WARN: $skill_file — no description found in frontmatter"
    continue
  fi

  length=${#description}
  checked=$((checked + 1))
  if [ "$length" -gt "$MAX_LENGTH" ]; then
    echo "FAIL: $skill_file — description is $length chars (max $MAX_LENGTH)"
    errors=$((errors + 1))
  else
    echo "  OK: $skill_file — $length chars"
  fi
done

echo ""
if [ "$checked" -eq 0 ]; then
  echo "No skills found to validate"
  exit 1
fi

if [ "$errors" -gt 0 ]; then
  echo "$errors of $checked skill(s) have descriptions exceeding $MAX_LENGTH characters"
  exit 1
fi

echo "$checked skill(s) validated — all within $MAX_LENGTH character limit"
