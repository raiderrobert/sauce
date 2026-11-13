# Typography

Font choice and pairing, text color tiers and weights, type scale, letter spacing and line height, and display text.

Rules within a section are ordered by how many sources back them. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. Each citation (`author/video timestamp`) links to that moment in the source; full entries are in `references/bibliography.md`.

Contents: Font selection and pairing · Text color and weight · Type scale and sizes · Letter spacing and line height · Display text

## Font selection and pairing

- Default to one sans-serif font for product UI, used consistently; use two fonts at most (three is pushing it) and don't spend long choosing. Many industry-standard sites use a single font; sans-serifs read clean and modern. ([jain/every-ui-concept 3:23], [jain/landing-page-levels 1:00], [jain/typography 0:59])
- When pairing two fonts, use display + sans-serif or sans-serif + serif (a handwritten font may stand in for the display font); choose a serif for an older, more authoritative tone. Add a second font only when the brand needs personality. ([jain/typography 0:44], [jain/vibe-coding-cant-fix 2:35])
- Never set paragraph text in display or handwritten fonts; reserve them for large text. Their ornamentation becomes impractical at paragraph size. ([jain/typography 1:21])
- If a third font is needed, confine it to small details such as image captions, e.g. a monospace. ([jain/typography 4:12])

## Text color and weight

- Use two text tiers for most UI: primary text at full strength and one secondary tier at ~55-70% opacity on light backgrounds, verified at 4.5:1. Add a third, dimmer tier (dark gray, not black) only for metadata such as file details and labels. More tiers blur the hierarchy; the source range starts at 40%, which fails WCAG AA on white. ([jain/color-mistakes 4:21], [jain/typography 5:21], [jain/web-design-hacks 0:52])
- Use at most two font weights, at least one weight step apart; avoid ultra-bold and ultra-thin for regular text. Too many weights look messy. ([jain/typography 5:13], [jain/web-design-hacks 0:40])
- Keep body paragraphs at full strength; don't give the smallest text the lowest contrast too. Small, low-contrast text is neither usable nor attractive. ([jain/typography 6:15])
- Let size alone carry large headings (no extra bold or opacity change); bold subheadings so they stand out from paragraphs. Large size already draws the most attention; subheadings must be scannable. ([jain/typography 6:24])
- **App UI:** In app menus, separate keyboard shortcuts from item labels with alignment and type, e.g. right-aligned in secondary text. The structure tells users what is clickable and what is a hint. ([jain/captivating-sections 4:22])

## Type scale and sizes

- **App UI:** On dashboards and dense mobile screens use tighter steps, e.g. ∛1.62 ≈ 1.17 per step, and keep dashboard text at or below 24px. Dense screens fit more on screen, which shrinks the size range. ([jain/dashboard-ui 1:58], [jain/every-ui-concept 4:14], [jain/typography 9:15])
- Avoid tiny text. The only exception is a marketing header that sets nav links small, no smaller than ~14px, beneath giant display text to make it feel more important. The size gap emphasizes the display text; below ~14px nav stops being readable. ([jain/google-ai-redesign 7:01], [jain/website-layouts 3:03])
- Derive font sizes from a ratio instead of eyeballing: header = body × 1.62 for a simple pair; for a multi-level scale from a 16px base, use √1.62 ≈ 1.27 per step. 1.62 per step grows too fast (the fifth size hits ~110px). ([jain/typography 7:17])
- Scale font sizes fluidly with CSS clamp() between ~320px and 1920px viewports instead of per-breakpoint sizes. Breakpoints get messy; the clamp() minimum and maximum stop sizes running away on the smallest and largest screens. ([jain/typography 9:46])
- **Marketing:** Use no more than six font sizes on a landing page or website. ([jain/every-ui-concept 4:09])

## Letter spacing and line height

