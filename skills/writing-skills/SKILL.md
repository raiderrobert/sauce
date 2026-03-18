---
name: writing-skills
description: "Use when writing, creating, editing, improving, reviewing, or auditing Claude Code skills. Triggers on: write a skill, create a skill, new skill, skill template, skill structure, skill authoring, edit skill, improve skill, review skill, audit skill, skill quality, SKILL.md, skill frontmatter, skill description, skill triggers, make a skill for, how to write a good skill, audit until clean, keep auditing, iterate on skills, iterative skill audit, converge skill quality"
---

# Writing Skills

## Overview

A **skill** is a reference guide that teaches future Claude instances proven techniques, patterns, or tools. Skills provide knowledge Claude doesn't already have — project conventions, domain-specific checklists, tool-specific workflows, crate APIs.

**Skills are NOT:** narratives about how you solved a problem once, restatements of common programming knowledge, or things enforceable with automation (use linters/validators instead).

## Routing

| Topic | Reference |
|-------|-----------|
| Skill patterns (conductor, expert, composition, workflow, output) | `./craft.md` |
| Testing discipline-enforcing skills | `./testing.md` |
| Auditing existing skills for issues | `./review-criteria.md` |
| Iterative audit-fix loop until clean | `./iterating-audit.md` |
| Research backing these principles | `./references/index.md` |

## When to Create a Skill

**Create when:**
- Technique wasn't intuitively obvious
- You'd reference it again across projects
- Pattern applies broadly (not project-specific)
- Claude doesn't already know it (crate APIs, internal conventions, many-rule checklists)

**Don't create for:**
- One-off solutions
- Standard practices well-documented elsewhere
- Project-specific conventions (use CLAUDE.md)
- Things enforceable with tooling (linters, CI checks, pre-commit hooks)

## Skill Types

| Type | Example | Testing Approach |
|------|---------|------------------|
| **Technique** — concrete method with steps | condition-based-waiting, root-cause-tracing | Application scenarios |
| **Pattern** — way of thinking about problems | flatten-with-flags, test-invariants | Recognition + application |
| **Reference** — API docs, syntax, tool docs | crate documentation, OOXML spec | Retrieval + gap testing |
| **Discipline** — rules/requirements to follow | TDD, verification-before-completion | Pressure testing (see `./testing.md`) |

## Universal Principles

### 1. Description = Triggers + Objective, Never Workflow

The description field is how Claude decides whether to load your skill. It must answer: "Should I read this skill right now?"

**Critical:** If a description summarizes the skill's workflow, Claude follows the description as a shortcut and skips the body. Description that says "code review between tasks" causes one review; the body's flowchart showing two reviews gets ignored.

Include triggers AND a one-line task objective. The model needs enough to know *what the skill does*, not just *when to load it*. Trigger-only descriptions are underspecified — they increase behavioral variance.

```yaml
# BAD: summarizes workflow — Claude follows this instead of reading skill
description: Use for TDD - write test first, watch it fail, write minimal code, refactor

# GOOD: triggers + objective
description: "Use when implementing any feature or bugfix, before writing implementation code. Ensures test-first discipline."
```

- Start with "Use when..." followed by a one-line objective ("Ensures X" / "Prevents Y")
- Write in third person
- Include specific symptoms, situations, error messages, tool names
- Must be a single line (no YAML multi-line strings)
- **HARD LIMIT: description must be under 1024 characters.** Skills exceeding this are silently dropped from discovery at session start — they will not appear in the available skills list and will never auto-trigger. The user can still invoke them manually with `/skill-name`, but automatic routing is completely broken. There is no error message. If you need extensive trigger keywords, put them in the SKILL.md body, not the frontmatter.

### 2. SKILL.md is a Router

SKILL.md routes the agent to the right reference file. It does NOT duplicate reference file content.

- Keep SKILL.md body under 500 lines
- Put detailed reference in separate files
- Reference files should be self-contained (usable without SKILL.md context)
- Keep references **one level deep** — SKILL.md -> reference files, never reference -> reference

### 3. Only Teach What Claude Doesn't Know — Specify Audience, Not Identity

The context window is a shared resource. Every token competes with conversation history, other skills, and the actual request.

- **Skip known facts.** Don't explain what PDFs are or how HTTP works.
- **Specify audience and output context.** State who consumes the output and what they need — this outperforms identity/role assignment. "Answer as if explaining to a doctor" beats "You are a doctor."
- **Do NOT assign personas or roles.** "You are a senior engineer" / "Act as a brutal critic" does not improve task performance on capable models. 162 personas showed no improvement; o1 maintains 99.0% accuracy across all personas; irrelevant details cause up to 30pp drops; demographic personas cause up to 69pp drops. See `references/quotes-persona.md` for the full evidence and `references/review-persona.md` for detailed analysis (16 papers).
- **Err toward including domain heuristics.** Over-compressing loses failure modes and edge cases — the model is better at ignoring irrelevant context than we are at predicting what it needs.

```markdown
# BAD: persona assignment (0% improvement, risk of bias activation)
You are a document processing specialist. Users need precise text extraction.

# BAD: teaching known facts (150 tokens wasted)
PDF (Portable Document Format) files are a common file format...

# GOOD: audience + task-specific knowledge (60 tokens)
Users need precise text extraction from complex PDFs.
Use pdfplumber — handles multi-column layouts that PyPDF2 misses:
```

