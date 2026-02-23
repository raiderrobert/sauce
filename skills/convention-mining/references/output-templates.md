# Output Templates

## Option A: Conventions Document

Use this format for a standalone conventions reference.

```markdown
# [Repo Name] Coding Conventions
> Extracted from PR review history ([date range], [N] PRs analyzed)

## [Category Name]

**Convention:** [Prescriptive statement: "Use X, not Y"]

**Why:** [Rationale from review comments, if available]

**Examples from reviews:**
- "[Quoted review comment]" — @reviewer on PR #NNN
- "[Quoted review comment]" — @reviewer on PR #NNN

**Frequency:** [High/Medium/Low — how often this comes up]

---

[Repeat for each category, ordered by frequency]

## Reviewer Specializations

| Reviewer | Primary Focus Areas |
|----------|-------------------|
| @name | area1, area2, area3 |

## Sources

PRs analyzed: #NNN, #NNN, #NNN, ...
Date range: YYYY-MM-DD to YYYY-MM-DD
```

## Option B: Skill Structure

Use this when conventions are complex enough to warrant a full skill with reference files.

### SKILL.md Structure

```markdown
---
name: [repo]-conventions
description: [Repo name] coding conventions extracted from PR review patterns. Use when writing or reviewing code in [repo] to follow team standards for [top 3-4 categories]. Covers [brief list of domains].
---

# [Repo] Conventions

[1-2 sentence summary of what this skill enforces]

## Critical Rules (Always Apply)

[Top 5-7 highest-frequency conventions as brief, prescriptive rules]

1. **[Rule]** — [One-line explanation]
2. **[Rule]** — [One-line explanation]
...

## Domain-Specific Guides

For detailed patterns with examples, see the relevant reference file:

- **[Domain 1]** (e.g., Styling/CSS): See [references/styling.md](references/styling.md)
- **[Domain 2]** (e.g., Data Fetching): See [references/data-fetching.md](references/data-fetching.md)
- **[Domain 3]** (e.g., Testing): See [references/testing.md](references/testing.md)

## Reviewer Specializations

| Reviewer | Ask About |
|----------|-----------|
| @name | area1, area2 |
```

### Reference File Structure

Each reference file follows this pattern:

```markdown
# [Domain] Conventions

## Rules

### [Convention Name]

**Do:** [correct pattern with code example]

**Don't:** [incorrect pattern with code example]

**Evidence:**
- "@reviewer on PR #NNN: [quoted comment]"

---

[Repeat for each convention in this domain]
```

## Option C: CLAUDE.md Additions

Use this format when adding to an existing CLAUDE.md. Present as a diff or clearly marked section.

```markdown
## Code Review Conventions

<!-- Extracted from PR review history, [date range] -->

### [Category]
- [Convention as a bullet point]
- [Convention as a bullet point]

### [Category]
- [Convention as a bullet point]
```

Keep these terse — CLAUDE.md is read on every conversation start, so every line must justify its token cost. Link to external reference files for detailed examples.