- Tighten letter spacing on large headings (especially above 70-80px) by about -0.02em to -0.03em; give smaller text proportionally more. Try this before rejecting a font that looks disjointed at large sizes. Default spacing looks loose at large sizes; tightening instantly looks professional. ([jain/every-ui-concept 3:49], [jain/typography 2:20], [jain/ui-cheat-codes 0:32])
- Set paragraph line height around 1.5 and headings around 1.1-1.3 (1.1-1.2 for very large ones); raise it for small text or long lines and set it explicitly for very large text. Easier to read; automatic line height drifts at extreme sizes. ([jain/every-ui-concept 3:49], [jain/typography 11:33])

## Display text

- **Marketing:** Use a display font at very large sizes as a visual, storytelling element, like an image (e.g. Unbounded, Cabinet Grotesk or Oswald at ~290px), but only once or twice per page. A good display font can carry as much weight as an image; overuse dilutes it. ([jain/slept-on-trends 3:25], [jain/web-design-hacks 4:43], [jain/website-layouts 3:39])
- **Marketing:** In text-only hero layouts, give the body text three or more lines. Shorter text leaves too much empty space. ([jain/website-layouts 11:29])

[jain/captivating-sections 4:22]: https://youtu.be/tNMAFjzapOk?t=262
[jain/color-mistakes 4:21]: https://youtu.be/EOcY3hPMQkk?t=261
[jain/dashboard-ui 1:58]: https://youtu.be/B7k5rOgmOGY?t=118
[jain/every-ui-concept 3:23]: https://youtu.be/EcbgbKtOELY?t=203
[jain/every-ui-concept 3:49]: https://youtu.be/EcbgbKtOELY?t=229
[jain/every-ui-concept 4:09]: https://youtu.be/EcbgbKtOELY?t=249
[jain/every-ui-concept 4:14]: https://youtu.be/EcbgbKtOELY?t=254
[jain/google-ai-redesign 7:01]: https://youtu.be/pGYLZyBE32o?t=421
[jain/landing-page-levels 1:00]: https://youtu.be/eMMiLeo_UGI?t=60
[jain/slept-on-trends 3:25]: https://youtu.be/EHwZzWd-OnQ?t=205
[jain/typography 0:44]: https://youtu.be/7sUUzOCv47U?t=44
[jain/typography 0:59]: https://youtu.be/7sUUzOCv47U?t=59
[jain/typography 11:33]: https://youtu.be/7sUUzOCv47U?t=693
[jain/typography 1:21]: https://youtu.be/7sUUzOCv47U?t=81
[jain/typography 2:20]: https://youtu.be/7sUUzOCv47U?t=140
[jain/typography 4:12]: https://youtu.be/7sUUzOCv47U?t=252
[jain/typography 5:13]: https://youtu.be/7sUUzOCv47U?t=313
[jain/typography 5:21]: https://youtu.be/7sUUzOCv47U?t=321
[jain/typography 6:15]: https://youtu.be/7sUUzOCv47U?t=375
[jain/typography 6:24]: https://youtu.be/7sUUzOCv47U?t=384
[jain/typography 7:17]: https://youtu.be/7sUUzOCv47U?t=437
[jain/typography 9:15]: https://youtu.be/7sUUzOCv47U?t=555
[jain/typography 9:46]: https://youtu.be/7sUUzOCv47U?t=586
[jain/ui-cheat-codes 0:32]: https://youtu.be/c1TvOcKdBVE?t=32
[jain/vibe-coding-cant-fix 2:35]: https://youtu.be/RCneB_MQ7qs?t=155
[jain/web-design-hacks 0:40]: https://youtu.be/Lp6ey4AyDzA?t=40
[jain/web-design-hacks 0:52]: https://youtu.be/Lp6ey4AyDzA?t=52
[jain/web-design-hacks 4:43]: https://youtu.be/Lp6ey4AyDzA?t=283
[jain/website-layouts 11:29]: https://youtu.be/P2ksReDwWkE?t=689
[jain/website-layouts 3:03]: https://youtu.be/P2ksReDwWkE?t=183
[jain/website-layouts 3:39]: https://youtu.be/P2ksReDwWkE?t=219
