---
name: scribe
description: "Use when adding research papers, managing bibliography entries, or adding quotes to citation files. Ensures papers are cataloged consistently across bibliography, quotes, and review files so research is findable and citable. Triggers on: add paper, add citation, new source, add quote, update bibliography, cite this, catalog this paper, add to references, scribe."
---

# Scribe

Catalog research papers into a three-file citation system: bibliography, quotes by theme, and detailed review. Each research topic gets its own set of three files.

## Research Topics

| Topic | Bibliography | Quotes | Review |
|-------|-------------|--------|--------|
| Persona prompting | `skills/writing-skills/persona-paper-index.md` | `skills/writing-skills/persona-prompting-quotes.md` | `skills/writing-skills/persona-prompting-review.md` |
| Prompting techniques (general) | `skills/writing-skills/literature-review.md` | — | `skills/writing-skills/literature-review.md` |

When adding a paper, determine which topic it belongs to. If no topic fits, create a new set of three files following the same conventions.

## The Three-File Pattern

| File | Contains | Keyed by |
|------|----------|----------|
| **Bibliography** | One entry per paper: citation key, authors, title, date, URL | `[Author Year]` alphabetical |
| **Quotes** | Direct passages organized by theme, each citing a bibliography key | Theme sections |
| **Review** | Per-paper analysis: findings, effect sizes, principle implications | Paper sections |

## Adding a New Paper

### 1. Extract findings from the paper

Read the full paper (not just the abstract). Extract:
- Quantitative findings with exact numbers (accuracy, effect sizes, p-values)
- Model names and dataset names
- Direct quotes — exact language, not paraphrases

### 2. Add bibliography entry

Add to the topic's bibliography file, alphabetical by author surname:

```
**[Surname Year]** Surname, A. et al. "Paper Title." Month Year. https://arxiv.org/abs/XXXX.XXXXX
```

Disambiguation: `[Surname 2025a]`, `[Surname 2025b]` for same author, same year.

### 3. Add review section

Add to the topic's review file:

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

Add to the topic's quotes file under the appropriate theme section:

```
> "Exact quote from the paper"
> — [Surname Year], context if needed
```

Create a new theme section if no existing one fits.

### 5. Consistency check

After adding, confirm:
- Bibliography key exists in the index for every `[Author Year]` referenced in quotes
- Effect Sizes table has rows for all quantitative findings in the review
- Papers Reviewed table count matches actual paper sections

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Paraphrasing in the quotes file | Use exact language from the paper |
| Missing effect sizes in the review | Go back to the paper and extract numbers |
| Citation key not in bibliography | Add the bibliography entry first |
| Adding quotes from the abstract only | Read the full paper — abstracts miss the important numbers |
| Putting a paper in the wrong topic | Check the Research Topics table; create a new topic if needed |