Challenge each paragraph: "Is this a *fact Claude knows*, a *persona assignment* (cut it), or *task context that shapes the output*?" Keep task context, cut facts and personas.

### 4. Degrees of Freedom

Match specificity across three axes:

| Freedom | Use When | Example |
|---------|----------|---------|
| **Low** (exact script) | Fragile, error-prone, consistency critical | `python scripts/migrate.py --verify --backup` |
| **Medium** (template + params) | Preferred pattern exists, some variation OK | Function signature with customizable body |
| **High** (text guidance) | Multiple valid approaches, context-dependent | "Analyze code structure, check for edge cases" |

Beyond fragility, consider two more axes:
- **Task type:** Structured transformation (math, code generation, data migration) benefits from explicit steps. Free-form generation (writing, analysis, design) is *hurt* by pre-planning constraints.
- **Model capability:** Constraints that help today may become handcuffs on next-gen models. Audit prescriptive constraints when models update — if the model handles it natively, remove the scaffolding.

### 5. One Excellent Structure, Example Calibrates

For **procedural** skills (workflows, code generation): provide *structure* — sections, sequence, format. The model fills content. Zero examples with correct structure beats multiple examples (+11.1% on MATH).

For **judgment/quality** skills (reviews, analysis, writing): provide one calibration example demonstrating the exact output register — format, verbosity, style. The model mimics example format more faithfully than textual instructions about format.

When possible, pair with a labeled counter-example showing what NOT to do. Contrastive examples (positive + negative) yield +10-15% over positive-only.

**The format of your example IS your output specification.** A verbose example produces verbose output regardless of instructions saying "be concise."

### 6. Constrain Outputs, Not Reasoning

Specify what the deliverable looks like (format, structure, sections). Never constrain how the model thinks to get there. This is the single most empirically supported principle in this skill.

- **Output format specification is the one universal win.** Removing formatting constraints: -8.6pp to -12.1pp (p<0.001). Removing the system prompt entirely had no noticeable effect. Format is load-bearing; identity framing is not.
- **Free reasoning → constrained output beats constrained-throughout** by +12pp to +27.2pp on classification tasks. Let the model reason freely, then enforce structure only at output time.
- **Structured transformation** (math, code generation, data migration): explicit steps help. CoT provides +14.2% on symbolic reasoning.
- **Everything else** (analysis, writing, design): specify the destination, not the journey. CoT adds +0.7% on non-symbolic tasks — near zero. Pre-planning *hurts* free-form generation.
- **More constraints ≠ better.** Code generation peaked at 48 tokens of constraint, then declined at 117 tokens. Few-shot examples caused a -25.22pp DROP on Java. Over-constraining reasoning backfires on capable models (-2.36% on GPT-5 vs simple prompting).

See `references/quotes-constraints.md` for all sources.

### 7. Examples Set the Output Register

The format, verbosity, and style of examples is mimicked more faithfully than textual instructions about format. If a skill wants concise output, its example must be concise. A verbose example produces verbose output regardless of instructions saying "be brief."

This applies to every example in your skill — code blocks, input/output pairs, templates. Audit them: does the *shape* of your example match the *shape* you want?

## SKILL.md Template

```markdown
---
name: skill-name-with-hyphens
description: Use when [specific triggering conditions and symptoms]
---

# Skill Name

## Overview
What is this? Core principle in 1-2 sentences.

## Routing (if multiple reference files)
| Topic | Reference |
|-------|-----------|

## Quick Reference
Table or bullets for scanning common operations.

## Common Mistakes
What goes wrong + fixes.
```

## Naming

- **Gerund form preferred:** `writing-skills` not `skill-writing`
- **Verb-first, active voice:** `condition-based-waiting` not `async-test-helpers`
- **Letters, numbers, hyphens only** — no parentheses or special characters
- **Name by what you DO:** `root-cause-tracing` not `debugging-techniques`

## Anti-Patterns

| Anti-Pattern | Why Bad | Do Instead |
|--------------|---------|------------|
| Narrative ("In session 2025-10-03, we found...") | Too specific, not reusable | Extract the general principle or pattern |
| Multi-language examples (JS + Python + Go) | Mediocre quality, maintenance burden | One excellent example in the primary language |
| Generic labels (helper1, step2, pattern3) | Labels need semantic meaning | Name by what it does: `validate_field_mapping` |
| Duplicating reference content in SKILL.md | Maintenance divergence, wasted tokens | Route to the reference file with a one-line summary |
| Description summarizing workflow | Claude shortcuts the body | Triggers + one-line objective only |
| Description over 1024 chars or multi-line | Skill silently dropped from discovery — no error, just invisible | Condense to single line under 1024 chars; put keyword lists in body |
| Persona/role assignment ("You are a senior engineer") | No improvement on factual tasks (162 personas × 9 models); irrelevant details cause up to -30pp; zero effect on capable models (o1 at 99% across all personas); activates irrelevant associations on judgment tasks. See `references/quotes-persona.md` | Specify audience and output context: "Users need X" not "You are X." Use output templates and structural scaffolds instead. See `references/review-persona.md` |
| Cognitive pattern lists ("How Great Xs Think") | Constrains reasoning process, which hurts free-form tasks (+0.7% on non-symbolic); becomes handcuffs on capable models. See `references/quotes-constraints.md` | Let output structure (tables, checklists, scoring rubrics) drive thoroughness instead of telling the model how to think |
