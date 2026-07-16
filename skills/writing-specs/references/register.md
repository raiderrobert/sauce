# Requirement Language and Voice

How conforming specs phrase requirements, definitions, and everything else.
Source specs cited below are cataloged in `sources.md`.

## Keyword discipline

Declare the keyword convention once, near the top, then never use the words
casually:

```markdown
The key words MUST, MUST NOT, SHOULD, SHOULD NOT, and MAY are to be
interpreted as described in RFC 2119.
```

RFC 8174 refines this for IETF documents: only the UPPERCASE forms are
normative, so lowercase "must" in prose carries no requirement force. Adopt
that rule even outside the IETF — it lets rationale prose breathe without
accidentally creating requirements.

A requirement without a keyword is a requirement the reader can ignore. Every
obligation gets exactly one of MUST / MUST NOT / SHOULD / SHOULD NOT / MAY.

## Requirement sentence shapes

Four shapes cover nearly every requirement in the studied specs:

**Actor-named** — the conforming component is the grammatical subject. This is
the default shape; use it whenever conformance depends on *who* acts:

> "The Mail Receiver, after preparing a report, MUST evaluate the provided
> reporting URIs in the order given." — RFC 7489

**Condition-first** — the trigger precedes the obligation:

> "Servers MUST fail the request if the Content-Type request field is missing
> or inconsistent." — RFC 10008

> "If an integer cannot be represented losslessly, an error must be thrown."
> — TOML

**Property statement** — declares an invariant about the artifact rather than
an action. Valid when the property is checkable:

> "QUERY requests are safe with regard to the target resource." — RFC 10008

> "A TOML file must be a valid UTF-8 encoded Unicode document." — TOML

**Invalidity declaration** — names a construct and rules it out. TOML's
signature move; pair it with an invalid example (see
`examples-and-notes.md`):

> "Defining a key multiple times is invalid." — TOML

## Error-case phrasing

State both that the input is invalid *and* what the implementation must do
about it. "Defining a key multiple times is invalid" tells authors; "an error
must be thrown" tells implementers. A spec that states only one leaves the
other audience guessing. Decide per failure class whether the required
behavior is reject (TOML's must-throw) or tolerate (OKF's must-not-reject —
see `conformance.md`).

## Hedge words to keywords

Hedged phrasing is a decision not yet made. Convert:

| Hedge | Convert to |
|---|---|
| "should probably", "ideally", "we'd like" | SHOULD, or delete |
| "must generally", "in most cases must" | MUST plus an explicit exception list |
| "can", "is able to" (as permission) | MAY |
| "will", "shall" (mixed with MUST) | MUST — one modal system, not two |
| "is expected to" | SHOULD (or MUST if violation breaks interop) |
| "never" / "always" in prose | MUST NOT / MUST |

## Terminology entries

Two working patterns:

**Single-line glossary** (RFC 8200) — for terms used mechanically:

> "node — a device that implements IPv6"
> "path MTU — the minimum link MTU of all the links in a path between a
> source node and a destination node"

**Prose definition with clarification** (RFC 7489) — for terms whose everyday
meaning could mislead:

> "Domain Owner: An entity or organization that owns a DNS domain. The term
> 'owns' here indicates that the entity or organization being referenced
> holds the registration of that DNS domain."

Rules either way: define before first use; one meaning per term; never use a
second name for a defined concept ("path" defined means "route" and "arm" are
banned for that concept).

## Coined terms

A one-off metaphor ("seam", "spine", "the golden path") reads as a normative
term the reader failed to find in Terminology. Either define it as a real
term or use a plain descriptive name. Test: would the term survive translation
into another spec's vocabulary without losing meaning? "Contract boundary"
does; "seam" does not.

## Voice

- Third person throughout. Actor-named subjects where conformance depends on
  the actor; passive-constructive is acceptable when the actor is unambiguous
  (RFC 8200: "must not create overlapping fragments" — only the fragmenting
  source node can violate this).
- Second person appears only inside quoted example content — a prompt, an
  error message, a UI string the spec is defining.
- Section titles are noun phrases: "Out of scope", "Conformance", "Adding a
  track". Never quoted questions ("What do I touch to add X?") or slogans.
- Design-goal statements are permitted in the introduction, phrased as fact,
  not sales: "TOML is designed to map unambiguously to a hash table." One
  sentence of purpose, then requirements.

## Rhetoric

None. No "the most important line in this document", no "the heart of the
spec", no fragments for emphasis ("Silence is a defect."). If a requirement
matters, its MUST carries the weight. Calibration pair:

```markdown
# Non-conforming: coined term, rhetoric, actorless fragment
## The seam: work items in, outcomes out
This is the heart of the spec. Silence is a defect.

# Conforming: descriptive title, actor-named requirement
## Contract boundary for inputs and outputs
The skill MUST emit exactly one outcome per work item, including on failure.
A run that terminates without emitting an outcome is non-conforming.
```

Mark justification explicitly — "Rationale:" prefix, a parenthetical note
(RFC 8200 style), or a "Note:" block (GraphQL style; see
`examples-and-notes.md`) — so it cannot be read as requirement.
