# Layout and hierarchy

Visual hierarchy, spacing and grouping, containers, alignment edges, grids, view choice and content focus for product UI and marketing pages.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a game-design principle whose *Note* translates it to product UI, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Visual hierarchy · Spacing and grouping · Containers and dividers · Alignment and edges · Grids and page structure · Layout variety and bento grids · Views, grouping and placement · Focus and simplicity

## Visual hierarchy

- Build hierarchy with weight and color/opacity, not size alone (e.g. two lines both at 15px, the secondary at 55% opacity), and by changing an element's surroundings rather than piling more color or weight onto it. Make subheadings bold so they stand out from paragraphs; let large headings rely on size alone, with no added weight or opacity change. Make each step clearly distinct. Most people use size exclusively; emphasis is the difference between an element and its neighbors, and a large size already draws the most attention. *Note: For accessibility, check secondary text at 4.5:1. The sources' secondary range runs from 40% opacity (see the text-tier rule in typography.md); on white, black text below about 55% opacity fails.* ([jain/awful-to-amazing 2:56], [jain/every-ui-concept 1:16], [jain/learn-ui-in-10-minutes 1:52], [jain/typography 4:58], [jain/web-design-hacks 0:10], [jain/weirdly-perfect-ui 6:46], [kennedy/advanced-design-tips 6:17], [nngroup/principles-stripe 1:37], [schoger/bad-about 5:33], [schoger/transistor 7:42], [schoger/wss 3:53])
- Rank every text element and card detail by importance to the user's core task, then style and order to match: the most important item most prominent and on top; secondary details such as dates smaller and below, e.g. author and date side by side, separated by a dot. Otherwise key information blends in with minor details, and titles or edge-case alerts steal focus from the task. ([apple/design-foundations 14:14], [apple/principles-of-great-design 12:12], [jain/every-ui-concept 1:07], [jain/typography 5:39], [jain/ui-cheat-codes 4:57], [kennedy/timezones-redesign 1:00], [nngroup/principles-stripe 1:02], [nngroup/visual-design-principles 0:42], [schoger/bad-about 1:33], [schoger/resolute 3:50])
- Give each page, header or hero section one primary call to action; make any other action an outline or text button, and tone down buttons that still compete, even in another color, e.g. make a nav button smaller than the hero button. Two equally styled buttons compete, and chaotic layouts lose the user's attention; one primary action clarifies the page's purpose. *Note: In the source, the nav button was set to 28px tall with Tailwind's text-sm (14px) text.* ([jain/captivating-sections 0:12], [jain/web-design-hacks 3:55], [schoger/bad-about 8:32], [schoger/designing-with-claude-code 0:19:17])
- Don't let a headline dwarf its subline: keep the size difference large enough to build hierarchy, then check that the subline still reads as part of the same group; if it reads as fine print beside the headline, shrink the headline. Overdone size contrast lets the headline overpower the rest of the section. *Note: The sources give no ratio. Deliberate giant display text is an editorial exception (see also the display-text rule in typography.md).* ([jain/landing-page-levels 5:37], [jain/tesla-wannabe-redesign 4:32])
- Break walls of text into bullets, tables, icons and diagrams; e.g. show a change as 'old → new' with an arrow instead of 'From:' and 'To:' labels. Visual forms register instantly without reading, like a stop sign. ([jain/every-ui-concept 1:32], [jain/weirdly-perfect-ui 2:43])
- **App UI:** Design product screens to be scanned: when content is dense, differentiate it (grouping, weight, alignment, icons) before adding white space. Users arrive with one question and hunt for the answer; extra space alone just makes undifferentiated content longer. ([jain/weirdly-perfect-ui 2:21], [schoger/tuple 8:29])

## Spacing and grouping

