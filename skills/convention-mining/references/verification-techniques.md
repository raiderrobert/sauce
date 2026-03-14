# Verification Techniques

## Quote Verification

### Finding Review Comments by Author and PR

```bash
# Fetch inline review comments for a specific PR, filtered by author
gh api "repos/{owner}/{repo}/pulls/{number}/comments" \
  --jq '.[] | select(.user.login=="USERNAME") | {body: .body, created_at: .created_at}'
```

### When You Don't Know the PR Number

Search the most recent review comments by a specific user:

```bash
# Get the last 100 review comments by a user across all PRs
gh api "repos/{owner}/{repo}/pulls/comments?sort=created&direction=desc&per_page=100" \
  --jq '.[] | select(.user.login=="USERNAME") | {body: .body[0:200], pr_url: .pull_request_url, created_at: .created_at}'
```

### Partial Text Matching

When searching for a specific quote, pipe through `grep`:

```bash
gh api "repos/{owner}/{repo}/pulls/{number}/comments" \
  --jq '.[].body' | grep -i "fragment"
```

### Verification Checklist Per Quote

For each quote, check:

1. **Does it exist?** — Is the text (or close paraphrase) in the API response?
2. **Correct author?** — Does `.user.login` match the attribution?
3. **Correct PR?** — Is it on the PR number cited (if any)?
4. **In context?** — Read the surrounding comments. Does the quote mean what the skill implies?
5. **Editorial changes acceptable?** — Trimming filler, normalizing caps, removing URLs = OK. Omitting qualifiers ("probably", "maybe"), merging separate comments, changing meaning = not OK.

## Gap Analysis

### Step 1: Get Recent Merged PRs

```bash
# Last 20 merged PRs (may need to fetch more if many have no review comments)
gh api "repos/{owner}/{repo}/pulls?state=closed&sort=updated&direction=desc&per_page=30" \
  --jq '[.[] | select(.merged_at != null)] | sort_by(.merged_at) | reverse | .[0:20] | .[] | {number: .number, title: .title, merged_at: .merged_at}'
```

### Step 2: Fetch Review Comments Per PR

```bash
# Inline review comments (primary source)
gh api "repos/{owner}/{repo}/pulls/{number}/comments" \
  --jq '.[] | {user: .user.login, body: .body}'

# Top-level review bodies (secondary — often empty)
gh api "repos/{owner}/{repo}/pulls/{number}/reviews" \
  --jq '.[] | select(.body != null and .body != "") | {user: .user.login, body: .body, state: .state}'
```

### Step 3: Categorize and Count

For each review comment:
1. Does it enforce a pattern already in the skill? (confirms existing coverage)
2. Does it enforce a pattern NOT in the skill? (gap)
3. Does it contradict something in the skill? (conflict)

Track frequency: how many distinct PRs mention each gap. A pattern seen in 2+ PRs by different reviewers is a strong candidate for inclusion.

### Step 4: Rank Gaps

| Priority | Criteria |
|----------|----------|
| High | 2+ PRs, or multiple reviewers on the same PR |
| Medium | 1 PR but affects type safety, data integrity, or architecture |
| Low | 1 PR, edge case, low impact |

### Using Subagents for Scale

When auditing against 15+ PRs, use parallel subagents:
- One agent to verify quotes (spawn with a list of quotes and reviewer names)
- One agent to fetch and categorize review comments from recent PRs
- Do the overlap analysis yourself from the files you've already read

## Overlap Detection

### Systematic Comparison

For each rule in the skill, search CLAUDE.md:

```bash
# Check if a topic is covered in CLAUDE.md
grep -i "css modules\|module.css" CLAUDE.md
grep -i "__mocks__\|mock files" CLAUDE.md
grep -i "inline.*style\|style={" CLAUDE.md
```

### Classification

| Type | Action |
|------|--------|
| Verbatim duplication | Remove from skill, or keep only the incremental detail with a note like "CLAUDE.md documents this rule. The additional detail: ..." |
| Contradiction | Determine which matches actual reviewer behavior. Fix the one that's wrong. If CLAUDE.md is wrong, note this for the project maintainers. |
| Complementary | Keep both. The skill adds specific examples/quotes that CLAUDE.md doesn't have. |

## Codebase Verification

### Check Import Paths

```bash
# Find how a type is actually imported in the codebase
grep -r "import.*TypeName" src/ --include="*.ts" --include="*.tsx" | head -5

# Find path aliases in tsconfig
grep -A5 "paths" tsconfig.json
```

### Check Enum Shapes

```bash
# Find how a specific enum is defined in generated types
grep -A10 "enum EnumName" src/__generated__/graphql.ts
```

### Check Type Existence

```bash
# Verify a type actually exists
grep "type TypeName\|interface TypeName\|enum TypeName" src/__generated__/graphql.ts
```

### Cross-Check Examples Against Rules

Read the skill's critical rules list, then re-read every code example asking: "Does this example follow the skill's own rules?" Common failure: a code example uses a hardcoded string while the rules say "use enums and constants."
