# Skill Craft — Structure and Writing Guide

## Progressive Disclosure

SKILL.md is a table of contents. Claude loads it first, then reads reference files only when needed.

### Pattern 1: Router with References

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

### Pattern 2: Domain-Specific Organization

```
bigquery-skill/
  SKILL.md
  reference/
    finance.md    # Revenue, billing
    sales.md      # Pipeline, accounts
    product.md    # Usage, features
```

When user asks about revenue, Claude reads only `reference/finance.md`. Other files consume zero context.

### Pattern 3: Conditional Details

```markdown
## Creating documents
Use docx-js. See [DOCX-JS.md](DOCX-JS.md).

## Editing documents
For simple edits, modify XML directly.
**For tracked changes**: See [REDLINING.md](REDLINING.md)
```

Claude reads REDLINING.md only when the user needs that feature.

### Rules

- **Routing is one level deep.** Only SKILL.md routes the agent to reference files. A reference file must never route the agent to another reference file for the answer — the agent may not follow the second hop. Informational cross-references ("see also X.md" as supplementary context) are fine since the file remains self-contained without them.
- **TOC for files over 100 lines.** Claude can see full scope even when previewing.
- **Name files descriptively.** `form_validation_rules.md` not `doc2.md`.

## File Organization

### Self-Contained Skill
```
defense-in-depth/
  SKILL.md    # Everything inline
```
When: All content fits under 500 lines, no heavy reference.

### Skill with Reusable Tool
```
condition-based-waiting/
  SKILL.md    # Overview + patterns
  example.ts  # Working helpers to adapt
```
When: Tool is reusable code, not just narrative.

### Skill with Heavy Reference
```
unsafe-checker/
  SKILL.md       # Router + quick reference
  AGENTS.md      # Rule index
  rules/         # 47 individual rule files
  checklists/    # Pre-writing, review, pitfalls
  examples/      # Safe abstraction, FFI patterns
```
When: Reference material too large for inline. SKILL.md routes by topic.

## Workflows and Feedback Loops

### Workflows for Complex Tasks

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

### Conditional Logic in Workflows

For branching workflows, use explicit if/then structure rather than prose narrative. Program-like structures (sequence, branch, loop) yield +13.79% over unstructured prose.

```markdown
## Deployment workflow
- [ ] Run tests
- [ ] If tests pass: build artifacts
- [ ] If staging: deploy to staging.example.com
- [ ] If production: require manual approval, then deploy
```

### Bridging Language Between Steps

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

## Prefer Tools Over Reasoning

When a tool can verify correctness (linter, test runner, compiler, validator script), always prefer "run tool -> interpret result -> fix" over "reason carefully about correctness." Tool augmentation outperforms chain-of-thought reasoning on verification tasks.

Skills should encode this preference: instead of "ensure the output is valid JSON," write "run `jq . output.json` to validate." Instead of "check for type errors," write "run `tsc --noEmit` and fix any errors."

This extends the Feedback Loops principle with a sharper directive: tools are more reliable than reasoning for verification. Reserve reasoning for tasks where no tool exists.

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

## Output Specification

Answer engineering is as impactful as prompt engineering. Skills should specify output structure with equal care as input instructions.

### Template Pattern

Provide output templates. Match strictness to needs:
- **Strict** (data formats, API responses): "ALWAYS use this exact structure"
- **Flexible** (analysis, reports): "Sensible default, adapt as needed"

Every skill that expects structured output should include an output template. Specify the shape (sections, fields, format), not just "write a good response."

For variable-length outputs, show both a minimal and a full example so the model knows the acceptable range.

### Examples Pattern

For output-quality-dependent skills, provide input/output pairs:

```markdown
**Example:**
Input: Added user auth with JWT tokens
Output:
feat(auth): implement JWT-based authentication

Add login endpoint and token validation middleware
```

Remember: the format of your example IS your output specification. A verbose example produces verbose output. A terse example produces terse output. Audit the *shape* of every example in your skill.

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
