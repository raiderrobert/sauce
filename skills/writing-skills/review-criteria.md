# Skill Review Criteria — Audit Checklist

## Overview

Systematic checklist for evaluating whether a skill is well-formed, useful, and internally consistent. Use this when auditing existing skills or as a final quality check before deploying a new skill.

## 1. Value

| Check | Question |
|-------|----------|
| LLM overlap | Does this provide knowledge Claude doesn't already have? |
| Actionability | Does it give concrete instructions, or just restate what Claude would generate? |
| Unique capability | Does it enable something impossible without it? (LSP ops, multi-rule checklists, tool workflows) |

**If a skill merely restates common programming knowledge, it adds token cost with no benefit. Remove it or compress it.**

## 2. Reference Integrity

| Check | How to Verify |
|-------|---------------|
| Skill-to-skill refs | Every `skill-name` reference points to an existing skill |
| File refs | Every `./file.md` or `ref/file.md` path resolves to an actual file |
| No orphans | Every file in the directory is reachable from SKILL.md (directly or transitively) |

### Verification Commands

```bash
# Find all skill-to-skill references and check they exist
grep -oP '`\K[a-z-]+(?=` skill)' skills/*/SKILL.md | sort -u

# Find all file references in a SKILL.md
grep -oP '`\./\K[^`]+' skills/my-skill/SKILL.md

# Find orphaned files (files not referenced anywhere)
# Compare files on disk vs files mentioned in SKILL.md and other .md files
diff <(find skills/my-skill -name '*.md' -not -name 'SKILL.md' | sort) \
     <(grep -ohP '\./[^\s`]+\.md' skills/my-skill/SKILL.md | sed 's|^\./||' | sort)
```

## 3. Frontmatter

| Check | Rule |
|-------|------|
| `name` | Must match the directory name |
| `description` | Present for user-facing skills. Starts with "Use when..." + one-line objective. Triggers + objective, never workflow summary. Third person. |
| `globs` | If present, patterns must be relevant. Don't duplicate globs from a parent skill that routes to this one. |
| `allowed-tools` | If present, only list tools the skill actually instructs the agent to use. |
| No stale fields | No references to removed infrastructure, deleted tools, or deprecated features. |

## 4. Content Accuracy

| Check | What to Look For |
|-------|-----------------|
| Code examples | Do they compile/run? Are APIs current? |
| Crate/library versions | Are recommended tools still the standard choice? (e.g., `probe-run` -> `probe-rs`) |
| Deprecated patterns | Are any examples using deprecated syntax? (e.g., `axum::Server` -> `axum::serve`, `impl !Clone` is unstable) |
| Dead instructions | References to commands, tools, or workflows that no longer exist? |
| Shell directives | Any `!backtick` or other dead infrastructure artifacts? |

### Common Staleness Patterns

| Pattern | Example |
|---------|---------|
| Deleted skill references | `domain-web` after consolidation into `rust-domain` |
| Deprecated APIs | `axum::Server::bind()` (removed in axum 0.7) |
| Unstable syntax | `impl !Clone for T {}` (requires nightly) |
| Dead tools | `probe-run` (replaced by `probe-rs`) |
| Non-standard conventions | `G_CONFIG` prefix (not a Rust convention) |

## 5. Structure

| Check | Rule |
|-------|------|
| SKILL.md as router | Routes to reference files, doesn't duplicate their content |
| Reference self-containment | Each reference file is usable without SKILL.md context |
| Consistent format | Tables, headers, code blocks follow consistent style within the skill |
| Routing is one-level-deep | Only SKILL.md routes agent to ref files. Ref files must not route to other refs for the answer. Cross-references ("see also") are OK. |
| SKILL.md size | Under 500 lines. If over, split into reference files. |
| No ASCII art | Token-expensive decorative content adds no value for the agent |

## 6. Trigger Coverage

| Check | Rule |
|-------|------|
| Keyword coverage | Description keywords cover the skill's actual scope. Missing keywords = missed triggers. |
| No overlap | Keywords don't significantly overlap with another skill's triggers. Overlap causes routing ambiguity. |
| Appropriate specificity | Specific enough to avoid false triggers, broad enough to catch legitimate queries. |
| Natural language | Include how users actually phrase requests, not just technical terms. |

## Review Output Format

For each skill reviewed, produce:

```markdown
## <skill-name>

### Verdict: PASS | NEEDS FIXES

### Issues Found
- [HIGH] Description of critical issue
- [MEDIUM] Description of moderate issue
- [LOW] Description of minor issue

### Broken References
- `path/to/reference` -> does not exist

### Recommendations
- Specific actionable fix
```

## 7. Model-Capability Staleness

| Check | Rule |
|-------|------|
| Constraint audit | Are any instructions over-constraining reasoning for current model capabilities? |
| Version note | Was this skill last tested against the current model generation? |
| Handcuff test | Would removing prescriptive constraints and leaving just output specs improve results? |

Skills degrade in two directions: external staleness (APIs change) and internal staleness (model capabilities outgrow constraints). Constraints that were guardrails on an earlier model become handcuffs on a more capable one. Re-test skills when target models update.

## Verification Script

After fixing all issues in a skill set, run verification greps to confirm zero remaining problems:

```bash
# Example: verify no stale references remain after a consolidation
grep -r 'deleted-skill-name' skills/  # should return 0 results

# Verify no deprecated patterns remain
grep -r 'deprecated-pattern' skills/  # should return 0 results

# Verify all files referenced from SKILL.md exist
for ref in $(grep -oP '\./[^\s`\)]+' skills/my-skill/SKILL.md); do
  [ -f "skills/my-skill/$ref" ] || echo "MISSING: $ref"
done
```
