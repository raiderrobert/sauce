# Skill Audit Review Focus

Structured review criteria for skill audits. Check all sections on every pass — report everything you find.

## Structure & References

### SKILL.md as Router
- SKILL.md routes to reference files, does NOT duplicate their content
- SKILL.md body is under 500 lines
- Reference files are self-contained (usable without SKILL.md context)
- Routing is one-level deep: SKILL.md -> reference files, never reference -> reference for the answer (cross-references/"see also" are fine)

### File References
- Every `./file.md` or `ref/file.md` path in SKILL.md resolves to an actual file on disk
- Every file in the skill directory is reachable from SKILL.md (directly or transitively) — no orphans
- Verification: compare files on disk vs files mentioned in SKILL.md

### Frontmatter
- `name` matches the directory name exactly
- `description` is present, starts with "Use when...", includes triggers AND a one-line objective
- `description` is a single line, under 1024 characters (skills exceeding this are silently dropped from discovery — no error, just invisible)
- `description` does NOT summarize the workflow (Claude shortcuts the body if the description looks like a complete instruction)
- No stale fields referencing removed infrastructure, deleted tools, or deprecated features

### File Size
- No single file exceeds 500 lines

## Content Accuracy

### Tool & API References
- Tool names match actual Claude Code tool names (e.g., `Agent`, `Bash`, `Grep`, `Glob`, `Read`, `Edit`, `Write`)
- Parameter names are correct (e.g., `subagent_type`, `run_in_background`, `mode`, `isolation`)
- Subagent types are valid (e.g., `general-purpose`, `Explore`, `Plan`)
- Agent tool parameter values are correct (e.g., `mode: "bypassPermissions"` not `mode: "bypass"`)

### Code Examples
- Examples use current syntax (no deprecated patterns)
- Shell commands are correct (git flag usage, command semantics)
- If examples reference specific crate APIs, library functions, or tool versions, verify they're current

### Stale References
- No references to deleted skills, renamed tools, or removed workflows
- No deprecated API patterns (check against known staleness patterns in the ecosystem)
- No references to non-existent commands, flags, or options

## Design & Consistency

### Internal Consistency
- Instructions don't contradict each other across sections
- Code examples don't contradict the rules they illustrate
- "Do" examples in one section don't conflict with "Don't" examples in another

### Cross-Skill References
- Every skill name referenced points to an existing skill
- Routing suggestions (e.g., "hand off to X") reference real skills

### Trigger Coverage
- Description keywords cover the skill's actual scope — missing keywords mean missed triggers
- Keywords don't significantly overlap with another skill's triggers (causes routing ambiguity)
- Triggers are specific enough to avoid false matches, broad enough to catch legitimate queries
- Include how users actually phrase requests, not just technical jargon

### Degrees of Freedom
- Low freedom (exact commands) for fragile/error-prone steps
- Medium freedom (templates) for steps with a preferred pattern but acceptable variation
- High freedom (guidance) for context-dependent judgment calls
- Structured transformations get explicit steps; free-form tasks get destination specs, not journey constraints

## Value & Token Efficiency

### LLM Overlap
- Does each section teach something Claude doesn't already know?
- Is the skill providing concrete instructions, or restating what Claude would generate unprompted?
- Does the skill enable something impossible without it (LSP ops, multi-rule checklists, tool workflows)?

### Compression Opportunities
- Are there passages that restate common programming knowledge? (Remove or compress)
- Could any section be compressed without losing failure modes or edge cases?
- Are examples calibrating output quality, or just padding? (One excellent example > multiple mediocre ones)
- Are there multi-language examples when one language would suffice?

### Activation Framing vs Information
- Role, audience, intent, and failure mode framing is valuable (keep it)
- Known facts (what PDFs are, how HTTP works) are waste (cut them)
- Domain heuristics should be kept — over-compressing loses failure modes

### Model-Capability Staleness
- Are any instructions over-constraining reasoning for current model capabilities?
- Would removing prescriptive constraints and leaving just output specs improve results?
- Constraints that were guardrails on earlier models may be handcuffs on more capable ones

## Review Output Format

For each finding:

### Finding: [stable title]
**Severity:** high | medium | low
**File:** `path/to/file:line`
**Description:** [what's wrong and why]
**Fix approach:** [specific steps]

If no issues found, respond with exactly: NO_FINDINGS
