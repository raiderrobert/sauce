---
name: convention-mining
description: Use when you want to understand what reviewers actually enforce on a repo, discover undocumented team standards, onboard to a new codebase's culture, create a coding conventions skill from real review patterns, audit a mined skill, or verify that conventions are accurate. Trigger on "what do reviewers care about", "extract conventions from PRs", "mine review feedback", "what patterns does this team enforce", "create a conventions guide from PR history", "team standards from code reviews", "PR feedback analysis", "what does the team prefer", "audit this skill", "verify the conventions", "check if these quotes are real", "is this skill accurate".
---

# Convention Mining

Surface implicit coding conventions from merged PR review comments, then verify and harden the results. This skill covers two phases: mining conventions from review data, and auditing convention skills for accuracy.

## Workflow

| Phase | When to Use | Guide |
|-------|-------------|-------|
| **Mining** | Extracting conventions from PR review history for the first time | [mining.md](mining.md) |
| **Auditing** | Verifying a mined skill is factually correct before merging, or hardening an existing conventions skill | [auditing.md](auditing.md) |

Mining produces a conventions document or skill. Auditing verifies that the output is accurate — quotes are real, code examples match the actual codebase, and nothing contradicts existing docs. Run auditing after mining, or independently on any conventions skill that needs review.

## Phase Routing

**Route to [mining.md](mining.md) when the user wants to:**
- Extract conventions from PR review history
- Understand what reviewers enforce on a repo
- Create a conventions guide, skill, or CLAUDE.md additions
- Onboard to a new codebase's review culture

**Route to [auditing.md](auditing.md) when the user wants to:**
- Audit or review a mined conventions skill
- Verify that quoted review comments are real
- Check code examples against the actual codebase
- Find gaps, overlaps, or contradictions with existing docs
- Harden a conventions skill before merging

## References

Detailed command references and templates are in the `references/` directory:

- [references/gh-commands.md](references/gh-commands.md) — GitHub CLI commands for fetching PR review data
- [references/output-templates.md](references/output-templates.md) — Templates for conventions documents, skills, and CLAUDE.md additions
- [references/verification-techniques.md](references/verification-techniques.md) — Commands and procedures for verifying quotes, finding gaps, and checking code examples
