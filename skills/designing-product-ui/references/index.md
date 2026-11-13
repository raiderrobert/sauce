# References

Where the rules in this skill come from. Read this when adding a new source or checking where a rule came from.

| File | What it is |
|------|------------|
| `bibliography.md` | Every cited source, one entry per source, keyed by `author/short-title` |

## Citation format

Each rule in a topic file ends with one or more reference-style citations, defined at the bottom of the same file. Videos are cited by timestamp; essays, papers and talk or podcast transcripts by a ¶ anchor built from the first words of the supporting passage:

```markdown
- Make every transition interruptible. ([apple/designing-fluid-interfaces ¶we-want-to-allow], [freiberg/invisible-details ¶great-interactions-are-modeled])

[jain/color-mistakes 5:51]: https://youtu.be/EOcY3hPMQkk?t=351
[freiberg/invisible-details ¶great-interactions-are-modeled]: https://rauno.me/craft/interaction-design#:~:text=Great%20interactions%20are%20modeled%20after%20properties
```

- The label is the bibliography key plus a locator: a timestamp for video, or ¶ and a slug for text.
- Video links open the video at that moment. Text links use a `#:~:text=` fragment, so supporting browsers scroll to and highlight the passage (browsers can't do this inside PDFs).
- A rule backed by several sources lists each one, earliest timestamp per video. Rules with more distinct sources are listed first within their section.
- Text marked *Note:* is an editorial caveat (accessibility, a CSS translation, or how a game principle applies to apps) that the source did not state. It carries no citation.

## Adding a source

1. Get the source text.
   - For YouTube, get a timestamped transcript: `yt-dlp --skip-download --write-auto-subs --sub-langs en-orig,en --sub-format vtt <url>`, or the `yt-summarizer` tool, which prefers original-language English tracks. Confirm it is in the original language; some tools pick an auto-translated track.
   - For essays, papers and transcripts, save the text locally.
2. Extract only advice the source states or explains. Do not turn something merely shown on screen into a rule. For game-design sources, state the rule about games and put the product-UI translation in a *Note:*.
3. Check every citation against the source before using it: the cited transcript line, or the quoted passage, must contain the advice. Then run `just validate-citations` from the repo root. It checks that every citation has a link definition, that video links match their timestamp and bibliography video, and that text links point at the bibliography URL with a `#:~:text=` fragment. It cannot check what the source says, so the manual check is still required.
4. Add a bibliography entry, keyed `author/short-title`, in alphabetical order.
5. Merge each new rule into the topic file it belongs to. If it repeats an existing rule, add the citation to that rule instead of duplicating it. If it conflicts with one, keep both and say when each applies.
6. Do not commit full transcripts or articles. Cite and summarize only.

## Testing

Tested November 2026 with Claude Opus 5.5:

- **Review mode.** Given a deliberately flawed dashboard, the review with the skill cited real rules for every finding. The review without it caught the obvious problems but missed smoothed chart lines, the missing time-frame control, nested corner radii, shadow values, module priority, and account placement. The Core Checklist in `SKILL.md` is built from those gaps.
- **Build mode.** A B2B dashboard was built from the same prompt with and without the skill. Both used straight line segments, grid lines and undo. Only the build with the skill:
  - deleted rows without a confirmation dialog;
  - kept shadow opacity at 3-12% (the other build used 25-45%);
  - added a 3/6/12-month range control, KPI sparklines and a prior-period comparison line;
  - showed each figure once, with no total-revenue card that repeated the chart.

  Straight chart lines are on the Core Checklist anyway, because the review without the skill missed them.
