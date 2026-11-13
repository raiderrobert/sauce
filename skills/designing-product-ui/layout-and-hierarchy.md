# Layout and hierarchy

Visual hierarchy, spacing and grouping, alignment edges, grids and section layout for product UI and marketing pages.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/video timestamp`) link to that moment; definitions are at the end of the file.

Contents: Visual hierarchy · Spacing and grouping · Containers, edges and alignment · Grids and page structure · Layout variety and bento grids

## Visual hierarchy

- Build hierarchy with weight and color/opacity, not size alone (e.g. two lines both at 15px, the secondary at 55% opacity), and by changing an element's surroundings rather than piling more color or weight onto it. Make subheadings bold so they stand out from paragraphs; let large headings rely on size alone, with no added weight or opacity change. Make each step clearly distinct. Most people use size exclusively; emphasis is the difference between an element and its neighbors, and a large size already draws the most attention. *Note: For accessibility, check secondary text at 4.5:1. The sources' secondary range runs from 40% opacity (see the text-tier rule in typography.md); on white, black text below about 55% opacity fails.* ([jain/awful-to-amazing 2:56], [jain/every-ui-concept 1:16], [jain/learn-ui-in-10-minutes 1:52], [jain/typography 4:58], [jain/web-design-hacks 0:10], [jain/weirdly-perfect-ui 6:46])
- Rank every text element and card detail by importance, then style and order to match: the most important item most prominent and on top; secondary details such as dates smaller and below. Otherwise key information blends in with minor details. ([jain/every-ui-concept 1:07], [jain/typography 5:39], [jain/ui-cheat-codes 4:57])
- Don't let a headline dwarf its subline: keep the size difference large enough to build hierarchy, then check that the subline still reads as part of the same group; if it reads as fine print beside the headline, shrink the headline. Overdone size contrast lets the headline overpower the rest of the section. *Note: The sources give no ratio. Deliberate giant display text is an editorial exception (see also the display-text rule in typography.md).* ([jain/landing-page-levels 5:37], [jain/tesla-wannabe-redesign 4:32])
- Give each header or hero section one primary call to action; make any second action an outline or text button, not an equal filled one. Two equally styled buttons compete, and chaotic layouts lose the user's attention. ([jain/captivating-sections 0:12], [jain/web-design-hacks 3:55])
- Break walls of text into bullets, tables, icons and diagrams; e.g. show a change as 'old → new' with an arrow instead of 'From:' and 'To:' labels. Visual forms register instantly without reading, like a stop sign. ([jain/every-ui-concept 1:32], [jain/weirdly-perfect-ui 2:43])
- **App UI:** Design product screens to be scanned: when content is dense, differentiate it (grouping, weight, alignment, icons) before adding white space. Users arrive with one question and hunt for the answer; extra space alone just makes undifferentiated content longer. ([jain/weirdly-perfect-ui 2:21])

## Spacing and grouping

- Group by proximity with concrete gaps: e.g. hero subtext 8px below the heading, eyebrow 12px above it, buttons 32px below the subtext (at least twice the heading-to-subtext gap). Grouping is hierarchy; large headings already carry extra space below their baseline. ([jain/every-ui-concept 2:50], [jain/learn-ui-in-10-minutes 0:47], [jain/vibe-coding-cant-fix 5:41])
- Keep card and chip padding generous and identical across a view; show fewer items rather than cramming more in. Consistent margins keep modules aligned and content from feeling packed. ([jain/beginner-mistakes 2:38], [jain/dashboard-ui 6:36], [jain/finance-dashboard-redesign 6:26])
- Keep spacing on a 4px or 8px grid, and step larger dimensions exponentially rather than in small increments. The difference between 120 and 128 is imperceptible. *Note: Editorial: e.g. above about 100px, 64, 96, 128, 192, 256 stays on a 4px grid. The source's other option, rounding large sizes to the nearest 5 or 10, leaves the 4px grid.* ([jain/crucial-ui-elements 7:25], [jain/every-ui-concept 3:03], [jain/ui-cheat-codes 6:05])
- **Marketing:** Don't leave giant text floating in excess white space; pull related elements closer so the gaps between groups create the hierarchy. Too much space makes a page feel disjointed. ([jain/tesla-wannabe-redesign 0:49])

## Containers, edges and alignment

- Separate list items, columns and groups with spacing rather than containers and divider lines; add a container only when items must read as one unit, and use lines only when they are the intended visual style. Close things read as related and distant things as unrelated; extra separators add clutter. ([jain/every-ui-concept 0:09], [jain/slept-on-trends 4:01], [jain/ui-cheat-codes 5:26], [jain/web-design-hacks 1:19])
- Align text hard left and numbers, prices and numeric table columns hard right. Don't center body text, lists or data; center only the parts that aren't really meant to be read. Alignment lets users skip what they don't need, and digits line up by place value. ([jain/dashboard-flaws 0:44], [jain/weirdly-perfect-ui 0:17])
- **App UI:** In compact UIs (chat inputs, Kanban cards, sidebars, checklists), lock every element to at least two edges: the container's sides or lines formed by other elements. When an edge goes missing, manufacture one, e.g. a subline under a row with a large icon, or a divider that lines buttons up with the avatar. True of almost all well-built compact UIs; a shared column edge can do a card's job, and each row creates the edge the next one stacks onto. ([jain/weirdly-perfect-ui 0:27])
- **App UI:** Don't fill empty card space with more content; place content against the card's edges and the edges inner elements create (e.g. stacked below the avatar-and-name row), and limit compact cards to a few buttons aligned to those edges. Filler content and buttons that ignore the edges make a card feel off. ([jain/weirdly-perfect-ui 0:35])
- **App UI:** Stop row divider lines at the content edges; don't run them the full width of the screen. Full-width lines break the feeling of precision. ([jain/weirdly-perfect-ui 1:55])

## Grids and page structure

- Align structured, repeating content to a column grid (12 columns desktop, 8 tablet, 4 mobile): follow it strictly on dashboards; on custom landing pages treat it as a guide, letting elements break it slightly if balance holds and prioritizing white space. The grid gives responsive guidelines; dashboards use most of the screen, while landing pages benefit more from breathing room. ([jain/beginner-mistakes 2:03], [jain/dashboard-ui 2:10], [jain/every-ui-concept 2:05])
- Put important content above the fold, not empty space: on a 1920px-wide desktop only about 1000px of height is visible, and on a typical laptop only about 750-800px. Anything below the fold requires a scroll. For rendering at desktop and mobile widths, see also process.md. *Note: The laptop figure is editorial.* ([jain/finance-dashboard-redesign 0:41], [jain/skincare-redesign 3:22])
- **Marketing:** On marketing pages, consider framing content with visible vertical grid lines that run the length of the page instead of floating cards. Builds structure and stays responsive on larger screens. ([jain/landing-page-levels 5:05], [jain/modern-layouts 6:03])

## Layout variety and bento grids

- **Marketing:** Vary section layouts down a page: mix full-screen sections, cards and multi-column sections; don't alternate text-left/image-right or reuse one layout for several sections. Template-like repetition makes the page feel undesigned and boring. ([jain/awful-to-amazing 0:54], [jain/google-ai-redesign 7:04], [jain/landing-page-levels 0:35], [jain/tesla-wannabe-redesign 4:48])
- **Marketing:** Use a simple bento grid instead of a plain row of cards when there are many features and enough text and image content to fill it. Bento keeps everything visible without scrolling past it, but needs a fair amount of content; complex bentos are hard to build. ([jain/landing-page-levels 5:15], [jain/learn-ui-in-10-minutes 4:24], [jain/modern-layouts 5:44], [jain/website-layouts 9:06])
- **Marketing:** Break the box selectively: let elements overlap section boundaries or run off the page edge (e.g. a sliding card carousel), starting with small moves like staggering cards up and down. More interesting than strict rows and columns, but easy to take too far and look wonky. ([jain/awful-to-amazing 1:22], [jain/google-ai-redesign 5:04], [jain/skincare-redesign 0:31])
- **Marketing:** Plan bento content first and size the boxes to it, e.g. vertical images need vertical boxes. Content planning often changes box sizes and the layout. ([jain/tesla-wannabe-redesign 4:57], [jain/website-layouts 8:34])

[jain/awful-to-amazing 0:54]: https://youtu.be/ulSOdTgoGeY?t=54
[jain/awful-to-amazing 1:22]: https://youtu.be/ulSOdTgoGeY?t=82
[jain/awful-to-amazing 2:56]: https://youtu.be/ulSOdTgoGeY?t=176
[jain/beginner-mistakes 2:03]: https://youtu.be/AH_ugxmLeUM?t=123
[jain/beginner-mistakes 2:38]: https://youtu.be/AH_ugxmLeUM?t=158
[jain/captivating-sections 0:12]: https://youtu.be/tNMAFjzapOk?t=12
[jain/crucial-ui-elements 7:25]: https://youtu.be/gKM6b2EnW1k?t=445
[jain/dashboard-flaws 0:44]: https://youtu.be/Ksx9C2-3yMo?t=44
[jain/dashboard-ui 2:10]: https://youtu.be/B7k5rOgmOGY?t=130
[jain/dashboard-ui 6:36]: https://youtu.be/B7k5rOgmOGY?t=396
[jain/every-ui-concept 0:09]: https://youtu.be/EcbgbKtOELY?t=9
[jain/every-ui-concept 1:07]: https://youtu.be/EcbgbKtOELY?t=67
[jain/every-ui-concept 1:16]: https://youtu.be/EcbgbKtOELY?t=76
[jain/every-ui-concept 1:32]: https://youtu.be/EcbgbKtOELY?t=92
[jain/every-ui-concept 2:05]: https://youtu.be/EcbgbKtOELY?t=125
[jain/every-ui-concept 2:50]: https://youtu.be/EcbgbKtOELY?t=170
[jain/every-ui-concept 3:03]: https://youtu.be/EcbgbKtOELY?t=183
[jain/finance-dashboard-redesign 0:41]: https://youtu.be/Yr2uIcFZDDQ?t=41
[jain/finance-dashboard-redesign 6:26]: https://youtu.be/Yr2uIcFZDDQ?t=386
[jain/google-ai-redesign 5:04]: https://youtu.be/pGYLZyBE32o?t=304
[jain/google-ai-redesign 7:04]: https://youtu.be/pGYLZyBE32o?t=424
[jain/landing-page-levels 0:35]: https://youtu.be/eMMiLeo_UGI?t=35
[jain/landing-page-levels 5:05]: https://youtu.be/eMMiLeo_UGI?t=305
[jain/landing-page-levels 5:15]: https://youtu.be/eMMiLeo_UGI?t=315
[jain/landing-page-levels 5:37]: https://youtu.be/eMMiLeo_UGI?t=337
[jain/learn-ui-in-10-minutes 0:47]: https://youtu.be/9WVt1CelBfg?t=47
[jain/learn-ui-in-10-minutes 1:52]: https://youtu.be/9WVt1CelBfg?t=112
[jain/learn-ui-in-10-minutes 4:24]: https://youtu.be/9WVt1CelBfg?t=264
[jain/modern-layouts 5:44]: https://youtu.be/VPeTgU7la34?t=344
[jain/modern-layouts 6:03]: https://youtu.be/VPeTgU7la34?t=363
[jain/skincare-redesign 0:31]: https://youtu.be/BvbFPzLjWcU?t=31
[jain/skincare-redesign 3:22]: https://youtu.be/BvbFPzLjWcU?t=202
[jain/slept-on-trends 4:01]: https://youtu.be/EHwZzWd-OnQ?t=241
[jain/tesla-wannabe-redesign 0:49]: https://youtu.be/V3Omp1hm0Sg?t=49
[jain/tesla-wannabe-redesign 4:32]: https://youtu.be/V3Omp1hm0Sg?t=272
[jain/tesla-wannabe-redesign 4:48]: https://youtu.be/V3Omp1hm0Sg?t=288
[jain/tesla-wannabe-redesign 4:57]: https://youtu.be/V3Omp1hm0Sg?t=297
[jain/typography 4:58]: https://youtu.be/7sUUzOCv47U?t=298
[jain/typography 5:39]: https://youtu.be/7sUUzOCv47U?t=339
[jain/ui-cheat-codes 4:57]: https://youtu.be/c1TvOcKdBVE?t=297
[jain/ui-cheat-codes 5:26]: https://youtu.be/c1TvOcKdBVE?t=326
[jain/ui-cheat-codes 6:05]: https://youtu.be/c1TvOcKdBVE?t=365
[jain/vibe-coding-cant-fix 5:41]: https://youtu.be/RCneB_MQ7qs?t=341
[jain/web-design-hacks 0:10]: https://youtu.be/Lp6ey4AyDzA?t=10
[jain/web-design-hacks 1:19]: https://youtu.be/Lp6ey4AyDzA?t=79
[jain/web-design-hacks 3:55]: https://youtu.be/Lp6ey4AyDzA?t=235
[jain/website-layouts 8:34]: https://youtu.be/P2ksReDwWkE?t=514
[jain/website-layouts 9:06]: https://youtu.be/P2ksReDwWkE?t=546
[jain/weirdly-perfect-ui 0:17]: https://youtu.be/neE6wOuBIP8?t=17
[jain/weirdly-perfect-ui 0:27]: https://youtu.be/neE6wOuBIP8?t=27
[jain/weirdly-perfect-ui 0:35]: https://youtu.be/neE6wOuBIP8?t=35
[jain/weirdly-perfect-ui 1:55]: https://youtu.be/neE6wOuBIP8?t=115
[jain/weirdly-perfect-ui 2:21]: https://youtu.be/neE6wOuBIP8?t=141
[jain/weirdly-perfect-ui 2:43]: https://youtu.be/neE6wOuBIP8?t=163
[jain/weirdly-perfect-ui 6:46]: https://youtu.be/neE6wOuBIP8?t=406
