# Typography

Font selection and pairing, text hierarchy via weight and color, type scales, letter spacing and line height, and display text for product UI and landing pages.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Font selection and pairing

- Default to a single sans-serif font for product UI, used consistently across the page; don't spend long choosing it. You'll almost never need more than one font; sans-serifs are cleaner and more modern. ([jain/every-ui-concept 3:23](https://youtu.be/EcbgbKtOELY?t=203), [jain/landing-page-levels 1:00](https://youtu.be/eMMiLeo_UGI?t=60), [jain/typography 0:59](https://youtu.be/7sUUzOCv47U?t=59))
- When pairing two fonts, use display + sans-serif or sans-serif + serif; a handwritten font may replace the display font. One font is the default; add a second (e.g. a serif) when the brand needs personality, like a printed menu. ([jain/typography 3:41](https://youtu.be/7sUUzOCv47U?t=221), [jain/vibe-coding-cant-fix 2:35](https://youtu.be/RCneB_MQ7qs?t=155))
- Never use display or handwritten fonts for small paragraph text; reserve display fonts for giant text elements. Their ornamentation and detail become impractical when scaled down to paragraph size. ([jain/typography 1:21](https://youtu.be/7sUUzOCv47U?t=81))
- Use one or two fonts total; three is pushing it, four is asking for problems. Many industry-standard sites use just one font. ([jain/typography 3:12](https://youtu.be/7sUUzOCv47U?t=192))
- If adding a third font, reserve it for small details like image captions, e.g. a monospace like Courier Prime. ([jain/typography 4:12](https://youtu.be/7sUUzOCv47U?t=252))
- Use a serif when you want an older, more authoritative tone. Serifs date back centuries and read well at small sizes, hence books and magazines. ([jain/typography 0:44](https://youtu.be/7sUUzOCv47U?t=44))
- Reuse the brand font from the logo and packaging in the UI. Keeps the brand consistent. ([jain/skincare-redesign 5:00](https://youtu.be/BvbFPzLjWcU?t=300))
- Keep one consistent type and layout style across a page; don't mix giant-text sections with small-spec-sheet sections. Mixing splits the site into two completely different styles. ([jain/tesla-wannabe-redesign 1:01](https://youtu.be/V3Omp1hm0Sg?t=61))
- Check font licenses before reusing fonts found on other sites. Otherwise you're actually stealing. ([jain/slept-on-trends 3:06](https://youtu.be/EHwZzWd-OnQ?t=186))
- Avoid Comic Sans. All designers hate it. ([jain/typography 2:50](https://youtu.be/7sUUzOCv47U?t=170))

## Hierarchy through weight and color

- Use at most two text colors: primary black/white at 100% and a secondary version at roughly 40-70% opacity. ([jain/typography 5:21](https://youtu.be/7sUUzOCv47U?t=321), [jain/web-design-hacks 0:52](https://youtu.be/Lp6ey4AyDzA?t=52))
- Use at most two font weights, at least one weight step apart; avoid ultra-bold and ultra-thin for regular text. Too many weights isn't visually appealing. ([jain/typography 5:13](https://youtu.be/7sUUzOCv47U?t=313), [jain/web-design-hacks 0:40](https://youtu.be/Lp6ey4AyDzA?t=40))
- Create text hierarchy with font weight and color, not size alone. Most people rely only on size; weight and color add differentiation. ([jain/web-design-hacks 0:10](https://youtu.be/Lp6ey4AyDzA?t=10))
- Don't give the smallest text the lowest contrast too; keep body paragraphs at 100% opacity. Smallest text with least contrast is neither usable nor aesthetic. ([jain/typography 6:15](https://youtu.be/7sUUzOCv47U?t=375))
- Set heading text around 11% white, body text 15-20% white, and subtext 30-40% white. Reserve the darkest colors for important headings; most text sits at 15-20%. ([jain/60-30-10-rule 1:57](https://youtu.be/66oOi9OLMCw?t=117))
- In app menus, use alignment and typography differences to separate clickable items from keyboard shortcuts. The structure tells users everything they need to know. ([jain/captivating-sections 4:22](https://youtu.be/tNMAFjzapOk?t=262))

## Type scale and sizes

- On dashboards and mobile, use smaller sizes with tighter steps, e.g. the cube root of 1.62 as the scale multiplier. Dashboards fit many more things on screen; useful with many font styles or less room. ([jain/dashboard-ui 1:58](https://youtu.be/B7k5rOgmOGY?t=118), [jain/typography 9:15](https://youtu.be/7sUUzOCv47U?t=555))
- Build a multi-level type scale from a 16px base using √1.62 ≈ 1.27 as the multiplier, not 1.62. 1.62 per step grows too fast; the largest of five sizes hits 110px. ([jain/typography 8:42](https://youtu.be/7sUUzOCv47U?t=522))
- For a simple header + body pair, set header size to body size × 1.62 (golden ratio). ([jain/typography 8:27](https://youtu.be/7sUUzOCv47U?t=507))
- Use no more than six font sizes on landing pages and websites. ([jain/every-ui-concept 4:09](https://youtu.be/EcbgbKtOELY?t=249))
- Use about a 17px base font on iOS/mobile versus 13px on macOS desktop. Things actually get larger on smaller screens. ([jain/mobile-app-ui 1:52](https://youtu.be/Gfsd8NNuD9g?t=112))
- Scale font sizes fluidly with one CSS formula between 320px and 1920px viewports, capped with min()/max(), instead of per-breakpoint sizes. Breakpoints get messy; without caps the formula keeps scaling past the smallest and largest screens. ([jain/typography 9:46](https://youtu.be/7sUUzOCv47U?t=586))
- Avoid tiny text on landing pages. ([jain/google-ai-redesign 7:01](https://youtu.be/pGYLZyBE32o?t=421))

## Letter spacing and line height

- Tighten letter spacing on large headings (especially above 70-80px) by about -2% to -3%; give smaller text proportionately more spacing. Default kerning looks disjointed at large sizes; tightening instantly looks professional. ([jain/every-ui-concept 3:49](https://youtu.be/EcbgbKtOELY?t=229), [jain/typography 2:20](https://youtu.be/7sUUzOCv47U?t=140), [jain/ui-cheat-codes 0:32](https://youtu.be/c1TvOcKdBVE?t=32))
- Set paragraph line height around 150% and heading line height around 110-130% (110-120% for large headings). ([jain/every-ui-concept 3:49](https://youtu.be/EcbgbKtOELY?t=229), [jain/typography 11:53](https://youtu.be/7sUUzOCv47U?t=713))
- Increase line height for smaller text or longer lines, reduce it for larger text, and set it explicitly rather than auto for very large text. Easier to read; auto line height falls off at extremely large sizes. ([jain/typography 11:33](https://youtu.be/7sUUzOCv47U?t=693))
- Before rejecting a font that looks disjointed when scaled up, try tightening its letter spacing. The problem is usually kerning at large sizes, not the font. ([jain/ui-cheat-codes 0:51](https://youtu.be/c1TvOcKdBVE?t=51))

## Display text and hero copy

- Use a display font at very large sizes as a visual, storytelling element, like an image (e.g. Unbounded, Cabinet Grotesk, Oswald at 290px). A good display font can be as visually important as an image; text needn't be boring paragraphs. ([jain/slept-on-trends 3:25](https://youtu.be/EHwZzWd-OnQ?t=205), [jain/web-design-hacks 4:43](https://youtu.be/Lp6ey4AyDzA?t=283), [jain/website-layouts 3:39](https://youtu.be/P2ksReDwWkE?t=219))
- Use giant display text only once or twice per page. Don't overdo it. ([jain/web-design-hacks 5:23](https://youtu.be/Lp6ey4AyDzA?t=323))
- Give hero body text three or more lines in text-only layouts. Shorter text leaves too much white space. ([jain/website-layouts 11:29](https://youtu.be/P2ksReDwWkE?t=689))
- Use slightly looser spacing and deliberate text widths so text blocks form leading lines into the content. Balances the typography and guides the eye. ([jain/landing-page-levels 7:46](https://youtu.be/eMMiLeo_UGI?t=466))
