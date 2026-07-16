# Examples, Notes, and Non-Normative Machinery

How specs separate what binds from what explains — and use examples to draw
the conformance boundary.

## The normativity statement

One sentence in the header settles every future argument about whether an
example binds:

```markdown
Examples, blockquoted notes, and "Today:" callouts are non-normative:
they illustrate requirements or describe the current implementation state.
Normative requirements appear only in body text using the key words above.
```

Corollary rule: **requirements never live only in examples.** If an example
demonstrates an obligation, the obligation is also stated in body text with a
keyword. An example is evidence, not law.

## Notes

GraphQL marks explanatory asides with an explicit label, and uses them for
implementation guidance, history, and edge cases:

> "Note: An implementation which uses UTF-16 to represent GraphQL documents
> in memory (for example, JavaScript or Java) may encounter a surrogate
> pair."

RFC 8200 does the same work with parentheticals:

> "(Note: unlike IPv4, fragmentation in IPv6 is performed only by source
> nodes...)"

Pick one mechanism — a "Note:" label or a blockquote convention — and use it
for everything that explains without binding: rationale, history, warnings,
implementation hints.

## Example / counter-example pairs

Contrast marks the conformance boundary better than either side alone. Three
implementations of the same idea:

**TOML** — inline `# INVALID` comments inside otherwise-normal code blocks;
valid and invalid forms shown adjacent.

**GraphQL** — fenced blocks explicitly labeled `example` and
`counter-example`.

**Agent Skills spec** — paired "Valid examples:" / "Invalid examples:" lists,
each invalid entry annotated with *why*:

```yaml
name: PDF-Processing  # uppercase not allowed
name: -pdf            # cannot start with hyphen
name: pdf--processing # consecutive hyphens not allowed
```

The annotation is the load-bearing part: an invalid example without the
reason teaches pattern-matching, not the rule.

## Example placement and progression

- **Inline, immediately after the concept** (TOML): each construct is
  introduced, then shown. Best for syntax-heavy specs.
- **Progressive complexity** (OKF): a minimal example in the definition
  section, fuller examples mid-document, one complete walkthrough in an
  appendix.
- **Appendix for long-form** (RFC 8200 Appendix A, RFC 10008's appendices):
  keep multi-page examples out of the requirement flow.

Whichever placement: examples set the reader's expectations for real usage.
An example that shows a sloppy instance licenses sloppy instances.

## Worked example of the whole spec

Beyond per-concept examples, mature specs show **one complete conforming
instance** of the thing being specified (OKF's full bundle; a spec for a
plugin format shows one whole plugin). Include with it what is *absent* —
"note that X does not appear here, because §N assigns it elsewhere" — since
absences are invisible in examples otherwise.

## Current-state callouts and gap tables

For a spec retrofitted onto an existing system, two devices keep it honest
without polluting the normative content:

**"Today:" callouts** — non-normative blockquotes naming the exact file,
command, or behavior that answers the question in the current state:

```markdown
> **Today:** cadence lives in Terraform `var.tracks`; edit the `schedule`
> field and run `just apply`. Per-squad cadence does not exist yet (#93).
```

**Gap table** — the current implementation's violations, each mapped to the
section it violates and the work that resolves it:

| # | Gap | Violates | Resolved by |
|---|---|---|---|
| 1 | Router fetches its own ticket data | §3.1 | migration issue #96 |

The framing sentence matters: the current state is "a transitional state, not
an exemption". New implementations conform from the start; grandfathered ones
carry a warning that becomes an error when migration completes.

## Deferral discipline

Every open question points somewhere: an issue, a companion document, an
owner. A **deferred-design index** — one table near the end mapping each
deferred question to its home — makes the spec's edges auditable:

| Question | Where it lives |
|---|---|
| Top-level config schema | #93 |
| Work-source retry semantics | #94 |

Bare "TBD" fails review: it is a hole, not a deferral. "Deferred to #93" is a
contract.