- Group by proximity, with gaps between groups clearly larger than gaps within them: e.g. hero subtext 8px below the heading, eyebrow 12px above it, buttons 32px below the subtext (at least twice the heading-to-subtext gap); 24px below a 40px form input. Grouping is hierarchy and equal spacing implies equal relatedness; large headings already carry extra space below their baseline. ([jain/every-ui-concept 2:50], [jain/learn-ui-in-10-minutes 0:47], [jain/vibe-coding-cant-fix 5:41], [kennedy/advanced-ui-tips 6:51], [kennedy/timezones-redesign 6:05], [nngroup/principles-stripe 2:02], [schoger/resolute 2:59])
- Keep card and chip padding generous and consistent across a view, and when you add vertical padding to a section, widen the side padding too, so left/right ends up a bit larger than top/bottom; show fewer items rather than cramming more in. Consistent margins keep modules aligned and content from feeling packed; equal side padding looks overly narrow. ([jain/beginner-mistakes 2:38], [jain/dashboard-ui 6:36], [jain/finance-dashboard-redesign 6:26], [schoger/bad-about 4:47], [schoger/wp-pusher-checkout 8:03])
- Keep spacing on a 4px or 8px grid, and step larger dimensions exponentially rather than in small increments. The difference between 120 and 128 is imperceptible. *Note: Editorial: e.g. above about 100px, 64, 96, 128, 192, 256 stays on a 4px grid. The source's other option, rounding large sizes to the nearest 5 or 10, leaves the 4px grid.* ([jain/crucial-ui-elements 7:25], [jain/every-ui-concept 3:03], [jain/ui-cheat-codes 6:05])
- **App UI:** On iPhone, keep side margins at the 16pt default; side margins near 30pt are a common beginner mistake. 16 is the default iPhone side margin; extra side margin is a really common beginner mistake in mobile design. *Note: The sources mix pt and px; at 1x they are the same, i.e. 16 CSS px on a phone-width web view.* ([kennedy/spendweek-redesign 2:30], [kennedy/wodify-redesign 2:00])
- **Marketing:** Don't leave giant text floating in excess white space; pull related elements closer so the gaps between groups create the hierarchy. Too much space makes a page feel disjointed. ([jain/tesla-wannabe-redesign 0:49])

## Containers and dividers

- Separate list items, columns and groups with spacing rather than containers, and drop divider lines that spacing makes redundant (e.g. dashboard content sitting on the page background instead of in cards, list items marked by left-aligned category icons instead of boxes); add a container only when items must read as one unit, and keep lines when they are the intended visual style or a subtle divider is still needed. Close things read as related and distant things as unrelated; extra separators add clutter. *Note: In the dashboard source, the removed cards were replaced by a really subtle border; see the border rules below.* ([jain/every-ui-concept 0:09], [jain/slept-on-trends 4:01], [jain/ui-cheat-codes 5:26], [jain/web-design-hacks 1:19], [schoger/dashboard-with-ai 0:07:37], [schoger/resolute 10:49], [schoger/wp-pusher-checkout 1:58])
- **App UI:** Give items that must read as one unit a shared container: cooperating controls split by a small divider, separate cards consolidated into one container with border-separated rows, each dashboard section (common region). Controls doing the same job belong together, and common region simplifies and organizes information on screen. *Note: Sources disagree on dashboards: one encloses every section in a container, another drops cards and panels as dated. Default to spacing and box a section only when it must read as a separate unit.* ([nngroup/visual-design-principles 4:47], [schoger/dashboard-with-ai 0:19:07], [schoger/wss 3:40])
- To attach detached content without boxing it, add one subtle border: full width above right-aligned buttons, or along the top of each item in a two-column layout. Borders make floating content feel attached and mark item boundaries; beginners overuse them, so keep them subtle. *Note: The source's 20% opacity border came from a dark UI where a 10% white tint competed with nearby fields.* ([kennedy/spendweek-redesign 4:24], [schoger/resolute 8:39], [schoger/tuple 10:52])
- **App UI:** Stop row divider lines at the content edges; don't run them the full width of the screen. Full-width lines break the feeling of precision. ([jain/weirdly-perfect-ui 1:55])
- **App UI:** Pad each stat or side-by-side section individually, not the whole group, so vertical dividers between them run to the top and bottom borders. Dividers should feel glued to the surrounding borders. ([schoger/dashboard-with-ai 0:26:57])

