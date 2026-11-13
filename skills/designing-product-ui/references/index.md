# References

Where the rules in this skill come from. Read this when adding a new source or checking where a rule came from.

| File | What it is |
|------|------------|
| `bibliography.md` | Every cited source, one entry per source, keyed by `author/short-title` |

## Citation format

Each rule in a topic file ends with one or more reference-style citations, defined at the bottom of the same file:

```markdown
- Color destructive actions such as delete red, never the brand color. ([jain/60-30-10-rule 4:50], [jain/color-mistakes 5:51])

[jain/color-mistakes 5:51]: https://youtu.be/EOcY3hPMQkk?t=351
```

- The label is the bibliography key plus a timestamp in the source.
- The link opens the video at that moment, so the claim can be checked in seconds.
- A rule backed by several sources lists each one, earliest timestamp per source. Rules with more sources are listed first within their section.
- Text marked *Note:* is an editorial caveat (usually accessibility) that the source did not state. It carries no citation.

## Adding a source

1. Get a timestamped transcript. For YouTube: `yt-dlp --skip-download --write-auto-subs --sub-langs en-orig --sub-format vtt <url>`. Confirm the transcript is in the original language; some transcript tools pick an auto-translated track instead.
2. Extract only advice the source states or explains. Do not turn something merely shown on screen into a rule.
3. Check every timestamp against the transcript before citing it.
4. Add a bibliography entry, keyed `author/short-title`, in alphabetical order.
5. Merge each new rule into the topic file it belongs to. If it repeats an existing rule, add the citation to that rule instead of duplicating it. If it conflicts with one, keep both and say when each applies.
6. Do not commit full transcripts. Cite and summarize only.
