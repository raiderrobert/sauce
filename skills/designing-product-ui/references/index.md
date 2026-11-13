# References

Where the rules in this skill come from. Read this when adding a new source or checking where a rule came from.

| File | What it is |
|------|------------|
| `bibliography.md` | Every cited source, one entry per source, keyed by `author/short-title` |

## Citation format

Each rule in a topic file ends with one or more citations:

```markdown
- Right-align numeric columns in tables. Digits align by place value. ([jain/dashboard-flaws 0:44](https://youtu.be/Ksx9C2-3yMo?t=44))
```

- The link text is the bibliography key plus a timestamp in the source.
- The link opens the video at that moment, so the claim can be checked in seconds.
- A rule backed by several sources lists each one, earliest timestamp per source. Rules with more sources are listed first within their section.

## Adding a source

1. Get a timestamped transcript (for YouTube, the `yt-summarizer` `get_transcript` tool with `timestamps: true`, or `yt-dlp --write-auto-subs --sub-langs en-orig`). Confirm the transcript is in the original language; YouTube sometimes serves an auto-translated track whose timing does not match the original audio.
2. Extract only advice the source states or explains. Do not turn something merely shown on screen into a rule.
3. Check every timestamp against the transcript before citing it.
4. Add a bibliography entry, keyed `author/short-title`, in alphabetical order.
5. Merge each new rule into the topic file it belongs to. If it repeats an existing rule, add the citation to that rule instead of duplicating it. If it conflicts with one, keep both and say when each applies.
6. Do not commit full transcripts. Cite and summarize only.