## Alignment and edges

- Align text hard left, including titles over their body text, and numbers, prices and numeric table columns hard right. Don't center body text, lists or data, or mix alignments; center only the parts that aren't really meant to be read. Alignment lets users skip what they don't need, and digits line up by place value; AI-generated layouts center everything by default. ([jain/dashboard-flaws 0:44], [jain/weirdly-perfect-ui 0:17], [schoger/bad-about 3:57], [schoger/designing-with-claude-code 0:09:56], [schoger/tuple 2:03])
- Keep text on one left edge: hang icons and bullets in the margin or indent all text past them; drop padding that pushes a first stat or search icon inward. Aligned text feels neat and clean; container padding indents the first item out of alignment. ([kennedy/timezones-redesign 2:31], [schoger/dashboard-with-ai 0:11:45], [schoger/transistor 6:19])
- **App UI:** Line up repeated structure across parallel panels: inputs and buttons at the same position, form inputs in one column, stat icons, values and labels in uniform rows. Misaligned elements are tricky to scan and look off; a consistent pattern needn't be relearned per item. ([nngroup/principles-stripe 2:18], [raroque/ai-follow-my-designs 12:41], [schoger/transistor 5:21])
- Align optically: let a pointed icon's tip extend a pixel or two past the alignment line, and offset mathematically centered views subtly when balance needs it. The point then looks aligned with the text below; subtle offsets preserve optical balance. ([apple/explore-the-new-design 1:10], [kennedy/advanced-design-tips 2:40])
- **App UI:** In compact UIs (chat inputs, Kanban cards, sidebars, checklists), lock every element to at least two edges: the container's sides or lines formed by other elements. When an edge goes missing, manufacture one, e.g. a subline under a row with a large icon, or a divider that lines buttons up with the avatar. True of almost all well-built compact UIs; a shared column edge can do a card's job, and each row creates the edge the next one stacks onto. ([jain/weirdly-perfect-ui 0:27])
- **App UI:** Don't fill empty card space with more content; place content against the card's edges and the edges inner elements create (e.g. stacked below the avatar-and-name row), and limit compact cards to a few buttons aligned to those edges. Filler content and buttons that ignore the edges make a card feel off. ([jain/weirdly-perfect-ui 0:35])

## Grids and page structure

- Align structured, repeating content to a column grid (12 columns desktop, 8 tablet, 4 mobile; e.g. sidebar a quarter, main content three quarters): follow it strictly on dashboards; on custom landing pages treat it as a guide, letting elements break it slightly if balance holds and prioritizing white space. The grid gives responsive guidelines; dashboards use most of the screen, while landing pages benefit more from breathing room. ([jain/beginner-mistakes 2:03], [jain/dashboard-ui 2:10], [jain/every-ui-concept 2:05], [nngroup/grids-101 0:05], [schoger/bad-about 9:10])
- Put important content above the fold, not empty space: on a 1920px-wide desktop only about 1000px of height is visible. Condense headers and summaries, and keep related content viewable together in one viewport. Anything below the fold requires a scroll, and dispersed content makes people remember more. *Note: Editorial: on a typical laptop only about 750-800px of height is visible. For rendering at desktop and mobile widths, see also process.md.* ([jain/finance-dashboard-redesign 0:41], [jain/skincare-redesign 3:22], [kennedy/spendweek-redesign 4:06], [nngroup/content-dispersion-mobile 2:47], [schoger/wss 5:25])
- **App UI:** In simple apps and forms, size content to the width it needs (e.g. 8 columns of a 60px grid, 20px gutters) and center it, capping around 960-1024px. Too wide causes long reading widths, long form inputs and wasted space. *Note: Data-dense dashboards that use most of the screen are the exception; see the column-grid rule.* ([kennedy/timezones-redesign 3:02], [schoger/resolute 1:10], [schoger/transistor 1:32])
- **App UI:** Split long forms into labeled sections with liberal spacing and a very light 2px border; on wide screens, label and short explanation in the left third, fields in the right two-thirds. Sections make forms digestible; the label column condenses the form and holds help for new users. ([schoger/resolute 1:25], [schoger/wp-pusher-checkout 1:18])
- **Marketing:** On marketing pages, consider framing content with visible vertical grid lines that run the length of the page instead of floating cards. Builds structure and stays responsive on larger screens. ([jain/landing-page-levels 5:05], [jain/modern-layouts 6:03])

