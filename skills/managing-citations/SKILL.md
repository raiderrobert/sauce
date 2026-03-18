---
name: managing-citations
description: "Use when adding research papers, managing bibliography entries, adding quotes to the quotes file, or maintaining citation consistency across literature review files. Triggers on: add paper, add citation, new source, add quote, update bibliography, cite this, catalog this paper, add to references."
---

# Managing Citations

Maintain the bibliography, quotes, and literature review files in this repo. Three files form a citation system:

| File | Purpose | Format |
|------|---------|--------|
| `skills/writing-skills/persona-paper-index.md` | Bibliography — one entry per paper | `**[Author Year]** Author. "Title." Date. URL` |
| `skills/writing-skills/persona-prompting-quotes.md` | Quotes organized by theme, referencing bibliography keys | `> "quote" — [Author Year], context` |
| `skills/writing-skills/persona-prompting-review.md` | Full per-paper analysis with effect sizes | Structured per-paper sections |

## Adding a New Paper

### 1. Read the paper

Fetch the paper via WebFetch (try `arxiv.org/html/{id}` first, fall back to `ar5iv.labs.arxiv.org/html/{id}`, then PDF via `pdftotext`). Extract:
- All quantitative findings (accuracy numbers, effect sizes, p-values)
- Model names and dataset names
- Key quotes (direct language from the paper, not paraphrases)

### 2. Add to bibliography

Read `skills/writing-skills/persona-paper-index.md`. Add an entry in alphabetical order by author surname:

```markdown
**[Author Year]** Author, A. et al. "Paper Title." Month Year. https://arxiv.org/abs/XXXX.XXXXX
```

Citation key format: `[Surname Year]`. If multiple papers by same author in same year, use `[Surname 2025a]`, `[Surname 2025b]`.

### 3. Add to literature review

Read `skills/writing-skills/persona-prompting-review.md`. Add a section following this structure:

```markdown
### Paper N: [Title](url)
**Citation:** Author et al., Year, [arXiv:XXXX.XXXXX](url)
**Key findings relevant to [topic]:**
- **Finding with exact numbers.** Context and detail.
- **Another finding.**

**Supports principle:** [which principles from SKILL.md this supports]
**Challenges principle:** [which principles this challenges]
**New principle suggested:** [any new principles]
```

Update the paper count in the "Papers Reviewed" table at the top. Add rows to the "Effect Sizes Reference Table" for any quantitative findings.

### 4. Add quotes

Read `skills/writing-skills/persona-prompting-quotes.md`. Add quotes to the appropriate theme section. If no existing theme fits, create a new section.

Quote format:
```markdown
> "Exact quote from the paper"
> — [Author Year], brief context if needed
```

Each quote must be a direct passage from the paper, not a paraphrase. Include context after the citation key only when the quote needs it (e.g., which model, which dataset).

### 5. Verify consistency

After adding, check:
- Bibliography key in index matches what quotes file references
- Paper number in review matches the Papers Reviewed table
- Any new effect sizes are in the Effect Sizes Reference Table

## Updating an Existing Paper

If a paper has been updated (new arxiv version), re-fetch and check for changed findings. Update the review section. Do not change the citation key unless the author list changed.

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Paraphrasing in the quotes file | Use exact language from the paper |
| Missing effect sizes in the review | Go back to the paper and extract numbers |
| Citation key not in bibliography | Add the bibliography entry first |
| Adding quotes without reading the full paper | Fetch and read — abstracts miss the important numbers |
