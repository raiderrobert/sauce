# Run all checks
check: validate-skills

# Validate skill frontmatter against the Agent Skills spec
validate-skills:
    bash scripts/validate-skills.sh