## Layout variety and bento grids

- **Marketing:** Vary section layouts down a page: mix full-screen sections, cards and multi-column sections; don't alternate text-left/image-right or reuse one layout for several sections. Template-like repetition makes the page feel undesigned and boring. ([jain/awful-to-amazing 0:54], [jain/google-ai-redesign 7:04], [jain/landing-page-levels 0:35], [jain/tesla-wannabe-redesign 4:48])
- **Marketing:** Use a simple bento grid instead of a plain row of cards when there are many features and enough text and image content to fill it. Bento keeps everything visible without scrolling past it, but needs a fair amount of content; complex bentos are hard to build. ([jain/landing-page-levels 5:15], [jain/learn-ui-in-10-minutes 4:24], [jain/modern-layouts 5:44], [jain/website-layouts 9:06])
- **Marketing:** Break the box selectively: let elements overlap section boundaries or run off the page edge (e.g. a sliding card carousel), starting with small moves like staggering cards up and down. More interesting than strict rows and columns, but easy to take too far and look wonky. ([jain/awful-to-amazing 1:22], [jain/google-ai-redesign 5:04], [jain/skincare-redesign 0:31])
- **Marketing:** Plan bento content first and size the boxes to it, e.g. vertical images need vertical boxes. Content planning often changes box sizes and the layout. ([jain/tesla-wannabe-redesign 4:57], [jain/website-layouts 8:34])

## Views, grouping and placement

- Put controls where they affect change (law of locality) and help text or icons beside the action or title they explain; don't repeat an identical help icon on every item. Users find help right when they're about to act; a help icon repeated per item wastes space. ([kennedy/timezones-redesign 2:13], [nngroup/visual-design-principles 4:51], [schoger/bad-about 4:20], [schoger/transistor 12:29])
- **App UI:** Use lists for data users sort, compare or search; cards for visual content users browse. Don't grid a few items or long text; if unsure, offer a view toggle. Lists are compact and imply order; cards take more space, imply no ranking, and handle long text poorly. ([apple/design-foundations 10:09], [nngroup/card-vs-list 0:48])
- **App UI:** Don't show a large collection all at once; organize it into themed groups by time (Recent files, Continue watching), progress (drafts, ongoing items), seasonality and current events, or patterns (related items). Processing effort grows with the number of choices, and overwhelmed people may leave. ([apple/design-foundations 11:12])
- **App UI:** Place search by what it filters: top of the sidebar for sidebar content or navigation; the toolbar for results in the detail view, its trailing position for split-view search across columns. Draws a clean line between the searched list and the detail view, which stays visible while navigating results. *Note: From Apple platform guidance; the same logic carries to web apps with a sidebar and detail pane.* ([apple/intuitive-search 8:24])

## Focus and simplicity

- For each part of the product, ask what one thing to remove, remove it, and repeat: purposeless decoration, ignored icons, unneeded text under the logo, stale help text, inferable info. Every element should earn its place; purposeless elements make features that matter hard to discover. *Note: Applies to decoration and redundant content, not controls experts rely on; see the expert-tools rule.* ([apple/design-foundations 9:50], [apple/principles-of-great-design 12:36], [kennedy/timezones-redesign 1:17], [raroque/app-design-process 7:05], [schoger/designing-with-claude-code 0:52:23], [schoger/wss 7:29], [vohra/designing-for-flow ¶if-i-had-to])
- **App UI:** While a user works on an item, hide the list and new incoming items, e.g. Superhuman shows one conversation at a time, never the inbox beside it. Seeing what's next makes users distractible by default, which destroys flow. *Note: Suits sequential triage; where users compare or navigate entries, a split view still fits (see the search-placement rule).* ([vohra/beyond-gamification 13:25], [vohra/designing-for-flow ¶in-superhuman-you-cant])
- **App UI:** In expert tools, favor operational simplicity (more controls, mapped one-to-one to tasks) over perceived simplicity; ask who a removal serves, and stop if only the look improves. Removing controls forces users to do more work; looking simple isn't being simple to use. ([nngroup/simplicity 0:00])

