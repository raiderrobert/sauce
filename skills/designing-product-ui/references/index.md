# References

Where the rules in this skill come from. Read this when adding a new source or checking where a rule came from.

| File | What it is |
|------|------------|
| `bibliography.md` | Every cited source, one entry per source, keyed by `author/short-title` |
| `links/<topic>.md` | The link definition for every citation label in `../<topic>.md` |

## Citation format

Each rule in a topic file ends with one or more citation labels. The labels are defined in `links/<topic>.md`, kept out of the topic file so that building with the skill doesn't load hundreds of URLs. Videos are cited by timestamp; essays, papers and talk or podcast transcripts by a ¶ anchor built from the first words of the supporting passage:

```markdown
<!-- in motion.md -->
- Make every transition interruptible. ([apple/designing-fluid-interfaces ¶we-want-to-allow], [freiberg/invisible-details ¶great-interactions-are-modeled])

<!-- in references/links/motion.md -->
[apple/designing-fluid-interfaces ¶we-want-to-allow]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=we%20want%20to%20allow%20for%20constant
[freiberg/invisible-details ¶great-interactions-are-modeled]: https://rauno.me/craft/interaction-design#:~:text=Great%20interactions%20are%20modeled%20after%20properties
```

- The label is the bibliography key plus a locator: a timestamp for video, ¶ and a slug of the passage's first words for web text, or ¶p and a page number for PDFs (linked with `#page=N`, since browsers can't highlight text inside a PDF).
- Video links open the video at that moment. Web text links use a `#:~:text=` fragment built from the passage's exact words, so supporting browsers scroll to and highlight it. Pages that render their text with JavaScript may not scroll.
- A rule backed by several sources lists each one, earliest timestamp per video. Within a section, base rules come first, then refinements and exceptions. Source counts don't set the order: game citations support the principle rather than the rule, and many citations come from one author.
- Text marked *Note:* is an editorial caveat (accessibility, a CSS or web translation) that the source did not state. It carries no citation.

## Adding a source

1. Get the source text.
   - For YouTube, get a timestamped transcript: `yt-dlp --skip-download --write-auto-subs --sub-langs en-orig,en --sub-format vtt <url>`, or another transcript tool set to prefer the original-language English track. Confirm it is in the original language; some tools pick an auto-translated track.
   - For essays, papers and transcripts, save the text locally.
2. Extract only advice the source states or explains. Do not turn something merely shown on screen into a rule. For game-design sources, write the product-UI rule as the rule and mark it **From games**. Record what the source said about games under "Source principles" in `links/<topic>.md`, keyed by the rule's first citation; the citation supports the principle.
3. Check every citation against the source before using it: the cited transcript line, or the quoted passage, must contain the advice. Then run `just validate-citations` from the repo root. It checks that every citation has a link definition, that video links match their timestamp and bibliography video, that web text links point at the bibliography URL with a `#:~:text=` fragment whose words match the slug, and that PDF links carry the cited page. It cannot check what the source says, so the manual check is still required.
4. Add a bibliography entry, keyed `author/short-title`, in alphabetical order, and add each citation's link definition to `links/<topic>.md`.
5. Merge each new rule into the topic file it belongs to. If it repeats an existing rule, add the citation to that rule instead of duplicating it. If it conflicts with one, keep both and say when each applies.
6. Do not commit full transcripts or articles. Cite and summarize only.

## Testing

Each scenario below was run once, so treat the results as indicative, not measured.

Tested November 2026 with Claude Opus 5.5:

- **Review mode.** Given a deliberately flawed dashboard, the review with the skill cited real rules for every finding. The review without it caught the obvious problems but missed smoothed chart lines, the missing time-frame control, nested corner radii, shadow values, module priority, and account placement. The Core Checklist in `SKILL.md` is built from those gaps.
- **Build mode.** A B2B dashboard was built from the same prompt with and without the skill. Both used straight line segments, grid lines and undo. Only the build with the skill:
  - deleted rows without a confirmation dialog;
  - kept shadow opacity at 3-12% (the other build used 25-45%);
  - added a 3/6/12-month range control, KPI sparklines and a prior-period comparison line;
  - showed each figure once, with no total-revenue card that repeated the chart.

  Straight chart lines are on the Core Checklist anyway, because the review without the skill missed them.
- **Interaction feel (build mode).** An issue-tracker list with a create flow and keyboard shortcuts was built from the same prompt with and without the skill. Both used undo instead of a delete confirmation, row flashes and toasts. Only the build with the skill:
  - opened panels and menus instantly when triggered by the keyboard, and animated them out of the element that opened them only for pointer input. The other build animated every open the same way, including a 1.18× overshoot "pop" on status changes;
  - gave a specific response to commands with nothing to do ("Nothing to undo", re-picking the current status). It also lit a faint edge cue when arrowing past the last row, which the skill now treats as optional (silence is fine at list boundaries);
  - blinked the chosen menu item before the menu faded, and flashed the done count when it rose;
  - listed features it would add but didn't build (bulk actions, a command palette), following the user-scope precedence rule.

  The first two gaps are on the Core Checklist.
- **Interaction feel (review mode).** Given the issue-tracker build made without the skill, a review with the skill read the event handlers and CSS. It reported 6 findings under **Feels unresponsive**: keyboard-opened menus that animate, a scale-and-overshoot "pop" on the most frequent keyboard action, and others. It also found 3 accessibility blockers and 4 polish issues. All 10 inline citation links matched their definitions, and the 4 findings based on game principles were marked as translations.
