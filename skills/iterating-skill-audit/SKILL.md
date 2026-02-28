---
name: iterating-skill-audit
description: "Use when skills need repeated audit-fix cycles until clean. Reviews skill files against quality criteria, fixes findings, and repeats until the audit pass comes back clean. Triggers on: audit skills iteratively, keep auditing, iterate on skills, audit until clean, repeated skill review, converge skill quality."
---

# Iterating Skill Audit

## Overview

Serial audit-fix loop for skill files: dispatch a read-only reviewer against baked-in quality criteria, then a fixer, commit, repeat until findings hit zero, plateau, or an iteration cap.

**Core principle:** One reviewer, one fixer, per iteration. Each pass commits directly. Commits are revert points.

## When to Use

- Skill files need multiple audit rounds to converge on clean
- User says "audit until clean", "keep auditing", or "iterate on skills"
- A single audit pass found issues and the user wants autonomous convergence

**When NOT to use:**
- Writing a new skill from scratch — use `writing-skills`
- Single-pass review with no iteration needed — use `writing-skills` review-criteria routing
- Auditing convention-mined skills specifically — use `auditing-convention-skills`

## Inputs

**Skill path** — the skill directory to audit (e.g., `skills/my-skill/`). Must contain a `SKILL.md`.

**Iteration cap** — default 5. The user can override.

The review focus is always `./review-focus.md` — not user-provided.

## Workflow

### 1. Discover Skill Structure

List all files in the skill directory:
```bash
ls -la skills/<skill-name>/
```

Read `SKILL.md` and all reference files. Note the directory name (must match frontmatter `name`).

### 2. Loop (iterations 1..cap)

#### 2a. Dispatch reviewer

Launch a read-only subagent:

| Parameter | Value |
|-----------|-------|
| `subagent_type` | `Explore` |
| `run_in_background` | `true` |

**Reviewer prompt:**

```
You are auditing a skill for quality issues.

## Skill Under Review
Directory: {skill directory absolute path}
Files: {list of files in the directory}

## Review Criteria
{contents of review-focus.md}

## Instructions
Read every file in the skill directory from disk using the Read tool.
Do NOT rely on any skill contents provided inline — always read the current state from disk.
Report ALL issues you find against ALL criteria. Do not hold back or deprioritize any findings.

## Output Format
For each issue found, produce:

### Finding: [stable title — same title if same issue persists across passes]
**Severity:** high | medium | low
**File:** `path/to/file:line`
**Description:** [what's wrong and why]
**Fix approach:** [specific steps]

If no issues found, respond with exactly: NO_FINDINGS
```

**The reviewer must read files from disk each pass.** The `Explore` subagent has access to Read, Glob, and Grep. Providing file paths (not contents) ensures each pass reviews the post-fix state, not a stale snapshot from before the fixer ran.

#### 2b. Parse findings

Three outcomes:

1. **Zero findings** (`NO_FINDINGS`) — break the loop, report clean.
2. **Same findings as previous pass** — plateau detected. Break the loop, report stuck findings.
3. **New or different findings** — proceed to fixer.

**Plateau detection:** Compare finding titles between consecutive passes. Identical set = plateau.

#### 2c. Dispatch fixer

Launch a general-purpose subagent:

| Parameter | Value |
|-----------|-------|
| `subagent_type` | `general-purpose` |
| `mode` | `bypassPermissions` |
| `run_in_background` | `true` |

**Fixer prompt:**

```
You are fixing issues found during audit pass {N} of a skill.

## Skill Directory
{skill directory path}

## Findings
{paste all findings from reviewer}

## Validation
After making all fixes, verify:
1. All file references in SKILL.md resolve to actual files
2. No orphaned files in the skill directory
3. Frontmatter `name` matches directory name
4. Description is under 1024 characters and single-line

## Commit
If all fixes are made and validation passes, create a single commit:
fix: address skill audit findings (pass {N})

Do NOT add co-authored-by lines.
Do NOT modify files beyond what the findings require.
Do NOT commit if validation fails — report the failure instead.
```

**If the fixer reports validation failure:** stop the loop. Report to the user.

#### 2d. Increment and continue

After a successful fixer pass, loop back to 2a.

### 3. Report

**Clean exit:**
```
Skill audit completed in {N} passes.
Pass 1: {count} findings — fixed and committed
Pass 2: clean — no findings
```

**Plateau exit:**
```
Skill audit plateaued after {N} passes.
[Per-pass summary]

Stuck findings:
- [Finding title]: [brief description]

These may require manual intervention or a design decision.
```

**Cap exit:**
```
Skill audit hit iteration cap ({cap}) with {count} findings remaining.
[Per-pass summary]

Remaining findings:
[List from last pass]
```

## Stopping Conditions

| Condition | Action |
|-----------|--------|
| Reviewer returns `NO_FINDINGS` | Break — report clean |
| Finding titles identical to previous pass | Break — report plateau with stuck findings |
| Iteration counter reaches cap | Break — report cap hit with remaining findings |
| Fixer reports validation failure | Break — report failure with fixer output |

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Inlining skill contents in reviewer prompt instead of file paths | Reviewer reads a stale snapshot — give paths so it reads current state from disk |
| Reviewer uses different titles for same issue across passes | Prompt for stable titles based on the problem |
| Fixer modifies unrelated files outside the skill directory | Prompt explicitly: only fix what's in the findings |
| Skipping early-pass criteria on later iterations | Reviewer should still check structure if previous fixes could have broken it |
| Not reading review-focus.md before dispatching | Always read and inline the criteria — this is static and won't change between passes |