[apple/design-foundations 10:09]: https://youtu.be/dGcqqA3Sl-o?t=609
[apple/design-foundations 11:12]: https://youtu.be/dGcqqA3Sl-o?t=672
[apple/design-foundations 14:14]: https://youtu.be/dGcqqA3Sl-o?t=854
[apple/design-foundations 9:50]: https://youtu.be/dGcqqA3Sl-o?t=590
[apple/explore-the-new-design 1:10]: https://youtu.be/nwyaB288qBA?t=70
[apple/intuitive-search 8:24]: https://youtu.be/lx45sKEnZkU?t=504
[apple/principles-of-great-design 12:12]: https://youtu.be/Xa9L2yx_QH8?t=732
[apple/principles-of-great-design 12:36]: https://youtu.be/Xa9L2yx_QH8?t=756
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
[kennedy/advanced-design-tips 2:40]: https://youtu.be/6jiq5g_bXB8?t=160
[kennedy/advanced-design-tips 6:17]: https://youtu.be/6jiq5g_bXB8?t=377
[kennedy/advanced-ui-tips 6:51]: https://youtu.be/-2vzMH8iqsg?t=411
[kennedy/spendweek-redesign 2:30]: https://youtu.be/LHs6vx4QEE4?t=150
[kennedy/spendweek-redesign 4:06]: https://youtu.be/LHs6vx4QEE4?t=246
[kennedy/spendweek-redesign 4:24]: https://youtu.be/LHs6vx4QEE4?t=264
[kennedy/timezones-redesign 1:00]: https://youtu.be/B4XHaboNMOI?t=60
[kennedy/timezones-redesign 1:17]: https://youtu.be/B4XHaboNMOI?t=77
[kennedy/timezones-redesign 2:13]: https://youtu.be/B4XHaboNMOI?t=133
[kennedy/timezones-redesign 2:31]: https://youtu.be/B4XHaboNMOI?t=151
[kennedy/timezones-redesign 3:02]: https://youtu.be/B4XHaboNMOI?t=182
[kennedy/timezones-redesign 6:05]: https://youtu.be/B4XHaboNMOI?t=365
[kennedy/wodify-redesign 2:00]: https://youtu.be/OdS7fOS7bTk?t=120
[nngroup/card-vs-list 0:48]: https://youtu.be/3Zl_ZWuMetQ?t=48
[nngroup/content-dispersion-mobile 2:47]: https://youtu.be/-3xbwQt4MGQ?t=167
[nngroup/grids-101 0:05]: https://youtu.be/Vl1VYQXElus?t=5
[nngroup/principles-stripe 1:02]: https://youtu.be/qooOXNmdCH4?t=62
[nngroup/principles-stripe 1:37]: https://youtu.be/qooOXNmdCH4?t=97
[nngroup/principles-stripe 2:02]: https://youtu.be/qooOXNmdCH4?t=122
[nngroup/principles-stripe 2:18]: https://youtu.be/qooOXNmdCH4?t=138
[nngroup/simplicity 0:00]: https://youtu.be/utnOhRSXkyw?t=0
[nngroup/visual-design-principles 0:42]: https://youtu.be/YUMdv4yFlQU?t=42
[nngroup/visual-design-principles 4:47]: https://youtu.be/YUMdv4yFlQU?t=287
[nngroup/visual-design-principles 4:51]: https://youtu.be/YUMdv4yFlQU?t=291
[raroque/ai-follow-my-designs 12:41]: https://youtu.be/18V3lFePdWU?t=761
[raroque/app-design-process 7:05]: https://youtu.be/H0czeRyXPxA?t=425
[schoger/bad-about 1:33]: https://youtu.be/S6-q5BheEYU?t=93
[schoger/bad-about 3:57]: https://youtu.be/S6-q5BheEYU?t=237
[schoger/bad-about 4:20]: https://youtu.be/S6-q5BheEYU?t=260
[schoger/bad-about 4:47]: https://youtu.be/S6-q5BheEYU?t=287
[schoger/bad-about 5:33]: https://youtu.be/S6-q5BheEYU?t=333
[schoger/bad-about 8:32]: https://youtu.be/S6-q5BheEYU?t=512
[schoger/bad-about 9:10]: https://youtu.be/S6-q5BheEYU?t=550
[schoger/dashboard-with-ai 0:07:37]: https://youtu.be/lQCWuOT5ENQ?t=457
[schoger/dashboard-with-ai 0:11:45]: https://youtu.be/lQCWuOT5ENQ?t=705
[schoger/dashboard-with-ai 0:19:07]: https://youtu.be/lQCWuOT5ENQ?t=1147
[schoger/dashboard-with-ai 0:26:57]: https://youtu.be/lQCWuOT5ENQ?t=1617
[schoger/designing-with-claude-code 0:09:56]: https://youtu.be/lkKGQVHrXzE?t=596
[schoger/designing-with-claude-code 0:19:17]: https://youtu.be/lkKGQVHrXzE?t=1157
[schoger/designing-with-claude-code 0:52:23]: https://youtu.be/lkKGQVHrXzE?t=3143
[schoger/resolute 10:49]: https://youtu.be/BMHUKij1yUE?t=649
[schoger/resolute 1:10]: https://youtu.be/BMHUKij1yUE?t=70
[schoger/resolute 1:25]: https://youtu.be/BMHUKij1yUE?t=85
[schoger/resolute 2:59]: https://youtu.be/BMHUKij1yUE?t=179
[schoger/resolute 3:50]: https://youtu.be/BMHUKij1yUE?t=230
[schoger/resolute 8:39]: https://youtu.be/BMHUKij1yUE?t=519
[schoger/transistor 12:29]: https://youtu.be/ZT4WRRhacWk?t=749
[schoger/transistor 1:32]: https://youtu.be/ZT4WRRhacWk?t=92
[schoger/transistor 5:21]: https://youtu.be/ZT4WRRhacWk?t=321
[schoger/transistor 6:19]: https://youtu.be/ZT4WRRhacWk?t=379
[schoger/transistor 7:42]: https://youtu.be/ZT4WRRhacWk?t=462
[schoger/tuple 10:52]: https://youtu.be/RC9cYdbQ-_c?t=652
[schoger/tuple 2:03]: https://youtu.be/RC9cYdbQ-_c?t=123
[schoger/tuple 8:29]: https://youtu.be/RC9cYdbQ-_c?t=509
[schoger/wp-pusher-checkout 1:18]: https://youtu.be/5gdYHlYAKDY?t=78
[schoger/wp-pusher-checkout 1:58]: https://youtu.be/5gdYHlYAKDY?t=118
[schoger/wp-pusher-checkout 8:03]: https://youtu.be/5gdYHlYAKDY?t=483
[schoger/wss 3:40]: https://youtu.be/ZJj7uNdzPpM?t=220
[schoger/wss 3:53]: https://youtu.be/ZJj7uNdzPpM?t=233
[schoger/wss 5:25]: https://youtu.be/ZJj7uNdzPpM?t=325
[schoger/wss 7:29]: https://youtu.be/ZJj7uNdzPpM?t=449
[vohra/beyond-gamification 13:25]: https://youtu.be/zaxAdRlyZQ8?t=805
[vohra/designing-for-flow ¶if-i-had-to]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=If%20I%20had%20to%20remove%20just
[vohra/designing-for-flow ¶in-superhuman-you-cant]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=In%20Superhuman%20you%20can%27t%20see%20the
