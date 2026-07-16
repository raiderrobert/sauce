# Document Structure

Skeletons and section conventions, compared across seven specifications.

## What the studied specs contain

| Section | RFC 8200 | RFC 7489 | RFC 10008 | TOML | GraphQL | OKF | Agent Skills |
|---|---|---|---|---|---|---|---|
| Purpose/overview intro | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Terminology/definitions | ✓ (§2) | ✓ (§3) | ✓ (§1.1) | inline | appendix | ✓ | inline |
| Out of scope / non-goals | — | ✓ (§2.2) | — | — | — | ✓ (§1) | — |
| Requirements by actor/role | ✓ | ✓ (Receiver/Owner) | ✓ (server/client) | ✓ | ✓ | ✓ (producer/consumer) | ✓ |
| Formal grammar | — | ABNF | ABNF | ABNF companion | productions + appendix | — | — |
| Conformance section | implicit | implicit | implicit | implicit | ✓ (appendix) | ✓ (§9) | validation tool |
| Security/operational considerations | ✓ | ✓ | ✓ (§4) | — | — | — | — |
| Registry/IANA | ✓ | ✓ | ✓ | — | — | — | — |
| Worked examples | appendix | appendix | appendix | inline pairs | inline labeled | §4 + appendix | inline cards |
| Versioning/change policy | obsoletes chain | obsoletes chain | — | versioned files | GitHub WG | ✓ (§11) | — |

Two reliable observations: every spec opens with purpose → terminology →
requirements-by-role, and the mature ones make conformance and change policy
explicit rather than implied.

## General-purpose skeleton

In order; parenthesized sections apply when relevant. Each names the source
that demonstrates it best.

1. **Header** — status (Proposed/Accepted/Draft), date, version ("This
   document specifies OKF version 0.1"), audience, what supersedes what
   (RFC 8200 obsoletes RFC 2460). Include the RFC 2119 declaration and a
   normativity statement ("Examples, notes, and callouts are non-normative").
2. **Definition/overview** — the thing in one or two sentences, then its
   components. A component table works: component / what it is / what it
   owns / where it lives.
3. **Terminology** — see `register.md` for entry patterns. GraphQL puts the
   full glossary in an appendix and defines inline; standalone specs do
   better with an early section.
4. **Conformance** — what "a conforming X" means per role, who verifies what,
   how the spec changes. See `conformance.md`. (OKF §9 is the model; most
   RFCs leave this implicit in the keywords — being explicit costs a
   paragraph and removes a class of arguments.)
5. **Out of scope** — explicit non-goals, each with a reason or a pointer to
   where that concern lives (RFC 7489 §2.2, OKF §1). Especially load-bearing
   when a previous attempt went wrong: name the rejected approach.
6. **(Applicability/positioning)** — where this sits relative to adjacent
   mechanisms, with a comparative table (RFC 10008 positions QUERY against
   GET and POST). Include when readers will ask "why not just use X?"
7. **Contract sections** — the interfaces and invariants, one section per
   interface. Field tables and grammar per `defining-data.md`.
8. **(Recommended conventions)** — SHOULD-level structure kept visibly
   separate from the MUSTs, so deviation is reviewable rather than forbidden.
9. **(Validation)** — what tooling enforces, layered: standalone checks,
   cross-component checks, drift detection. The Agent Skills spec names its
   reference validator (`skills-ref validate`); do the same.
10. **(Security/operational considerations)** — mandatory in IETF documents;
    include whenever the spec crosses a trust boundary or its misuse has
    operational blast radius.
11. **Worked example** — one real instance shown conforming (OKF walks a
    complete bundle in an appendix; RFC 8200/10008 use appendices). See
    `examples-and-notes.md` for placement of examples generally.
12. **(Current-state gaps)** — where reality does not yet conform: table of
    gap / violates §N / resolved by pointer. Only for specs retrofitted onto
    an existing system.
13. **(Procedures)** — operational how-tos in imperative numbered steps,
    titled by task ("Adding a track"). RFC 7489's "Mail Receiver Actions" /
    "Domain Owner Actions" split by role is the pattern: one procedure per
    audience.
14. **(Deferred-design index)** — table of open questions → issue/owner.
15. **References/related documents** — split normative vs informative if the
    list is long (IETF convention).

## Header patterns worth copying

- **Version statement as a sentence**, not just metadata: "This document
  specifies OKF version 0.1" — quotable, greppable, unambiguous.
- **Supersession chain**: RFC 8200 obsoletes RFC 2460 and documents the
  deltas. When revising a spec, list what changed and why; readers of the old
  version are an audience.
- **Contrast-with-past marker** for changed behavior: "it is now expected
  that nodes along a packet's delivery path only examine and process the
  Hop-by-Hop Options header if explicitly configured to do so" (RFC 8200,
  contrasting RFC 2460). The phrase "it is now expected" flags a deliberate
  change, not an oversight.

## When to split into multiple files

GraphQL splits by processing stage (Overview → Language → Type System →
Introspection → Validation → Execution → Response) plus appendices
(Conformance, Notation, Grammar). Split when:

- Sections serve disjoint audiences (language users vs implementers), or
- The document exceeds roughly what one reviewer holds in a sitting
  (~1,500–2,000 lines), or
- Parts version independently.

Rules for a split spec: one top-level file owns the conformance clause,
notation conventions, and the section index; every file states which spec and
version it belongs to; cross-file references use stable section anchors, not
"above"/"below".

## Section numbering

Number sections (§1, §4.2) and reference them by number — requirements cite
sections ("MUST comply with the formal specification found in Section 6.4" —
RFC 7489), and numbered anchors survive retitling. Avoid renumbering in
revisions; append rather than insert where possible.
