# Auditing Convention Skills

Verify and harden skills that were extracted from PR review history. Convention-mined skills have a specific failure mode: they look authoritative (real quotes, plausible rules) but may contain factual errors that are invisible without checking against the actual codebase and GitHub API.

## Why This Exists

The first review of a convention skill is never enough. Each review pass catches a different class of error:

| Pass | Lens | What It Catches |
|------|------|-----------------|
| 1 | Structure & coverage | Missing conventions, redundancy with CLAUDE.md, contradictions |
| 2 | Factual accuracy | Wrong type names, non-existent enums, misquoted reviewers |
| 3 | Internal consistency | Code examples that contradict each other across sections |
| 4 | Codebase reality | Wrong import paths, incorrect enum casing, outdated API patterns |

A skill can pass passes 1-3 and still have wrong import paths that would cause every code example to fail.

## Process

### Phase 1: Read Everything

Read the full skill and all existing documentation it should complement:

1. The skill's SKILL.md and all reference files
2. The project's CLAUDE.md
3. Any related skills (e.g., a segment-tracking skill if the conventions skill mentions analytics)

### Phase 2: Verify Quotes

Pick 5+ quoted review comments spread across different reviewers. Use `gh api` to verify each is real, correctly attributed, and not taken out of context. See [references/verification-techniques.md](references/verification-techniques.md) for commands.

For each quote, classify as:
- **Verified** — found, correct author, text matches (minor editorial cleanup is fine)
- **Unverified** — not found in API results (may be in older PRs beyond pagination)
- **Misattributed** — found but by a different author
- **Inaccurate** — found but text was significantly altered or context changes meaning

Acceptable editorial cleanup: trimming conversational filler ("Hey just a separate thought"), removing URLs, normalizing capitalization. Unacceptable: changing the meaning, omitting qualifiers like "probably", merging separate comments into one.

### Phase 3: Find Gaps

Fetch inline review comments from 15+ recent merged PRs. Categorize the feedback and compare against the skill's existing topics. See [references/verification-techniques.md](references/verification-techniques.md) for the process.

Rank gaps by priority:
- **High** — pattern seen in 2+ PRs or flagged by multiple reviewers
- **Medium** — seen once but architecturally significant (affects type safety, data integrity, etc.)
- **Low** — edge case, single occurrence, low impact

### Phase 4: Check Overlap

Compare the skill against CLAUDE.md and related skills for:
- **Verbatim duplication** — same rule stated the same way in both places. Remove from the skill or reduce to a cross-reference with only incremental detail.
- **Contradictions** — the skill says one thing, CLAUDE.md says the opposite. Determine which reflects actual reviewer behavior and reconcile.
- **Complementary overlap** — both mention the topic but from different angles. This is fine; note it but don't remove.

### Phase 5: Verify Code Examples Against Codebase

This is the pass most audits skip. For every code example in the skill:

1. **Check import paths** — do they match the project's actual aliases? (e.g., `generatedGql/graphql` vs `__generated__/graphql`)
2. **Check type/enum names** — do the referenced types actually exist? Are the enum member names correct? (PascalCase vs UPPER_SNAKE_CASE)
3. **Check internal consistency** — does the "Do" example in one section contradict the "Don't" example in an adjacent section?
4. **Check consistency with rules** — does a code example use hardcoded strings while the skill's own rule says "use enums"?

Use `grep` or `Glob` against the actual codebase to verify. Don't trust that a plausible-looking import path is correct.

### Phase 6: Fix and Re-Review

After fixing all findings, review the fixed version. Each fix can introduce new issues:
- Changing a code example may create a new contradiction with another section
- Adding a new convention may overlap with something already in CLAUDE.md
- Fixing an import path in one example but not another creates inconsistency

Repeat until a full review pass finds no issues.

## Output

Report findings with evidence. For each issue:

```
**[Category]: [Brief description]**
[File]:[line] — [what's wrong and why]
Evidence: [grep output, API response, or cross-reference showing the problem]
Fix: [what to do about it]
```

## Common Error Patterns

| Error | Example | How to Catch |
|-------|---------|-------------|
| Non-existent type | `BillingCadence` (actual: `BillingCycle`) | `grep` the `__generated__` directory |
| Wrong import alias | `'__generated__/graphql'` (actual: `'generatedGql/graphql'`) | `grep` for actual imports in `.ts`/`.tsx` files |
| Wrong enum casing | `.ANNUAL` in code (actual: `.Annual` PascalCase) | Read the generated enum definition |
| Contradictory examples | Section A's "Do" is Section B's "Don't" | Read adjacent sections together |
| Self-contradicting examples | Code example uses hardcoded strings while the rule says "use enums" | Compare each example against the skill's own critical rules |
| Missing qualifier in quote | "You should add..." (actual: "You **probably** should add...") | Verify quotes via `gh api` |
| Redundant with CLAUDE.md | `__mocks__/` rule copied verbatim | Diff the skill against CLAUDE.md |
| Contradiction with CLAUDE.md | Skill: "CSS modules for new styles" vs CLAUDE.md: "CSS modules as last resort" | Read both and compare |
| Stale reviewer table | "Key Reviewers" section that will go stale when team changes | Flag for removal |
| Dropped content | Removing a section loses a useful reviewer quote | Diff before/after to check for lost quotes |

## Reference

- **Verification commands and detailed procedures** → [references/verification-techniques.md](references/verification-techniques.md)
