# Source Specifications

The catalog of studied specs that the patterns in this skill are harvested
from. The thematic reference files (`register.md`, `structure.md`,
`conformance.md`, `examples-and-notes.md`, `defining-data.md`) cite these
sources inline next to each pattern; this file is where the sources
themselves live.

## Adding a source

1. Read the spec (fetch it; characterize its requirement phrasing, section
   organization, normativity machinery, and anything distinctive).
2. Add a row to the catalog and a column to the comparison table below.
3. Wire any new patterns into the thematic file they belong to, with an
   inline citation and — where a sentence is load-bearing — a short verbatim
   quote.
4. Quote only what was actually read; never reconstruct a quote from memory.

## Catalog

| Source | Link | What it is | Distinctive patterns to steal |
|---|---|---|---|
| RFC 8200 | https://www.rfc-editor.org/rfc/rfc8200 | IPv6, Internet Standard | Single-line terminology glossary; obsoletes-chain with documented deltas; "it is now expected" marker for deliberate behavior changes; ASCII packet diagrams paired with field-meaning tables; parenthetical notes |
| RFC 7489 | https://www.rfc-editor.org/rfc/rfc7489 | DMARC, Informational | Per-role requirements (Mail Receiver / Domain Owner "Actions" sections); explicit "Out of Scope" section; prose terminology entries with clarification; ABNF-referencing requirements; IANA tag registries |
| RFC 10008 | https://datatracker.ietf.org/doc/rfc10008/ | HTTP QUERY method, Proposed Standard | Formal definitions subsection (§1.1); comparative applicability vs adjacent mechanisms (QUERY vs GET/POST); condition-first requirements; safety/idempotency property statements; IANA registrations |
| TOML v1.1.0 | https://github.com/toml-lang/toml.io/blob/main/specs/en/v1.1.0.md | Config-file format | Invalidity declarations ("Defining a key multiple times is invalid"); `# INVALID` example pairs; value-space precision (UTF-8 requirement, precision floors, lossless-or-error); versioned spec files; companion ABNF as authoritative syntax |
| GraphQL | https://github.com/graphql/graphql-spec/tree/main/spec | Query language, multi-file spec | Blanket conformance clause; labeled `Note:` / `example` / `counter-example` blocks; production-rule grammar notation (`:` / `::`, lookahead constraints) with grammar-summary appendix; multi-file split by processing stage |
| Google OKF | https://github.com/GoogleCloudPlatform/knowledge-catalog/blob/main/okf/SPEC.md | Open Knowledge Format, Draft | Explicit conformance section; producer/consumer role split; must-tolerate clauses ("consumers MUST NOT reject a bundle because of..."); version statement as a sentence; versioning policy section; progressive examples ending in a full appendix walkthrough |
| Agent Skills | https://agentskills.io/specification | SKILL.md format | Field/Required/Constraints tables with per-field subsections; annotated valid/invalid example pairs; cross-artifact identity constraint (name matches directory); namespaced `metadata` extension field; progressive-disclosure size budgets; named reference validator (`skills-ref validate`) |

## Section comparison

What each source contains — the empirical basis for the skeleton in
`structure.md`:

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

Two reliable observations: every source opens with purpose → terminology →
requirements-by-role, and the mature ones make conformance and change policy
explicit rather than implied.
