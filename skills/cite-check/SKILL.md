---
name: cite-check
description: "Use when the user has a list of claims, ideas, laws, quotes, or attributions and needs original sources and provenance for each. Triggers include: find references, find sources, source this, cite these, where does this come from, who said this, original source, provenance, attribution check, fact-check attributions."
---

# Find References: Deep Source Research

Systematically find original sources, provenance, and attribution for a list of claims, ideas, or named concepts.

---

## Workflow

### 1. Read the Input

Read the document or list containing items that need sourced citations. Understand the structure — sections, categories, groupings.

### 2. Batch and Parallelize

Group items into batches of 5–15 (by section or theme). Dispatch parallel research agents, one per batch. Each agent should be `general-purpose` with a clear prompt.

**Agent prompt template:**

```
Research and find the original source/reference for each of these [items].
I need the original publication, paper, blog post, or book where each was
first articulated. Provide author, title, year, and a URL or citation
where possible.

[List of items with their descriptions]

For each, provide:
- Original author
- Original source (paper, blog post, book, talk, etc.)
- Year
- URL or citation
- Brief note on provenance if the attribution is uncertain or disputed

Format the output as a clean markdown list.
```

Use `model: sonnet` for research agents to balance speed and quality.

### 3. Compile Results

Merge all agent results back into the source document as a references section. Match the document's existing structure (e.g., if items are grouped by chapter/section, group references the same way).

For each item, the reference entry should include:
- **Who** — original author (and who named/popularized it, if different)
- **What** — original source (paper, book, blog post, talk, RFC, etc.)
- **When** — year of first publication
- **Where** — URL or full citation
- **Provenance note** — only when attribution is contested, uncertain, or has an interesting chain (e.g., concept by person A, named by person B, popularized by person C)

### 4. Flag Problems

Create an editorial flags table for items with issues. Flag categories:

| Flag | Meaning |
|------|---------|
| Unknown author | No traceable originator; folk wisdom or oral tradition |
| Disputed attribution | Multiple claimants or subject disputes it |
| Misattribution | Commonly attributed to wrong person |
| No source found | Exhaustive search turned up nothing |
| Popular version overstated | Common understanding diverges from original |
| Multi-step attribution | Concept, naming, and popularization by different people |

Place the flags table in the document near the references for easy access during writing.

### 5. Verify When Challenged

If the user corrects or questions a finding:
- Dispatch a targeted verification agent for the specific item
- Search with more precision (exact quotes, specific books, page numbers)
- Update the reference and flag accordingly
- Do not defend initial findings if the user has better information — verify their claim instead

---

## Research Agent Best Practices

- **Always ask for provenance, not just attribution.** "Who first said it" and "who named it" and "who popularized it" are often three different people.
- **Flag folk origins honestly.** Some concepts have no single source — say so rather than forcing a citation.
- **Distinguish the concept from the name.** Many laws were observed long before they were named (e.g., Goodhart's observation in 1975, named by Hoskin in 1996, famous phrasing by Strathern in 1997).
- **Note when popular understanding diverges from the original.** If the common version of a law overstates or distorts the original claim, flag it.
- **Prefer primary sources.** A Wikipedia article is a starting point, not a citation. Trace back to the original paper, book, or post.

---

## Output Quality Checklist

Before presenting results to the user:

- [ ] Every item has a reference entry (even if "no source found")
- [ ] Attribution chains are documented where they exist
- [ ] Disputed or uncertain attributions are flagged
- [ ] URLs point to primary sources, not just Wikipedia
- [ ] Items with no traceable source are clearly marked
- [ ] An editorial flags table exists for items with issues
- [ ] References match the document's existing organizational structure
