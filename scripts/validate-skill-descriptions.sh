#!/usr/bin/env bash
set -euo pipefail

MAX_LENGTH=1024
errors=0

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
  if [ "$length" -gt "$MAX_LENGTH" ]; then
    echo "FAIL: $skill_file — description is $length chars (max $MAX_LENGTH)"
    errors=$((errors + 1))
  fi
done

if [ "$errors" -gt 0 ]; then
  echo ""
  echo "$errors skill(s) have descriptions exceeding $MAX_LENGTH characters"
  exit 1
fi

echo "All skill descriptions are within the $MAX_LENGTH character limit"
