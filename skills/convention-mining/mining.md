# Convention Mining

Extract implicit coding conventions from merged PR review comments and produce structured, actionable output (a conventions document, a skill, or both).

## Process

### Phase 1: Scope the Mining

Determine what to analyze before fetching data.

1. **Identify the repo** — Confirm the GitHub org/repo (check `git remote -v`).
2. **Set time range** — Default to the last 3-6 months of merged PRs. Older PRs may reflect outdated standards.
3. **Set sample size** — Aim for 30-50 merged PRs that have review comments. Not all PRs get substantive reviews; you'll need to over-fetch.
4. **Identify known docs** — Check for existing conventions: `CLAUDE.md`, `CONTRIBUTING.md`, `.eslintrc`, linter configs, existing skills. These tell you what's *documented*; the goal is to find what's *undocumented*.

### Phase 2: Fetch PR Review Data

Use `gh` CLI to pull review data. See [references/gh-commands.md](references/gh-commands.md) for the full command reference. The short version: list merged PRs, then fetch inline review comments for each.

**Focus on inline review comments** — these are tied to specific code lines and contain the most actionable feedback. Review-level comments tend to be approvals or high-level notes.

**Skip PRs with zero review comments** — they won't contribute useful data.

**Use a subagent** to parallelize fetching across multiple PRs when the sample size is large.

### Phase 3: Categorize Feedback

Read through review comments and group them into recurring themes. For each theme:

1. **Name the category** — Use a clear, specific label (e.g., "PDS utility classes over custom CSS", not "styling").
2. **Collect examples** — Quote 2-4 actual review comments that illustrate the pattern.
3. **Note the reviewer(s)** — Track which reviewers enforce which patterns. This reveals specializations.
4. **Assess frequency** — Rank categories by how often they appear. High-frequency patterns are team-wide standards; low-frequency ones may be individual preferences.

Common category types (use as a starting checklist, not a rigid template):
- Design system / component library usage
- Naming conventions (variables, files, components, CSS classes)
- Code organization (file placement, extraction, separation of concerns)
- Type safety patterns
- State management patterns
- Data fetching patterns
- Error handling
- Testing patterns
- Internationalization
- Accessibility
- Performance
- Security
- Analytics / tracking
- Import patterns
- Constants / enums vs hardcoded strings
- CSS / styling practices
- Documentation / comments

### Phase 4: Cross-Reference

Compare findings against existing documentation:

1. **Already documented** — If a convention is in `CLAUDE.md`, linter rules, or an existing skill, note it but deprioritize. The value of this process is surfacing *undocumented* standards.
2. **Contradicts documentation** — Flag cases where review feedback contradicts written docs. The reviews likely reflect the *actual* standard.
3. **Gaps** — Conventions enforced in reviews but absent from all docs. These are the highest-value findings.

### Phase 5: Produce Output

The output format depends on the goal. See [references/output-templates.md](references/output-templates.md) for templates.

**Option A: Conventions document** — A structured markdown file listing each convention with examples. Good for adding to `CLAUDE.md` or a wiki.

**Option B: Skill** — A full skill with SKILL.md and reference files. Good when the conventions are complex enough to warrant progressive disclosure (e.g., separate reference files for different domains like styling, GraphQL, testing).

**Option C: CLAUDE.md additions** — Targeted additions to an existing `CLAUDE.md`. Good when the project already has a CLAUDE.md and just needs gaps filled.

For any output format:
- Lead with the highest-frequency patterns
- Include quoted review comments as evidence
- Note which reviewers enforce each pattern (helps consumers know who to ask)
- Organize by domain, not by reviewer
- Be prescriptive: "Use X, not Y" is more useful than "reviewers sometimes prefer X"

### Phase 6: Validate (Optional)

If the user wants to verify findings before finalizing:
- Present the top 5-10 patterns with evidence
- Ask if any seem like one-off preferences rather than team standards
- Ask if any known conventions were missed
- Adjust based on feedback

## Tips

- **Inline comments > review comments > PR descriptions.** The closer feedback is to actual code, the more specific and actionable it is.
- **Repetition = convention.** A pattern mentioned once is anecdotal. Mentioned 5+ times across different PRs and reviewers, it's a team standard.
- **Reviewer agreement matters.** If multiple reviewers enforce the same pattern, it's a strong convention. If only one reviewer mentions it, it may be a personal preference — note this distinction.
- **Recency matters.** More recent PRs reflect current standards. If older PRs contradict newer ones, go with the newer pattern.
- **Don't just list rules — explain why.** When the review comments include rationale ("use PDS classes because we're deprecating Tailwind"), include that context. It helps people follow the convention intentionally rather than mechanically.
