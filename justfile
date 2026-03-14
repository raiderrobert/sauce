# Run all checks
check: validate-skills

# Validate skill frontmatter descriptions are within the 1024 character limit
validate-skills:
    bash scripts/validate-skill-descriptions.sh
