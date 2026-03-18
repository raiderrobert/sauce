---
name: scribe
description: "Use when adding research papers, managing bibliography entries, or adding quotes to citation files. Ensures papers are cataloged consistently across bibliography, quotes, and review files so research is findable and citable. Triggers on: add paper, add citation, new source, add quote, update bibliography, cite this, catalog this paper, add to references, scribe."
---

# Scribe

Catalog research papers into a citation system under `skills/writing-skills/references/`. See `skills/writing-skills/references/index.md` for the full structure.

All files live in one directory. One shared bibliography; quotes and reviews split by topic.

## File Layout

| File | What it is |
|------|------------|
| `references/bibliography.md` | All papers — one entry per paper, keyed by `[Author Year]` |
| `references/quotes-*.md` | Direct quotes organized by theme, each citing a bibliography key |
| `references/review-*.md` | Detailed per-paper analysis with effect sizes and principle implications |

## Current Topics

| Topic | Quotes | Review |
|-------|--------|--------|
| Persona prompting | `quotes-persona.md` | `review-persona.md` |
| Constraint specificity | `quotes-constraints.md` | (covered in review-persona.md) |
| Skill authoring techniques | `quotes-skill-authoring.md` | `review-prompting.md` |

Papers can span multiple topics — they have one bibliography entry but quotes in multiple files.

## Adding a New Paper

### 1. Extract findings from the paper

Read the full paper (not just the abstract). Extract:
- Quantitative findings with exact numbers (accuracy, effect sizes, p-values)
- Model names and dataset names
- Direct quotes — exact language, not paraphrases

### 2. Add bibliography entry

Read `references/bibliography.md`. Add an entry in alphabetical order by author surname:

```
**[Surname Year]** Surname, A. et al. "Paper Title." Month Year. https://arxiv.org/abs/XXXX.XXXXX
```

Disambiguation: `[Surname 2025a]`, `[Surname 2025b]` for same author, same year.

### 3. Add review section

Add to the appropriate `references/review-*.md` file:

```
### Paper N: [Title](url)
**Citation:** Author et al., Year, [arXiv:XXXX.XXXXX](url)
**Key findings relevant to [topic]:**
- **Finding with exact numbers.** Context.

**Supports principle:** [which]
**Challenges principle:** [which]
**New principle suggested:** [if any]
```

Update the Papers Reviewed table and Effect Sizes Reference Table.

### 4. Add quotes

Add to the appropriate `references/quotes-*.md` file under the right theme section:

```
> "Exact quote from the paper"
> — [Surname Year], context if needed
```

Create a new theme section if no existing one fits. If the paper spans multiple topics, add quotes to multiple quotes files.

### 5. Consistency check

After adding, confirm:
- Bibliography key exists in `bibliography.md` for every `[Author Year]` referenced in quotes
- Effect Sizes table has rows for all quantitative findings in the review
- Papers Reviewed table count matches actual paper sections

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Paraphrasing in the quotes file | Use exact language from the paper |
| Missing effect sizes in the review | Go back to the paper and extract numbers |
| Citation key not in bibliography | Add the bibliography entry first |
| Adding quotes from the abstract only | Read the full paper — abstracts miss the important numbers |
| Creating a separate bibliography per topic | One `bibliography.md` — papers span topics |
