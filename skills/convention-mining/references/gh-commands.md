# GitHub CLI Commands for Convention Mining

## Detect Repo

```bash
# Get org/repo from current directory
gh repo view --json nameWithOwner -q '.nameWithOwner'
```

## List Merged PRs

```bash
# Basic: last 50 merged PRs
gh pr list --state merged --limit 50 --json number,title,author,mergedAt,reviewDecision

# With date filtering (last 6 months — computes date dynamically)
gh pr list --state merged --limit 100 --search "merged:>$(date -v-6m +%Y-%m-%d)" --json number,title,author,mergedAt
```

## Fetch Review Comments

There are two types of review data. Inline comments (pull request review comments) are the most valuable.

### Inline Review Comments (Primary Source)

These are comments tied to specific lines of code — the richest source of convention data.

```bash
# Fetch inline comments for a single PR
gh api repos/{owner}/{repo}/pulls/{number}/comments --paginate --jq '.[] | {user: .user.login, body: .body, path: .path, diff_hunk: .diff_hunk, created_at: .created_at}'
```

### Review-Level Comments (Secondary Source)

These are the top-level review submissions (approve/request changes/comment).

```bash
# Fetch reviews for a single PR
gh api repos/{owner}/{repo}/pulls/{number}/reviews --jq '.[] | {user: .user.login, state: .state, body: .body}'
```

### PR Comments (Tertiary Source)

General discussion comments on the PR, not tied to code lines. Occasionally useful for architectural feedback.

```bash
# Fetch issue-style comments on a PR
gh api repos/{owner}/{repo}/issues/{number}/comments --jq '.[] | {user: .user.login, body: .body}'
```

## Efficient Batch Fetching

When processing many PRs, fetch in batches to avoid rate limiting.

```bash
# Get PR numbers that have review comments (saves API calls on PRs with no reviews)
gh pr list --state merged --limit 50 --json number,reviewDecision --jq '.[] | select(.reviewDecision != "") | .number'
```

### Batch Script Pattern

```bash
# Fetch inline comments for multiple PRs (uses gh repo view to resolve owner/repo)
REPO=$(gh repo view --json nameWithOwner -q '.nameWithOwner')
for pr in $(gh pr list --state merged --limit 50 --json number --jq '.[].number'); do
  echo "=== PR #$pr ==="
  gh api "repos/$REPO/pulls/$pr/comments" --jq '.[] | "[\(.user.login)] \(.path): \(.body)"' 2>/dev/null
done
```

## Rate Limits

- GitHub API allows 5000 requests/hour for authenticated users
- Each `--paginate` call may use multiple requests for large result sets
- A typical PR with 10 inline comments uses 1 API request
- Budget ~2-3 requests per PR (comments + reviews)
- 50 PRs ≈ 100-150 API requests, well within limits

## Filtering Tips

```bash
# Only PRs by a specific author
gh pr list --state merged --author username --limit 30

# Only PRs with "changes requested" reviews (richer feedback)
gh pr list --state merged --limit 100 --json number,reviewDecision --jq '.[] | select(.reviewDecision == "CHANGES_REQUESTED") | .number'

# PRs touching specific files (check after listing — no path filter on gh pr list)
gh pr view {number} --json files --jq '.files[].path'
```
