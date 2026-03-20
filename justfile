# Run all checks
check: validate-skills validate-readme

# Validate skill frontmatter against the Agent Skills spec
validate-skills:
    bash scripts/validate-skills.sh

# Validate README skills catalog is complete and alphabetized
validate-readme:
    bash scripts/validate-readme.sh
