# Run all checks
check: validate-skills validate-readme

# Validate skill frontmatter against the Agent Skills spec
validate-skills:
    bash scripts/validate-skills.sh

# Validate README skills catalog is complete and alphabetized
validate-readme:
    bash scripts/validate-readme.sh

# Install only the architecture skill's pinned tooling
setup-architecture:
    pnpm --dir skills/visualizing-architecture install --frozen-lockfile --ignore-scripts

# Typecheck, build and run its colocated unit tests
check-architecture:
    pnpm --dir skills/visualizing-architecture typecheck
    pnpm --dir skills/visualizing-architecture build
    pnpm --dir skills/visualizing-architecture test

# Requires Playwright Chromium or ARCHITECTURE_TEST_BROWSER; see skill README
check-architecture-browser:
    pnpm --dir skills/visualizing-architecture test:browser
