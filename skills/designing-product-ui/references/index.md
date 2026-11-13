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
3. Check every timestamp against the transcript before citing it: the cited line must contain the advice. Then run `just validate-citations` from the repo root; it checks that every citation has a link definition, that the link's `t=` matches the timestamp, and that the video ID matches the bibliography entry. It cannot check what the video says, so step 3's transcript check is still required.
4. Add a bibliography entry, keyed `author/short-title`, in alphabetical order.
5. Merge each new rule into the topic file it belongs to. If it repeats an existing rule, add the citation to that rule instead of duplicating it. If it conflicts with one, keep both and say when each applies.
6. Do not commit full transcripts. Cite and summarize only.

## Testing

Tested November 2026 with Claude Opus 5.5:

- **Review mode.** Given a deliberately flawed dashboard, the review with the skill cited real rules for every finding. The review without it caught the obvious problems but missed smoothed chart lines, the missing time-frame control, nested corner radii, shadow values, module priority, and account placement. The Core Checklist in `SKILL.md` is built from those gaps.
- **Build mode.** A B2B dashboard was built from the same prompt with and without the skill. Both used straight line segments, grid lines and undo. Only the build with the skill:
  - deleted rows without a confirmation dialog;
  - kept shadow opacity at 3-12% (the other build used 25-45%);
  - added a 3/6/12-month range control, KPI sparklines and a prior-period comparison line;
  - showed each figure once, with no total-revenue card that repeated the chart.

  Straight chart lines are on the Core Checklist anyway, because the review without the skill missed them.
