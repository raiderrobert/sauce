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

Patterns throughout are harvested from studied source specs, cataloged with
links and per-source highlights in `references/sources.md` — extend that file
when adding a new source. Each thematic reference cites which source
demonstrates which pattern.

**Scope**: a spec is a living contract that implementations conform to. An
ADR records one decision and its context (immutable once accepted); a design
doc or plan proposes work. Those are different documents with different
conventions — this skill applies when the deliverable defines what something
*is* and others will build against it.

## Routing

| Topic | Reference |
|-------|-----------|
| Requirement language, keyword discipline, terminology entries, voice, rhetoric bans | `references/register.md` |
| Document skeletons, header/versioning patterns, multi-file splitting, section comparison across the 7 sources | `references/structure.md` |
| Conformance clauses, reject-vs-tolerate strictness, extensibility/registries, versioning policy, validation tooling | `references/conformance.md` |
| Normative vs non-normative machinery: notes, example/counter-example pairs, Today callouts, gap tables, deferral discipline | `references/examples-and-notes.md` |
| Field tables, value-space precision, enums, formal grammar, diagrams, interface contracts | `references/defining-data.md` |
| Catalog of studied source specs: links, distinctive patterns, section comparison; how to add a source | `references/sources.md` |

## Quick reference

Skeleton (parenthesized = when relevant; full guidance in
`references/structure.md`):

1. Header — status, version, audience, RFC 2119 declaration, normativity
   statement
2. Definition — the thing in one sentence, then its components
3. Terminology — single-line entries, defined before first use
4. Conformance — per-role clauses; who verifies what; change process
5. Out of scope — non-goals with reasons or pointers
6. (Applicability) — positioning vs adjacent mechanisms
7. Contract sections — field tables, invariants, both directions of every
   interface
8. (Recommended conventions) — SHOULDs separated from MUSTs
9. (Validation) — layered tooling checks
10. (Security/operational considerations)
11. Worked example — one complete conforming instance
12. (Current-state gaps) — gap / violates §N / resolved-by table
13. (Procedures) — imperative how-tos, one per audience
14. (Deferred-design index) — open question → issue/owner
15. References

Register in one line: actor-named third-person requirements with exact
RFC 2119 force, noun-phrase titles, no coined metaphors, no rhetoric, second
person only inside quoted example content. Calibration pair in
`references/register.md`.

## Common mistakes

| Mistake | Fix |
|---|---|
| Formalizing the current implementation as the definition | Spec the target; move reality to a current-state gap table (`references/examples-and-notes.md`) |
| Coined term used as if defined ("seam") | Plain descriptive name, defined in Terminology (`references/register.md`) |
| Hedged requirements ("should probably", "ideally") | Choose MUST / SHOULD / MAY — hedge table in `references/register.md` |
| Actorless or second-person requirements | Name the conforming component: "The mount MUST NOT carry behavior" |
| No conformance section — "conforming" never defined | Per-role conformance clauses (`references/conformance.md`) |
| Silent strictness — spec never says reject vs tolerate | Decide per failure class (`references/conformance.md`) |
| Requirement introduced only inside an example | Restate in body text with a keyword (`references/examples-and-notes.md`) |
| Deferral without a pointer ("TBD") | Issue/owner reference; deferred-design index |
| Closed enum by accident | State open/closed + unknown-value behavior (`references/defining-data.md`) |
| Quoted-question or slogan headings | Noun-phrase titles |
| Rationale interleaved with requirements | "Rationale:" label or Note block, declared non-normative |
