# Typography

Font choice and pairing, text color tiers and weights, type scale, letter spacing and line height, and display text.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/video timestamp`) link to that moment; definitions are at the end of the file.

Contents: Font selection and pairing · Text color and weight · Type scale and sizes · Letter spacing and line height · Display text

## Font selection and pairing

- Use at most two fonts (three is pushing it); when pairing two, use display + sans-serif or sans-serif + serif (a handwritten font may stand in for the display font), and choose a serif for an older, more authoritative tone. Many industry-standard sites use a single font; add a second only when the brand needs personality. ([jain/every-ui-concept 3:23], [jain/landing-page-levels 1:00], [jain/typography 0:44], [jain/vibe-coding-cant-fix 2:35])
- Never set paragraph text in display or handwritten fonts; reserve them for large text. Their ornamentation becomes impractical at paragraph size. ([jain/typography 1:21])
- If a third font is needed, confine it to small details such as image captions, e.g. a monospace. ([jain/typography 4:12])

## Text color and weight

- Use two text tiers for most UI: primary text at 100% opacity and a secondary tier at about 55-70% opacity on white (source: 40-70% and 45-70%). Minor metadata, such as file details and labels, may take a third tier in gray rather than black. Two text colors are generally the maximum for clear hierarchy; metadata isn't important enough for full strength. *Note: Below about 55% opacity, black text on white fails 4.5:1 (WCAG AA). Every tier, metadata included, must pass, so set metadata apart by size, weight or placement rather than lower contrast.* ([jain/color-mistakes 4:21], [jain/typography 5:21], [jain/web-design-hacks 0:52])
- Use at most two font weights, separated by at least one weight on the font's scale; avoid ultra-bold and ultra-thin for regular text. Too many weights look messy. *Note: In CSS, e.g. 400 and 600, skipping 500.* ([jain/typography 5:13], [jain/web-design-hacks 0:40])
- Keep body paragraphs at full strength; don't give the smallest text the lowest contrast too. Small, low-contrast text is neither usable nor attractive. ([jain/typography 6:15])

## Type scale and sizes

- Avoid tiny text: keep body text at 14-16px, and metadata and dense tables no smaller than 12px. Tiny text is a visible flaw even on major sites. *Note: The pixel floors are editorial; the source only calls out tiny text. Native macOS apps use a 13pt default body.* ([jain/google-ai-redesign 7:01])
- **Marketing:** On a marketing header, set small nav text beneath giant display text, no smaller than 14px; the size contrast and the nav's position beneath make the display text feel more important. The size discrepancy is what makes such a header work. *Note: The 14px floor is editorial.* ([jain/website-layouts 3:03])
- Derive font sizes from a ratio instead of eyeballing: header = body × 1.62 for a simple pair; for a multi-level scale from a 16px base, use √1.62 ≈ 1.27 per step. 1.62 per step grows too fast (the fifth size hits ~110px). ([jain/typography 7:17])
- **App UI:** On dashboards and dense mobile screens use tighter steps, e.g. ∛1.62 ≈ 1.17 per step, and keep dashboard text at or below 24px. Dense screens fit more on screen, which shrinks the size range. ([jain/dashboard-ui 1:58], [jain/every-ui-concept 4:14], [jain/typography 9:15])
- Scale font sizes fluidly with a single CSS formula between a smallest and a largest viewport width (the source uses 320px and 1920px), capped with a minimum and maximum, instead of per-breakpoint sizes. Breakpoints get messy; the cap stops sizes running away on the smallest and largest screens. *Note: In CSS, use clamp() with a rem term plus a viewport term, e.g. clamp(2rem, 1rem + 4vw, 5rem); the rem term keeps browser text zoom working, which viewport-only sizes ignore.* ([jain/typography 9:46])
- **Marketing:** Use no more than six font sizes on a landing page or website. ([jain/every-ui-concept 4:09])

## Letter spacing and line height

- Tighten letter spacing on large headings (especially above 70-80px) by about -2% to -3%; leave body and small text at the default, since smaller text needs proportionately more space. Try this before rejecting a font that looks disjointed at large sizes. Default spacing looks loose at large sizes; tightening instantly looks professional. *Note: In CSS, -2% to -3% is letter-spacing: -0.02em to -0.03em.* ([jain/every-ui-concept 3:49], [jain/typography 2:20], [jain/ui-cheat-codes 0:32])
- Set heading line height explicitly at about 110-130% (110-120% for very large text) rather than leaving it automatic; keep paragraphs around 150% and raise line height for small text or long lines. Automatic line height drifts at extreme sizes; small text and long lines need more room to read. ([jain/every-ui-concept 3:49], [jain/typography 11:33])

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
