# Typography

Font choice and pairing, text color tiers and weights, type scale, letter spacing and line height, and display text.

Practitioner heuristics, not standards: accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and the product's own design system take precedence. Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. *Note:* text is an uncited editorial caveat. Each citation (`author/video timestamp`) links to that moment in the source; the link definitions at the end of the file can be skipped, and full entries are in `references/bibliography.md`.

Contents: Font selection and pairing · Text color and weight · Type scale and sizes · Letter spacing and line height · Display text

## Font selection and pairing

- Default to one sans-serif font for product UI, used consistently; use two fonts at most (three is pushing it) and don't spend long choosing. Many industry-standard sites use a single font; sans-serifs read clean and modern. ([jain/every-ui-concept 3:23], [jain/landing-page-levels 1:00], [jain/typography 0:59])
- When pairing two fonts, use display + sans-serif or sans-serif + serif (a handwritten font may stand in for the display font); choose a serif for an older, more authoritative tone. Add a second font only when the brand needs personality. ([jain/typography 0:44], [jain/vibe-coding-cant-fix 2:35])
- Never set paragraph text in display or handwritten fonts; reserve them for large text. Their ornamentation becomes impractical at paragraph size. ([jain/typography 1:21])
- If a third font is needed, confine it to small details such as image captions, e.g. a monospace. ([jain/typography 4:12])

## Text color and weight

- Use two text tiers for most UI: primary text at full strength and one secondary tier at ~55-70% opacity on light backgrounds, verified at 4.5:1. Add a third, dimmer tier (dark gray, not black) only for metadata such as file details and labels. More tiers blur the hierarchy. *Note: The source range starts at 40%, which fails WCAG AA on white; 55-70% is an editorial adjustment.* ([jain/color-mistakes 4:21], [jain/typography 5:21], [jain/web-design-hacks 0:52])
- Use at most two font weights, at least two steps apart on the weight scale (e.g. 400 and 600, skipping 500); avoid ultra-bold and ultra-thin for regular text. Too many weights look messy. ([jain/typography 5:13], [jain/web-design-hacks 0:40])
- Keep body paragraphs at full strength; don't give the smallest text the lowest contrast too. Small, low-contrast text is neither usable nor attractive. ([jain/typography 6:15])

## Type scale and sizes

- Keep text above size floors: body text 14-16px, metadata and dense tables no smaller than 12px, marketing nav links no smaller than 14px; native macOS apps may use the platform's 13px default body. A marketing header may set nav links small (at the 14px floor) beneath giant display text to make it feel more important. The size gap emphasizes the display text; below ~14px nav stops being readable. *Note: The body and metadata floors are editorial; the source gives only the ~14px nav floor.* ([jain/google-ai-redesign 7:01], [jain/website-layouts 3:03])
- Derive font sizes from a ratio instead of eyeballing: header = body × 1.62 for a simple pair; for a multi-level scale from a 16px base, use √1.62 ≈ 1.27 per step. 1.62 per step grows too fast (the fifth size hits ~110px). ([jain/typography 7:17])
- **App UI:** On dashboards and dense mobile screens use tighter steps, e.g. ∛1.62 ≈ 1.17 per step, and keep dashboard text at or below 24px. Dense screens fit more on screen, which shrinks the size range. ([jain/dashboard-ui 1:58], [jain/every-ui-concept 4:14], [jain/typography 9:15])
- Scale font sizes fluidly with CSS clamp() combining a rem term and a viewport term, e.g. clamp(2rem, 1rem + 4vw, 5rem), tuned for ~320px to 1920px viewports, instead of per-breakpoint sizes. Breakpoints get messy; the clamp() minimum and maximum stop sizes running away on the smallest and largest screens. *Note: The rem term keeps browser text zoom working; viewport-only sizes ignore it.* ([jain/typography 9:46])
- **Marketing:** Use no more than six font sizes on a landing page or website. ([jain/every-ui-concept 4:09])

## Letter spacing and line height

- Tighten letter spacing on large headings (especially above 70-80px) to about -0.02em to -0.03em, one setting for the heading rather than a per-step change; leave body and small text at default or slightly positive spacing, since smaller text needs relatively more space. Try this before rejecting a font that looks disjointed at large sizes. Default spacing looks loose at large sizes; tightening instantly looks professional. ([jain/every-ui-concept 3:49], [jain/typography 2:20], [jain/ui-cheat-codes 0:32])
- Set heading line height explicitly around 1.1-1.3 (1.1-1.2 for very large text) rather than leaving it automatic; raise paragraph line height for small text or long lines. Automatic line height drifts at extreme sizes; small text and long lines need more room to read. ([jain/every-ui-concept 3:49], [jain/typography 11:33])

## Display text

- **Marketing:** Use a display font at very large sizes as a visual, storytelling element, like an image (e.g. Unbounded, Cabinet Grotesk or Oswald at ~290px), but only once or twice per page. A good display font can carry as much weight as an image; overuse dilutes it. ([jain/slept-on-trends 3:25], [jain/web-design-hacks 4:43], [jain/website-layouts 3:39])

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
[jain/typography 7:17]: https://youtu.be/7sUUzOCv47U?t=437
[jain/typography 9:15]: https://youtu.be/7sUUzOCv47U?t=555
[jain/typography 9:46]: https://youtu.be/7sUUzOCv47U?t=586
[jain/ui-cheat-codes 0:32]: https://youtu.be/c1TvOcKdBVE?t=32
[jain/vibe-coding-cant-fix 2:35]: https://youtu.be/RCneB_MQ7qs?t=155
[jain/web-design-hacks 0:40]: https://youtu.be/Lp6ey4AyDzA?t=40
[jain/web-design-hacks 0:52]: https://youtu.be/Lp6ey4AyDzA?t=52
[jain/web-design-hacks 4:43]: https://youtu.be/Lp6ey4AyDzA?t=283
[jain/website-layouts 3:03]: https://youtu.be/P2ksReDwWkE?t=183
[jain/website-layouts 3:39]: https://youtu.be/P2ksReDwWkE?t=219
