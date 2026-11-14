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
- *(Editorial.)* marks a rule with no source, such as the Feedback budget in `interaction-feel.md`; it carries no citation.
- Text marked *Note:* is an editorial caveat (accessibility, a CSS or web translation) that the source did not state. It carries no citation.

## Adding a source

1. Get the source text.
   - For YouTube, get a timestamped transcript: `yt-dlp --skip-download --write-auto-subs --sub-langs en-orig,en --sub-format vtt <url>`, or another transcript tool set to prefer the original-language English track. Confirm it is in the original language; some tools pick an auto-translated track.
   - For essays, papers and transcripts, save the text locally.
2. Extract only advice the source states or explains. Do not turn something merely shown on screen into a rule. For game-design sources, write the product-UI rule as the rule and mark it **From games**. Record what the source said about games under "Source principles" in `links/<topic>.md`, keyed by the rule's first citation; the citation supports the principle.
3. Check every citation against the source before using it: the cited transcript line, or the quoted passage, must contain the advice. Then run `just validate-citations` from the repo root. It checks that every citation has a link definition, that video links match their timestamp and bibliography video, that web text links point at the bibliography URL with a `#:~:text=` fragment whose words match the slug, and that PDF links carry the cited page. It cannot check what the source says, so the manual check is still required.
4. Add a bibliography entry, keyed `author/short-title`, in alphabetical order, and add each citation's link definition to `links/<topic>.md`.
5. Merge each new rule into the topic file it belongs to. If it repeats an existing rule, add the citation to that rule instead of duplicating it. If it conflicts with one, keep both and say when each applies. Each recurring concept has one home file; elsewhere, mention it in one clause plus `see also <file>.md § <heading>` rather than restating it.
6. Do not commit full transcripts or articles. Cite and summarize only.

## Concept homes

Each recurring concept has one home file that holds its rule. Other files mention it in one clause plus `see also <file>.md § <heading>` and don't restate it. Check this table before adding a rule, and update it when a concept moves.

| Concept | Home |
|---|---|
| Feedback ladder, pro tools vs consumer apps | `interaction-feel.md` |
| No motion, and trigger wins (keyboard-initiated) | `motion.md` |
| Which surfaces animate (frequency lists) | `motion.md` |
| Menu and panel motion | `motion.md` |
| Overshoot and springs | `motion.md` |
| Durations and easing | `motion.md` |
| Press feedback: pressed state on touch-down | `interaction-feel.md` |
| Press scale and release motion | `motion.md` |
| Highlight or flash the changed element | `interaction-feel.md` |
| Acknowledging input (no-ops, disabled, unsupported commands) | `interaction-feel.md` |
| Wait and loading indicators: which indicator, and when (duration-keyed) | `interaction-feel.md` |
| Skeleton and indicator appearance (shimmer, layout match, status message lifecycle) | `components-and-states.md` |
| Optimistic updates | `interaction-feel.md` |
| Undo vs confirmation | `components-and-states.md` |
| Disabled state | `components-and-states.md` |
| Focus vs selected | `components-and-states.md` |
| Empty states | `components-and-states.md` |
| Tabs | `navigation-and-disclosure.md` |
| Search (placement, scope, prominence) | `navigation-and-disclosure.md` |
| Search-as-you-type behavior | `components-and-states.md` |
| Gamification, badges, leaderboards | `navigation-and-disclosure.md` |
| Keyboard shortcuts and command menu | `interaction-feel.md` |
| Haptics | `interaction-feel.md` |
| Sound | `interaction-feel.md` |
| Double-tap and double-click | `interaction-feel.md` |
| Auto-advance and queues | `interaction-feel.md` |
| Shadows | `depth-and-polish.md` |
| Dark-mode depth and surfaces | `color.md` |
| Icon color | `color.md` |
| Destructive actions color | `color.md` |
| Text tiers and secondary text | `typography.md` |
| Spacing grid | `layout-and-hierarchy.md` |
| Chart rules | `data-and-dashboards.md` |
| Pricing (cards, pages, tables) | `data-and-dashboards.md` |
| Use only supplied assets | `SKILL.md` (Core Checklist) |

## Testing

Each scenario was run once with Claude Opus 5.5 (November 2026), so treat the results as indicative, not measured. Each compares the same prompt with and without the skill.

| Scenario | Only the run with the skill |
|---|---|
| Review a deliberately flawed dashboard | Smoothed chart lines, missing time-frame control, nested radii, shadow values and module priority were flagged; every finding cited a real rule |
| Build a B2B analytics dashboard | No delete confirmation (undo instead), shadow opacity 3-12% rather than 25-45%, range control and KPI sparklines, each figure shown once |
| Build an issue tracker with a create flow and shortcuts | Keyboard-opened panels and menus appear without motion; pointer-opened ones grow from their trigger; commands with nothing to do get a specific response |
| Review that issue tracker for feel | Keyboard-opened menus that animate and a 1.18× overshoot pop on the most frequent action were flagged; From-games citations were marked as translations |
| "Make it feel more satisfying and premium" on a pro tool | Motion was gated on input source, the overshoot pop was removed, and a command menu, shortcut sheet and Done celebrations were proposed rather than built |

Neither run added confetti, sound or haptics in the restraint scenario. The Core Checklist favors the gaps above.
