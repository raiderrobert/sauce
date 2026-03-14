# Skill Craft — Structure and Writing Guide

Skills fall into five pattern categories. The first two — Conductor and Expert — define what *kind* of skill you're building. The remaining three — Composition, Workflow, and Output — apply to either type.

| Category | Question it answers |
|----------|-------------------|
| [Conductor Patterns](#conductor-patterns) | How do I direct attention across external resources? |
| [Expert Patterns](#expert-patterns) | How do I teach something self-contained? |
| [Composition Patterns](#composition-patterns) | How do skills relate to each other? |
| [Workflow Patterns](#workflow-patterns) | How do I sequence steps and control flow? |
| [Output Patterns](#output-patterns) | How do I shape deliverables? |

---

## Conductor Patterns

Conductor skills provide **navigational context** — they scope attention and direct the agent to the right external resources. A conductor skill answers "where should I look?" not "how do I do this?"

The conductor-expert separation comes from meta-prompting research: a conductor routes to experts based on context, and overlapping scope between them degrades routing quality. Keep conductor skills focused on *where*, not *how*.

### Map and Summarize

The most common conductor pattern. SKILL.md maps a domain to external locations, with brief summaries of what each owns.

```
frontend/
  SKILL.md    # Maps repos, summarizes ownership
```

```markdown
# Frontend

## Repositories

| Repo | Owns | Key entry points |
|------|------|-----------------|
| `web-app` | Main customer dashboard | `src/pages/`, `src/components/` |
| `design-system` | Shared UI components | `packages/core/`, Storybook |
| `marketing-site` | Public website, blog | `src/content/`, Astro pages |

## Where to look

- **Styling questions** → `design-system` tokens and theme config
- **Auth flow** → `web-app/src/auth/`
- **Content changes** → `marketing-site/src/content/`
```

**When to use:** Multiple repos, services, or systems contribute to a domain. The agent needs to know which one to explore before it can start working.

### Tiered Routing

A conductor that routes by task type, with increasing specificity at each tier.

```markdown
# CI/CD

## Quick routing
- **Pipeline failing?** → Check `.github/workflows/`, see [debugging.md](debugging.md)
- **Adding a new service?** → See [new-service-checklist.md](new-service-checklist.md)
- **Deploy process** → See [deploy.md](deploy.md)

## Infrastructure
| System | Location | Owner |
|--------|----------|-------|
| GitHub Actions | `.github/workflows/` | Platform team |
| ArgoCD | `infra/argocd/` | Platform team |
| Docker builds | `Dockerfile.*` per service | Service owners |
```

**When to use:** A domain has both "quick answer" routing (what most users need) and deeper system mapping (for investigation).

### Conductor Rules

- **Point outward.** A conductor's value is in what it points to, not what it contains. If you're writing paragraphs of how-to content, you're building an expert skill.
- **Summaries stay brief.** One line per resource. The agent reads the actual resource when it needs depth.
- **Keep locations current.** Conductors rot when repos move, teams reorganize, or services are renamed. Date the last verification.
- **Routing is one level deep.** SKILL.md routes to external resources or reference files. A reference file must never route to another reference file for the answer — the agent may not follow the second hop. Informational cross-references ("see also X.md") are fine since the file remains self-contained without them.

---

## Expert Patterns

Expert skills provide **operational context** — self-contained knowledge teaching how to do something specific. An expert skill answers "how do I do this?" not "where should I look?" Expert skills function like manuals or SOPs, teaching procedures that would otherwise be ambiguous from training data alone.

### Self-Contained Expert

Everything fits in one file. No routing needed.

```
jira-workflows/
  SKILL.md    # Complete manual inline
```

**When to use:** All content fits under 500 lines, no heavy reference material. The skill teaches one coherent topic.

### Expert with Reference Files

SKILL.md provides quick-start and routes to detailed references. Progressive disclosure — Claude loads SKILL.md first, reads reference files only when needed.

```
pdf-processing/
  SKILL.md       # Quick start + routing table
  FORMS.md       # Form filling (loaded when needed)
  reference.md   # API reference (loaded when needed)
```

```markdown
# PDF Processing

## Quick start
Extract text with pdfplumber:
[minimal code example]

## Advanced features
**Form filling**: See [FORMS.md](FORMS.md)
**API reference**: See [reference.md](reference.md)
```

**When to use:** The skill covers a tool or domain with multiple sub-topics. Most users need the quick start; some need deep dives.

### Domain-Partitioned Expert

Reference files organized by domain so only relevant context loads.

```
bigquery-skill/
  SKILL.md
  reference/
    finance.md    # Revenue, billing
    sales.md      # Pipeline, accounts
    product.md    # Usage, features
```

When user asks about revenue, Claude reads only `reference/finance.md`. Other files consume zero context.

**When to use:** A single tool or system serves multiple domains with distinct vocabularies and patterns.

### Conditional Details

Reference material loads only when a specific feature is needed.

```markdown
## Creating documents
Use docx-js. See [DOCX-JS.md](DOCX-JS.md).

## Editing documents
For simple edits, modify XML directly.
**For tracked changes**: See [REDLINING.md](REDLINING.md)
```

Claude reads REDLINING.md only when the user needs that feature.

**When to use:** A skill has optional advanced features that most users never need.

### Expert with Reusable Tool

The skill includes working code to adapt, not just narrative.

```
condition-based-waiting/
  SKILL.md    # Overview + patterns
  example.ts  # Working helpers to adapt
```

**When to use:** The skill's value is partly in reusable code, not just explanations.

### Expert with Heavy Reference

Reference material too large for inline. SKILL.md routes by topic.

```
unsafe-checker/
  SKILL.md       # Router + quick reference
  AGENTS.md      # Rule index
  rules/         # 47 individual rule files
  checklists/    # Pre-writing, review, pitfalls
  examples/      # Safe abstraction, FFI patterns
```

**When to use:** The domain has extensive reference material (many rules, large API surface). SKILL.md becomes a table of contents.

### Expert Rules

- **Be self-contained.** An expert skill should work without needing a conductor to introduce it. External cross-references are fine as supplementary context, not required reading.
- **TOC for files over 100 lines.** Claude can see full scope even when previewing.
- **Name files descriptively.** `form_validation_rules.md` not `doc2.md`.
- **Routing is one level deep.** Same rule as conductors — SKILL.md routes to reference files, never reference to reference.

---

## Composition Patterns

How skills relate to each other — when to merge, split, or layer them. Getting granularity wrong is the most common reason skills go unused: too narrow and nothing routes to them, too broad and they load irrelevant context.

### Granularity Heuristics

A skill's scope must match how users actually frame requests. Users think in terms of goals ("create a conventions guide"), not implementation steps ("audit the mined skill for factual accuracy").

**Signs a skill is too narrow:**
- Triggers require jargon the user wouldn't naturally say
- The skill is only useful after another skill has already run
- It has never triggered organically in real usage
- The description reads like an implementation detail, not a user intent

**Signs a skill is too broad:**
- It loads 500+ lines of context for tasks that only need 50
- Users frequently need only one section while the rest wastes context
- Unrelated topics compete for description space

**The test:** Can you describe when to use this skill without referencing another skill? If not, it's a phase, not a standalone skill.

### Phase Composition

Merge skills that represent sequential phases of a single workflow into one skill with internal phases. Each phase lives in its own reference file, loaded only when that phase is active.

```
convention-mining/
  SKILL.md         # Overview + phase routing
  mining.md        # Phase 1: extract conventions from PR history
  auditing.md      # Phase 2: verify and harden the mined conventions
```

```markdown
# Convention Mining

## Overview
Extract and verify coding conventions from PR review history.

## Phases

| Phase | When | Reference |
|-------|------|-----------|
| Mining | Starting fresh — need to extract conventions | [mining.md](mining.md) |
| Auditing | Have a draft skill — need to verify accuracy | [auditing.md](auditing.md) |
```

**When to use:** Two or more skills form a natural sequence where the output of one is the input to the next. The combined description matches user intent better than either individual description.

**Key rule:** The merged skill's description targets the *goal* ("extract and verify coding conventions from PR review history"), not the phases. Users ask for the goal; phases are implementation.

### Umbrella Routing

A broad skill that serves as an entry point and routes to specialized reference files based on context. Unlike Phase Composition (sequential), Umbrella Routing handles topics that share a domain but serve different tasks.

```
rust/
  SKILL.md          # Routes by task type
  error-handling.md
  unsafe-review.md
  performance.md
  domain/
    web.md
    cli.md
    embedded.md
```

```markdown
# Rust

## Routing

| Task | Reference |
|------|-----------|
| Error handling patterns | [error-handling.md](error-handling.md) |
| Reviewing unsafe code | [unsafe-review.md](unsafe-review.md) |
| Performance optimization | [performance.md](performance.md) |

### Domain-specific
| Domain | Reference |
|--------|-----------|
| Web (axum, tower) | [domain/web.md](domain/web.md) |
| CLI (clap, ratatui) | [domain/cli.md](domain/cli.md) |
| Embedded (no_std) | [domain/embedded.md](domain/embedded.md) |
```

**When to use:** Multiple niche topics share a domain but serve different tasks. Individually, each is too narrow to trigger reliably. Under one umbrella, the broad description triggers on any domain mention, then internal routing loads only the relevant reference.

**Key rule:** The umbrella description covers the full domain. Individual reference files stay self-contained — they work without the umbrella's context.

### Graduated Specificity

A single skill with inline quick-reference for common cases and routed reference files for deep dives. This avoids the "too broad loads too much" problem without splitting into skills too narrow to trigger.

```markdown
# Code Review

## Quick Reference
- Check for error handling at system boundaries
- Verify tests cover the changed behavior
- Flag hardcoded values that should be configuration

## Deep Dives
**Security review**: See [security-checklist.md](security-checklist.md)
**Performance review**: See [performance-checklist.md](performance-checklist.md)
```

**When to use:** 80% of requests need a short checklist, 20% need deep domain-specific guidance. The quick reference handles the common case without loading reference files.

### When to Merge vs. Split

| Signal | Action |
|--------|--------|
| Skill B only makes sense after Skill A runs | Merge (Phase Composition) |
| Skills A, B, C share a domain but serve different tasks | Merge (Umbrella Routing) |
| Skill has sections that never load together | Split into reference files |
| Skill triggers on very different user intents | Split into separate skills |
| Skill description needs 5+ unrelated trigger phrases | Split — it's doing too many things |
| Two skills have overlapping descriptions | Merge to eliminate routing ambiguity |

### Routing Boundaries

Overlapping descriptions degrade routing — the model can't decide which skill to load and may pick neither. When composing skills:

- **No two skills should trigger on the same phrase.** If "review this skill" could match both `writing-skills` and `auditing-convention-skills`, merge or differentiate.
- **Descriptions should partition the space.** Every user intent in the domain routes to exactly one skill.
- **Test by listing 5 realistic user prompts.** If you can't confidently assign each to one skill, the boundaries are wrong.

---

## Workflow Patterns

How to sequence steps, branch, loop, and verify within a skill. These apply to both conductor and expert skills.

### Sequential Checklist

Break complex operations into sequential steps with a checklist:

```markdown
## Form filling workflow

Task Progress:
- [ ] Step 1: Analyze the form (run analyze_form.py)
- [ ] Step 2: Create field mapping (edit fields.json)
- [ ] Step 3: Validate mapping (run validate_fields.py)
- [ ] Step 4: Fill the form (run fill_form.py)
- [ ] Step 5: Verify output (run verify_output.py)
```

Clear steps prevent skipping critical validation.

### Conditional Branching

For branching workflows, use explicit if/then structure rather than prose narrative. Program-like structures (sequence, branch, loop) yield +13.79% over unstructured prose.

```markdown
## Deployment workflow
- [ ] Run tests
- [ ] If tests pass: build artifacts
- [ ] If staging: deploy to staging.example.com
- [ ] If production: require manual approval, then deploy
```

### Bridging Language

Multi-step procedures should include natural language *why* between steps: "First do X, because Y" > "First do X. Then do W." This helps on semantically complex tasks where the agent needs to understand intent, not just sequence. Skip for simple sequential steps where the purpose is obvious.

### Feedback Loops

The pattern: run validator -> fix errors -> repeat.

```markdown
1. Make edits
2. **Validate immediately**: `python scripts/validate.py`
3. If validation fails:
   - Review error message
   - Fix the issue
   - Run validation again
4. **Only proceed when validation passes**
```

### Verifiable Intermediate Outputs

For complex open-ended tasks, have Claude create a plan file, validate it with a script, then execute:

analyze -> **create plan file** -> **validate plan** -> execute -> verify

Catches errors before destructive changes. Make validation scripts verbose with specific error messages.

### Prefer Tools Over Reasoning

When a tool can verify correctness (linter, test runner, compiler, validator script), always prefer "run tool -> interpret result -> fix" over "reason carefully about correctness." Tool augmentation outperforms chain-of-thought reasoning on verification tasks.

Skills should encode this preference: instead of "ensure the output is valid JSON," write "run `jq . output.json` to validate." Instead of "check for type errors," write "run `tsc --noEmit` and fix any errors."

Reserve reasoning for tasks where no tool exists.

---

## Output Patterns

How to shape the deliverables a skill produces. Answer engineering is as impactful as prompt engineering — specify output structure with equal care as input instructions.

### Template

Provide output templates. Match strictness to needs:
- **Strict** (data formats, API responses): "ALWAYS use this exact structure"
- **Flexible** (analysis, reports): "Sensible default, adapt as needed"

Every skill that expects structured output should include an output template. Specify the shape (sections, fields, format), not just "write a good response."

For variable-length outputs, show both a minimal and a full example so the model knows the acceptable range.

### Examples

For output-quality-dependent skills, provide input/output pairs:

```markdown
**Example:**
Input: Added user auth with JWT tokens
Output:
feat(auth): implement JWT-based authentication

Add login endpoint and token validation middleware
```

Remember: the format of your example IS your output specification. A verbose example produces verbose output. A terse example produces terse output. Audit the *shape* of every example in your skill.

---

## Content Guidelines

### Consistent Terminology

Pick one term, use it everywhere:
- Always "API endpoint" (not mixing "URL", "route", "path")
- Always "field" (not mixing "box", "element", "control")

### Avoid Time-Sensitive Information

```markdown
# BAD
If before August 2025, use old API. After, use new API.

# GOOD
## Current method
Use v2 API endpoint.

## Legacy (deprecated 2025-08)
<details><summary>v1 API</summary>...</details>
```

## Scripts in Skills

### Solve, Don't Punt

Scripts should handle errors, not fail and let Claude figure it out:

```python
# BAD: punt to Claude
return open(path).read()

# GOOD: handle explicitly
try:
    return open(path).read()
except FileNotFoundError:
    print(f"File {path} not found, creating default")
    return ''
```

### No Voodoo Constants

Document why every magic number exists:

```python
# HTTP requests typically complete within 30s
REQUEST_TIMEOUT = 30

# Most intermittent failures resolve by second retry
MAX_RETRIES = 3
```

### Prefer Execution Over Reading

Make clear whether Claude should run a script or read it as reference:
- "Run `analyze_form.py` to extract fields" (execute)
- "See `analyze_form.py` for the extraction algorithm" (read)

Execution is usually preferred — more reliable, saves tokens.

## Flowcharts

Use flowcharts ONLY for non-obvious decision points, process loops where you might stop too early, or "when to use A vs B" decisions.

Never for: reference material (use tables), code examples (use markdown blocks), linear instructions (use numbered lists).

## Anti-Patterns

| Pattern | Problem | Do Instead |
|---------|---------|------------|
| Too many options | Decision paralysis | Provide a default with escape hatch |
| Windows-style paths | Breaks on Unix | Always use forward slashes |
| Reference routes to reference | Agent may not follow second hop | Only SKILL.md routes; cross-references OK |
| Unnamed files (doc2.md) | Can't discover by name | Descriptive names: `form_validation_rules.md` |
| Giant monolithic SKILL.md | Loads unnecessary context | Split by domain/feature into reference files |
| "Don't do X" without alternative | Negative framing increases variance | Use affirmative: "Do Y instead of X" |
| Reasoning constraints ("think step by step about...") | Hurts free-form tasks, handcuffs capable models | Constrain the output shape, not the reasoning process |
| Conductor with how-to content | Conflates navigation with instruction | Move procedures to an expert skill; conductor just points |
| Expert that mostly links elsewhere | Not self-contained, fails without external context | Convert to conductor or inline the critical content |
