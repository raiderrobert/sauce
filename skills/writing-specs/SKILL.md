---
name: writing-specs
description: "Use when writing or reviewing a specification document — a normative definition of a format, protocol, interface, schema, or contract. Triggers: write a spec, SPEC.md, docs/spec/, RFC-style doc, formalize this design, define what X is, conformance, normative, this reads like marketing, make it more RFC-like, spec register. Ensures spec-grade register and conformance structure; prevents marketing prose, coined jargon, and speccing the status quo instead of the target."
---

# Writing Specs

## Overview

A specification is a contract that others build against and that tooling
enforces. Every sentence is a requirement, a definition, or explicitly
non-normative. The register test: if a sentence could be mistaken for
persuasion, it does not belong.

Conventions below are drawn from IETF RFCs (8200, 7489), the TOML v1.1 spec,
the GraphQL spec, Google's OKF spec, and the Agent Skills spec.

**Scope**: a spec is a living contract that implementations conform to. An ADR
records one decision and its context (immutable once accepted); a design doc or
plan proposes work. Those are different documents with different conventions —
this skill applies when the deliverable defines what something *is* and others
will build against it.

## Register

- Declare RFC 2119 keywords once, near the top; then use MUST / MUST NOT /
  SHOULD / MAY with their exact force. A requirement without a keyword is a
  requirement the reader can ignore.
- Name the actor in third person: "The parser MUST reject duplicate keys" —
  never "you must" and never an actorless "duplicates are rejected" when
  conformance depends on who rejects them.
- No coined metaphors. A one-off term ("seam", "spine", "the golden path")
  reads as an undefined normative term. Use a plain descriptive name and
  define it in Terminology ("contract boundary").
- No rhetorical emphasis ("the most important line in this document",
  "this is the heart of the spec"). If a requirement matters, its MUST
  carries the weight.
- Mark justification explicitly ("Rationale:") so it cannot be confused with
  requirement.
- Second person appears only inside quoted example content (e.g. a prompt or
  error message the spec is defining).
- Section titles are noun phrases: "Out of scope", "Contributor procedures",
  "Adding a track" — never quoted questions ("What do I touch to add X?").

Calibration pair — heading plus requirement:

```markdown
# Bad: coined term, rhetoric, actorless fragment
## The seam: work items in, outcomes out
This is the heart of the spec. Silence is a defect.

# Good: descriptive title, actor-named requirement
## Contract boundary for inputs and outputs
The skill MUST emit exactly one outcome per work item, including on failure.
A run that terminates without emitting an outcome is non-conforming.
```

## Document skeleton

In order; parenthesized sections apply when relevant:

1. **Header** — status (Proposed/Accepted), date, audience, what drives it;
   the RFC 2119 declaration; a normativity statement: "Examples, notes, and
   callouts are non-normative."
2. **Definition** — the thing in one sentence, then its components (a table
   works: component / what it is / what it owns / where it lives).
3. **Terminology** — single-line entries, each term defined before first use.
4. **Conformance** — what "a conforming X" means, per component; who checks
   what (tooling vs review); how the spec itself changes.
5. **Out of scope** — explicit non-goals, each with a reason or a pointer to
   where that concern lives.
6. **Contract sections** — interfaces and invariants. Fields go in tables:
   Field / Type / Required / Meaning.
7. (**Recommended conventions**) — SHOULD-level structure, kept visibly
   separate from the MUSTs so deviation is reviewable rather than forbidden.
8. (**Validation**) — what tooling enforces, layered (standalone checks,
   cross-component checks, drift detection).
9. **Worked example** — one real instance shown conforming to the spec.
10. (**Current-state gaps**) — where reality does not conform: a table of
    gap / violates §N / resolved by <pointer>.
11. (**Procedures**) — operational how-tos, imperative numbered steps.
12. (**Deferred-design index**) — a table of open questions, each pointing at
    an issue or owner.

## Conventions

- **Spec the target, not the status quo.** The current implementation is
  evidence of what works, not the definition. Describe the target normatively;
  catalog today's nonconformance in a gap table with pointers to the work that
  closes each gap. A spec reverse-engineered from the code freezes its
  accidents as decisions.
- **Current-state callouts.** Where target and reality differ, a non-normative
  "Today:" callout names the exact file or command that answers the question
  right now. Honest gaps beat implied capabilities.
- **Valid/invalid pairs.** Show a conforming example next to a non-conforming
  one labeled as such (TOML's `# INVALID` convention). Contrast defines the
  boundary better than either example alone.
- **Defer with pointers, never bare TBD.** Every open question names the
  issue, document, or owner where it will be decided. "Deferred to #93" is a
  contract; "TBD" is a hole.
- **Adopt external standard names.** When an ecosystem standard already names
  a directory, field, or concept, use its name; a bespoke synonym makes every
  standard-aware tool treat the artifact as foreign, and in-house synonyms
  drift apart.
- **Requirements live in body text only.** Examples illustrate; they never
  carry a MUST that appears nowhere else.

## Common mistakes

| Mistake | Fix |
|---|---|
| Formalizing the current implementation as the definition | Spec the target; move reality to a current-state gap table |
| Coined term used as if defined ("seam") | Plain descriptive name, defined in Terminology |
| Hedged requirements ("should probably", "ideally", "we'd like") | Choose MUST / SHOULD / MAY and commit |
| Actorless or second-person requirements | Name the conforming component: "The mount MUST NOT carry behavior" |
| Quoted-question or slogan headings | Noun-phrase titles |
| Rationale interleaved with requirements | "Rationale:" label, or a note block declared non-normative |
| Deferral without a pointer | Issue/owner reference for every open question |
| Requirement introduced only inside an example | Restate in body text with a keyword |
| No conformance section — "conforming" never defined | Define per-component conformance and who verifies it |
