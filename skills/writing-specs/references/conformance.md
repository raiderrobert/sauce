# Conformance, Validation, and Evolution

What it means to conform, who checks it, and how the spec itself changes.

## The conformance clause

Two working styles:

**Blanket clause** (GraphQL):

> "A conforming implementation of GraphQL must fulfill all normative
> requirements described in this specification"

Sufficient for single-role specs. One sentence, placed in the front matter or
a dedicated appendix.

**Per-role clauses** — the stronger pattern whenever more than one kind of
component implements the spec. Every studied multi-role spec splits its
obligations:

| Spec | Roles |
|---|---|
| RFC 7489 | Mail Receiver / Domain Owner (separate "Actions" sections) |
| OKF | Producer / Consumer (different obligations, different strictness) |
| RFC 10008 | Server / Client / Cache |
| GraphQL | Service / Client (requests vs responses) |

Write one clause per role: "A conforming <role> satisfies every MUST in
§N–§M." A requirement that doesn't obviously belong to a role is a sign the
roles are wrong or the requirement is vague.

## Strictness per failure class: reject vs tolerate

The most consequential conformance decision is what implementations do with
input that violates the spec. The studied specs use both poles deliberately:

**Must-reject** (TOML) — for formats where silent acceptance corrupts data:

> "Defining a key multiple times is invalid."
> "If an integer cannot be represented losslessly, an error must be thrown."

**Must-tolerate** (OKF) — for ecosystems where strictness would break
interop and the payload is best-effort:

> "Consumers SHOULD treat all other constraints as soft guidance. In
> particular, consumers MUST NOT reject a bundle because of: Missing optional
> frontmatter fields."

Decide *per failure class*, and write it down. A useful default: reject
violations of the core contract (malformed syntax, missing required fields);
tolerate violations of conventions (unknown optional fields, unrecognized
enum values — see extensibility below). A spec that never says which failures
are fatal gets both behaviors, implementation-dependent.

## Extensibility and registries

Plan for values the spec doesn't know yet:

- **Open enums**: state explicitly that unknown values are permitted and how
  they're treated ("the factory treats unknown kinds as opaque"). An enum
  that is silently closed forces a spec revision for every addition.
- **Registry pattern** (IETF): RFC 10008 and RFC 7489 register their new
  methods/tags with IANA so extensions have one authoritative list. In-house
  equivalent: the spec names the file or table where new values are
  registered, and adding a value is a PR against it — not a spec change.
- **Namespaced escape hatch**: the Agent Skills spec's `metadata` field is
  "a map from string keys to string values" for properties the spec doesn't
  define, with the advice to make key names "reasonably unique to avoid
  accidental conflicts". A designated extensions field keeps experiments out
  of the core schema.

## Versioning and change process

- **State the version as prose** ("This document specifies OKF version 0.1")
  and keep a status field (Draft/Proposed/Accepted) in the header.
- **Define the bump policy** (OKF §11 defines major/minor rules). Minimum
  viable policy: breaking changes to any MUST → major; new optional
  capability → minor; editorial → patch or none.
- **Supersession, not mutation**, for published versions: TOML keeps each
  version as its own file (`v1.1.0.md`); RFCs obsolete their predecessors and
  document deltas. For an in-repo living spec, PR-based evolution with the
  status header updated is sufficient — say so in the conformance section.
- **Disagreement rule**: when the implementation and the spec disagree, an
  issue MUST be filed identifying which is in error. This one sentence
  converts every discovered divergence into tracked work instead of folklore.

## Validation tooling

A spec that can be linted, should be. Patterns:

- **Name the reference validator** in the spec (Agent Skills:
  "Use the skills-ref reference library to validate your skills:
  `skills-ref validate ./my-skill`"). If in-house tooling wraps it, say so.
- **Layer the checks** and state which layers gate what:
  1. *Standalone* — one artifact, no context: syntax, required fields,
     internal references resolve.
  2. *Cross-component* — pairs agree: references between artifacts resolve,
     names match, no orphans on either side.
  3. *Drift* — deployed reality matches declared config; overrides and
     escape hatches are surfaced, not silent.
  Layers 1–2 gate merges in CI; layer 3 runs on a schedule.
- **Statically checkable vs review-verified**: list which MUSTs the tooling
  enforces and which are verified by review or by operational metrics. An
  unenforceable MUST is still normative — but the spec should be honest about
  its enforcement gap.
