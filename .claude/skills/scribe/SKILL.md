---
name: scribe
description: "Use when adding research papers, managing bibliography entries, or adding quotes to citation files. Ensures papers are cataloged consistently across bibliography, quotes, and review files so research is findable and citable. Triggers on: add paper, add citation, new source, add quote, update bibliography, cite this, catalog this paper, add to references, scribe."
---

# Scribe

Catalog research papers into a references directory. One shared bibliography; quotes and reviews split by topic.

## The Pattern

A references directory contains:

| File | What it is |
|------|------------|
| `index.md` | Explains the directory structure |
| `bibliography.md` | All papers — one entry per paper, keyed by `[Author Year]` |
| `quotes-{topic}.md` | Direct quotes organized by theme, each citing a bibliography key |
| `review-{topic}.md` | Detailed per-paper analysis with effect sizes and principle implications |

Papers can span multiple topics — one bibliography entry, quotes in multiple files.

## Finding the References Directory

Look for a `references/` directory containing a `bibliography.md`. Check:
1. Subdirectories of the skill or context the user is working in
2. Common locations: `references/`, `docs/references/`, `skills/*/references/`

If no references directory exists and the user wants to start one, create it with `index.md` and `bibliography.md`.

## Known References Directories

| Location | Topics |
|----------|--------|
| `skills/writing-skills/references/` | Persona prompting, constraint specificity, skill authoring techniques |

## Adding a New Paper

### 1. Extract findings from the paper

Read the full paper (not just the abstract). Extract:
- Quantitative findings with exact numbers (accuracy, effect sizes, p-values)
- Model names and dataset names
- Direct quotes — exact language, not paraphrases

### 2. Add bibliography entry

Read `bibliography.md` in the target references directory. Add an entry in alphabetical order by author surname:

```
**[Surname Year]** Surname, A. et al. "Paper Title." Month Year. https://arxiv.org/abs/XXXX.XXXXX
```

Disambiguation: `[Surname 2025a]`, `[Surname 2025b]` for same author, same year.

### 3. Add review section

Add to the appropriate `review-{topic}.md`:

```
### Paper N: [Title](url)
**Citation:** Author et al., Year, [arXiv:XXXX.XXXXX](url)
**Key findings relevant to [topic]:**
- **Finding with exact numbers.** Context.

**Supports principle:** [which]
**Challenges principle:** [which]
**New principle suggested:** [if any]
```

Update the Papers Reviewed table and Effect Sizes Reference Table if they exist.

### 4. Add quotes

Add to the appropriate `quotes-{topic}.md` under the right theme section:

```
> "Exact quote from the paper"
> — [Surname Year], context if needed
```

Create a new theme section if no existing one fits. If the paper spans multiple topics, add quotes to multiple files.

### 5. Consistency check

After adding, confirm:
- Bibliography key exists in `bibliography.md` for every `[Author Year]` referenced in quotes
- Effect Sizes table has rows for all quantitative findings in the review (if table exists)
- Papers Reviewed table count matches actual paper sections (if table exists)

## Bootstrapping

If the target directory has no `references/` yet, create the scaffold before adding the first paper:

```
references/
  index.md
  bibliography.md
```

**index.md:**
```markdown
# References

Research backing the principles in this skill.

| File | What it is |
|------|------------|
| `bibliography.md` | All papers — one entry per paper, keyed by `[Author Year]` |
| `quotes-*.md` | Direct quotes organized by theme, each citing a bibliography key |
| `review-*.md` | Detailed per-paper analysis with effect sizes and principle implications |

Quotes and reviews reference bibliography keys.
Add new papers via the `/scribe` skill.
```

**bibliography.md:**
```markdown
# Bibliography

All papers referenced across reviews and quotes files. Keyed by `[Author Year]`, alphabetical.

---
```

Then create `quotes-{topic}.md` and `review-{topic}.md` as needed when adding the first paper. Add the new location to the Known References Directories table in this skill.

## Common Mistakes

| Mistake | Fix |
|---------|-----|
| Paraphrasing in the quotes file | Use exact language from the paper |
| Missing effect sizes in the review | Go back to the paper and extract numbers |
| Citation key not in bibliography | Add the bibliography entry first |
| Adding quotes from the abstract only | Read the full paper — abstracts miss the important numbers |
| Creating a separate bibliography per topic | One `bibliography.md` per references directory — papers span topics |
| Hardcoding file paths | Use the Known References table to find the right directory |
