#!/usr/bin/env bash
set -euo pipefail

errors=0

fail() {
  echo "FAIL: $1"
  errors=$((errors + 1))
}

ok() {
  echo "  OK: $1"
}

readme="README.md"

echo "=== Validating README Skills Catalog ==="
echo ""

# Extract skill names from the README table (lines matching "| skill-name | ...")
readme_skills=()
while IFS= read -r line; do
  # Skip header and separator rows
  [[ "$line" =~ ^\|[[:space:]]*Skill ]] && continue
  [[ "$line" =~ ^\|[-]+\| ]] && continue
  # Extract first column, strip markdown link syntax [name](#anchor) -> name
  skill_name=$(echo "$line" | awk -F'|' '{gsub(/^[[:space:]]+|[[:space:]]+$/, "", $2); print $2}' | sed 's/^\[//;s/\](.*$//')
  [ -n "$skill_name" ] && readme_skills+=("$skill_name")
done < <(grep -E '^\|' "$readme")

# Check every skill directory is listed in the README
for skill_dir in skills/*/; do
  [ -d "$skill_dir" ] || continue
  dir_name=$(basename "$skill_dir")
  found=0
  for rs in "${readme_skills[@]}"; do
    if [ "$rs" = "$dir_name" ]; then
      found=1
      break
    fi
  done
  if [ "$found" -eq 0 ]; then
    fail "skill '$dir_name' is not listed in README.md Skills Catalog"
  else
    ok "skill '$dir_name' found in README"
  fi
done

# Check the README table is alphabetized
if [ "${#readme_skills[@]}" -gt 1 ]; then
  sorted=($(printf '%s\n' "${readme_skills[@]}" | sort))
  is_sorted=1
  for i in "${!readme_skills[@]}"; do
    if [ "${readme_skills[$i]}" != "${sorted[$i]}" ]; then
      is_sorted=0
      break
    fi
  done
  if [ "$is_sorted" -eq 0 ]; then
    fail "README Skills Catalog is not alphabetized. Expected order: ${sorted[*]}"
  else
    ok "README Skills Catalog is alphabetized"
  fi
fi

echo ""
echo "=== Summary ==="
echo "${#readme_skills[@]} skill(s) in README, $errors error(s)"

if [ "$errors" -gt 0 ]; then
  exit 1
fi
