# Defining Data, Syntax, and Interfaces

Patterns for the contract sections — fields, formats, grammars, and the
precision that makes them implementable.

## Field tables

The workhorse. Every studied spec that defines structured data uses a table
with one row per field; the column sets converge on:

| Column | Purpose |
|---|---|
| Field | The normative name |
| Type | Shape (string, list of X, map<K,V>, enum) |
| Required | yes / no / conditional ("yes when `blocked`") |
| Meaning / Constraints | One or two sentences; limits inline |

The Agent Skills spec's frontmatter table (Field / Required / Constraints) is
a clean minimal instance; DMARC's tag tables add "MUST be present" phrasing
tied to its ABNF ("the 'v' and 'p' tags MUST be present" — RFC 7489).

**Conditional requirements go in the Required column**, not buried in prose:
"yes when `blocked`" is checkable; "usually required" is not.

## Per-field subsections

When a field has more constraints than a table cell holds, give it a
subsection after the table (Agent Skills pattern: a `#### name field` heading
with bulleted constraints, then valid/invalid example pairs). Structure:

1. Bulleted constraints, each independently checkable
   ("Must be 1–64 characters", "Must not contain consecutive hyphens",
   "Must match the parent directory name")
2. Valid examples
3. Invalid examples, each annotated with which constraint it breaks

Cross-artifact identity constraints deserve explicit statement: the Agent
Skills spec requires `name` to "match the parent directory name" — when one
value must be identical in several places, enumerate the places and state
that they must not drift.

## Value-space precision

Underspecified value spaces are where interop dies. The studied specs pin:

- **Encoding**: "A TOML file must be a valid UTF-8 encoded Unicode document."
- **Precision floors**: "Implementations are required to support at least
  millisecond precision" (TOML) — a minimum every implementation can rely on,
  with more permitted.
- **Lossless-or-error**: "If an integer cannot be represented losslessly, an
  error must be thrown" (TOML) — forbids silent degradation.
- **Formats by reference**: timestamps are "ISO 8601", grammar is "the ABNF
  in Section 6.4" — cite the defining standard rather than paraphrasing it.
- **Length and charset limits with exact numbers**: "1–64 characters",
  "≤1024 characters" (Agent Skills). "Reasonably short" is not a constraint.

## Opaque vs parseable identifiers

Decide, per identifier, whether consumers may parse structure out of it — and
say so. "The skill MUST NOT parse structure out of `id`" keeps the issuer
free to change the format; an ID that consumers secretly parse is frozen
forever. If structure is intended, define it with a grammar; there is no
stable middle ground.

## Enumerations

- State whether the set is **closed** (new values require a spec change) or
  **open** (unknown values permitted).
- For open enums, define consumer behavior for unknown values ("treats
  unknown kinds as opaque") and the naming rule for new ones ("lowercase
  snake_case").
- For each optional field, define **absence semantics**: is missing the same
  as empty? As a default value? "Skills MUST tolerate the absence of any
  key" (attribute maps) is a tolerance rule; a defaulted field states its
  default in the table.

## Formal grammar: when and how

Use a formal grammar when the artifact is *syntax* — something parsed
character by character:

- **TOML** publishes a companion ABNF as the authoritative syntax.
- **RFC 7489** defines its policy record in ABNF and makes requirements
  reference it: "A DMARC policy record MUST comply with the formal
  specification found in Section 6.4".
- **GraphQL** defines production-rule notation (`:` for syntactic grammar,
  `::` for lexical grammar, lookahead constraints like
  `[lookahead != Digit]`), uses it throughout, and consolidates it in a
  grammar-summary appendix. Its prose requirements then reference
  productions: "A {Name} must not be followed by a {NameContinue}."

Rules that follow from those examples:

- The grammar is authoritative; prose restates for readability. Say which
  wins on conflict.
- Declare the notation before first use (GraphQL's Notation Conventions
  appendix; ABNF cites RFC 5234).
- If the spec defines structured *data* rather than syntax — fields carried
  in an existing format — field tables suffice; a grammar adds maintenance
  without precision.

## Diagrams

RFC 8200 specifies packet layouts with ASCII field diagrams plus a table of
field meanings. The diagram shows position and width; the table carries the
semantics. For byte/bit-level formats this pair is the convention; for
anything higher-level, prefer tables (diagrams drift, and they are not
greppable).

## Interfaces as paired directions

When specifying a boundary between two components, define both directions as
separate structures (input contract, output contract), each with its own
field table, and state what MUST NOT cross in either direction. The
restriction list is as normative as the field list — an interface spec that
only lists what flows invites everything else to flow too.
