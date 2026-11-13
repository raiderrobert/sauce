# Data and dashboards

Dashboard layout, charts and chart color, KPIs and stats, tables and lists, and pricing and billing displays.

Practitioner heuristics; accessibility and the product's design system take precedence. Tags, *Note:* text and citations are explained in `SKILL.md`.

Contents: Dashboard layout · Charts · Chart color · KPIs and stats · Tables and lists · Pricing and billing

## Dashboard layout

- **App UI:** Make each dashboard do one thing well and let the data it must show drive its UI; cut bulky elements that give no real value. Disorganized, overloaded dashboards are unusable. *Note: Editorial: e.g. frame that one thing as a primary question such as 'how is revenue trending?'.* ([jain/dashboard-flaws 0:22], [jain/dashboard-ui 1:46], [jain/finance-dashboard-redesign 2:38])
- **App UI:** Rank each module as high, mid or low priority before arranging: put the most important information higher and farther left in the main area, low-priority information lower, and reserve the very top for page actions or simple navigation. The main area should reflect what matters most to the user. ([jain/dashboard-ui 2:20], [jain/finance-dashboard-redesign 3:44])
- **App UI:** Add a summary view: a roll-up chart above time-based logs or tables, or a summary dashboard beside a click-through story format. Shows trends at a glance instead of hunting through timestamps or slides. ([jain/dashboard-flaws 2:10], [jain/spotify-wrapped-redesign 0:44])
- **App UI:** Give every card enough context (amount, date, place) to be understood; merge small related widgets into the card they belong to, and remove cards that do nothing. Fragments and purposeless cards look useless; integrated, they make sense. ([jain/finance-dashboard-redesign 2:19], [jain/saas-vibe-code-mistakes 3:28])

## Charts

- Add horizontal grid lines and axis numbers to every full chart, even small ones; always include a vertical axis on bar charts, and add vertical grid lines to time series. Without them charts look good but are nearly impossible to read. *Note: Editorial: sparklines and KPI micro charts can omit axes and grid lines.* ([jain/beginner-mistakes 6:38], [jain/crucial-ui-elements 2:13], [jain/dashboard-ui 3:46])
- Prefer simple, familiar chart types, starting with a basic line chart; don't make unfamiliar or decorative charts. Simple charts convey far more useful information. ([jain/beginner-mistakes 6:51], [jain/dashboard-ui 3:39])
- Draw line charts with straight segments between data points; don't smooth, curve or fade the line, especially at the most recent data. Curves hide where the line's tip is; fading recent data hides what is happening now. ([jain/crucial-ui-elements 2:22], [jain/finance-dashboard-redesign 4:39])
- Pick the chart type to fit the data, e.g. two-sided bars for income (up) versus expenses (down), a pie for credit utilization, a shaded map with listed values for geography. Data representation makes or breaks a dashboard. ([jain/finance-dashboard-redesign 6:57], [jain/saas-vibe-code-mistakes 5:20])
- Let users switch a chart's time frame or date range: a dropdown when space is short, otherwise separate buttons. ([jain/crucial-ui-elements 2:47], [jain/dashboard-ui 3:46])
- Label chart values so the numbers mean something, and add a legend for comparison lines unless the encoding is obvious. Without labels the numbers don't mean anything. *Note: Editorial: label values directly when there are few data points (e.g. a handful of bars); for dense series rely on axes and show values on hover.* ([jain/crucial-ui-elements 3:08], [jain/finance-dashboard-redesign 4:08])
- **App UI:** For business metrics, show the previous period as a gray comparison line on the same chart. Comparing against last period (e.g. last month's sales) is the usual question. ([jain/crucial-ui-elements 2:56])
- Match bar count to the data periods (7 days = 7 bars) and keep bar tops square. Extra bars make no sense, and rounded tops hide where the value ends. ([jain/beginner-mistakes 6:43])

## Chart color

- For multi-series charts, use a full spectrum of hues at the same perceived brightness rather than one brand ramp: in OKLCH, fix lightness and chroma and step the hue about 25-30° per series. Brand-ramp series look too similar; OKLCH keeps perceived brightness even across hues. *Note: For color-blind users, 25-30° steps are often too close; step hue about 40-60° or more, vary lightness enough to tell series apart, and label series directly. Editorial: a ramp from the accent suits single-series emphasis.* ([jain/60-30-10-rule 2:19], [jain/every-ui-concept 5:14])

## KPIs and stats

- **App UI:** Don't repeat the same data: no duplicated KPI rows across pages, no chart restating percentages already shown. Repetition wastes space; duplicated KPI rows were a common tell of AI-generated UI as of 2026. ([jain/finance-dashboard-redesign 4:15], [jain/saas-vibe-code-mistakes 1:15])
- **App UI:** Add color to dashboards through charts rather than colored buttons and icons, and put comparison text beneath stats (e.g. percent change from last year). The color then carries information, and a number needs a reference point. ([jain/saas-vibe-code-mistakes 0:55], [jain/spotify-wrapped-redesign 4:04])
- **App UI:** Show progress concretely: an actual percentage, or what's done and what's left (e.g. a course percentage or a profile-completion meter), instead of a vague 'In progress' label; use completed and incomplete status colors consistently. 'In progress' says nothing; visible progress and the urge to complete drive users to finish, and inconsistent status colors misrepresent progress. *Note: Don't rely on color alone; pair it with an icon or text label (WCAG 1.4.1).* ([jain/gamifying-apps 0:42], [jain/vibe-coding-pro-ui 5:45])
- **App UI:** On usage pages, prefer a simple two-column layout with small donut charts over a generic row of KPI cards. Generic KPI rows looked templated and AI-generated as of 2026. ([jain/saas-vibe-code-mistakes 3:40])

## Tables and lists

- Show only scan-critical fields on list items and overview data (e.g. location, rating, price); leave details for the detail page. Users scan with specifics and click in for details. ([jain/dashboard-ui 2:54], [jain/genius-designer 2:48])
- Show a collection as one list rather than separate bordered cards; when rows must be tight, use subtle alternating row backgrounds instead of divider lines. Lists also make empty states easier. For separating items with spacing, see also layout-and-hierarchy.md. ([jain/dashboard-ui 3:12], [jain/ui-cheat-codes 5:54])
- Show avatars wherever people are referenced in lists or activity logs. The eye links who did what faster than it reads a name. *Note: Editorial: when there is no photo, fall back to flat neutral initials, not a gradient letter circle.* ([jain/dashboard-flaws 2:03], [jain/weirdly-perfect-ui 2:28])
- **App UI:** In tables, truncate long cell text, render fixed-set values such as department or status as chips, and shade inactive or deactivated rows. Gives the other columns room and makes state visible at a glance. ([jain/dashboard-flaws 0:41])
- **App UI:** Show time-delineated data as a timeline rather than a time-sorted table, e.g. in a sidebar popout or second column. A timeline is much easier to follow. ([jain/dashboard-flaws 1:14])
- Group list items by a meaningful key, such as due date, so any item can be found in about a second. Grouping makes density work for you. ([jain/weirdly-perfect-ui 2:33])
- **App UI:** Allow multi-select on lists, revealing a contextual bulk-actions button. Real applications need to manage data efficiently. ([jain/dashboard-ui 3:25])

## Pricing and billing

- On pricing cards, shrink the plan name and make the price large; if the button moves up near the price, make it an outline button. The cost is what people look for; a filled button up top throws off the hierarchy. ([jain/crucial-ui-elements 4:46], [jain/every-ui-concept 1:23], [jain/saas-vibe-code-mistakes 4:14])
- Give each plan a name and a short description, and list features with check marks, including at least one feature the plan doesn't get. Makes plans easy to tell apart and compare. ([jain/crucial-ui-elements 4:55])
- If the product has paid plans, offer fewer than five; if a top tier serves high-volume buyers, name it 'Enterprise'. Five plans is too many; high-volume buyers usually need more than a fixed plan. ([jain/saas-vibe-code-mistakes 3:59])
- When plans carry discounts, show the actual discount and order plans so a lower tier never looks pricier than a higher one. A cheaper-looking higher tier confuses until users notice the discount. ([jain/saas-vibe-code-mistakes 3:51])
- Disclose billing terms under the price, e.g. the billed-annually total. Users feel misled when they discover the real price later. ([jain/crucial-ui-elements 5:14])

[jain/60-30-10-rule 2:19]: https://youtu.be/66oOi9OLMCw?t=139
[jain/beginner-mistakes 6:38]: https://youtu.be/AH_ugxmLeUM?t=398
[jain/beginner-mistakes 6:43]: https://youtu.be/AH_ugxmLeUM?t=403
[jain/beginner-mistakes 6:51]: https://youtu.be/AH_ugxmLeUM?t=411
[jain/crucial-ui-elements 2:13]: https://youtu.be/gKM6b2EnW1k?t=133
[jain/crucial-ui-elements 2:22]: https://youtu.be/gKM6b2EnW1k?t=142
[jain/crucial-ui-elements 2:47]: https://youtu.be/gKM6b2EnW1k?t=167
[jain/crucial-ui-elements 2:56]: https://youtu.be/gKM6b2EnW1k?t=176
[jain/crucial-ui-elements 3:08]: https://youtu.be/gKM6b2EnW1k?t=188
[jain/crucial-ui-elements 4:46]: https://youtu.be/gKM6b2EnW1k?t=286
[jain/crucial-ui-elements 4:55]: https://youtu.be/gKM6b2EnW1k?t=295
[jain/crucial-ui-elements 5:14]: https://youtu.be/gKM6b2EnW1k?t=314
[jain/dashboard-flaws 0:22]: https://youtu.be/Ksx9C2-3yMo?t=22
[jain/dashboard-flaws 0:41]: https://youtu.be/Ksx9C2-3yMo?t=41
[jain/dashboard-flaws 1:14]: https://youtu.be/Ksx9C2-3yMo?t=74
[jain/dashboard-flaws 2:03]: https://youtu.be/Ksx9C2-3yMo?t=123
[jain/dashboard-flaws 2:10]: https://youtu.be/Ksx9C2-3yMo?t=130
[jain/dashboard-ui 1:46]: https://youtu.be/B7k5rOgmOGY?t=106
[jain/dashboard-ui 2:20]: https://youtu.be/B7k5rOgmOGY?t=140
[jain/dashboard-ui 2:54]: https://youtu.be/B7k5rOgmOGY?t=174
[jain/dashboard-ui 3:12]: https://youtu.be/B7k5rOgmOGY?t=192
[jain/dashboard-ui 3:25]: https://youtu.be/B7k5rOgmOGY?t=205
[jain/dashboard-ui 3:39]: https://youtu.be/B7k5rOgmOGY?t=219
[jain/dashboard-ui 3:46]: https://youtu.be/B7k5rOgmOGY?t=226
[jain/every-ui-concept 1:23]: https://youtu.be/EcbgbKtOELY?t=83
[jain/every-ui-concept 5:14]: https://youtu.be/EcbgbKtOELY?t=314
[jain/finance-dashboard-redesign 2:19]: https://youtu.be/Yr2uIcFZDDQ?t=139
[jain/finance-dashboard-redesign 2:38]: https://youtu.be/Yr2uIcFZDDQ?t=158
[jain/finance-dashboard-redesign 3:44]: https://youtu.be/Yr2uIcFZDDQ?t=224
[jain/finance-dashboard-redesign 4:08]: https://youtu.be/Yr2uIcFZDDQ?t=248
[jain/finance-dashboard-redesign 4:15]: https://youtu.be/Yr2uIcFZDDQ?t=255
[jain/finance-dashboard-redesign 4:39]: https://youtu.be/Yr2uIcFZDDQ?t=279
[jain/finance-dashboard-redesign 6:57]: https://youtu.be/Yr2uIcFZDDQ?t=417
[jain/gamifying-apps 0:42]: https://youtu.be/jSxxAFxjxbU?t=42
[jain/genius-designer 2:48]: https://youtu.be/HE4rLEQpiXY?t=168
[jain/saas-vibe-code-mistakes 0:55]: https://youtu.be/PDcQJOPby1k?t=55
[jain/saas-vibe-code-mistakes 1:15]: https://youtu.be/PDcQJOPby1k?t=75
[jain/saas-vibe-code-mistakes 3:28]: https://youtu.be/PDcQJOPby1k?t=208
[jain/saas-vibe-code-mistakes 3:40]: https://youtu.be/PDcQJOPby1k?t=220
[jain/saas-vibe-code-mistakes 3:51]: https://youtu.be/PDcQJOPby1k?t=231
[jain/saas-vibe-code-mistakes 3:59]: https://youtu.be/PDcQJOPby1k?t=239
[jain/saas-vibe-code-mistakes 4:14]: https://youtu.be/PDcQJOPby1k?t=254
[jain/saas-vibe-code-mistakes 5:20]: https://youtu.be/PDcQJOPby1k?t=320
[jain/spotify-wrapped-redesign 0:44]: https://youtu.be/goWOAFqJHpA?t=44
[jain/spotify-wrapped-redesign 4:04]: https://youtu.be/goWOAFqJHpA?t=244
[jain/ui-cheat-codes 5:54]: https://youtu.be/c1TvOcKdBVE?t=354
[jain/vibe-coding-pro-ui 5:45]: https://youtu.be/xHD01_Onac0?t=345
[jain/weirdly-perfect-ui 2:28]: https://youtu.be/neE6wOuBIP8?t=148
[jain/weirdly-perfect-ui 2:33]: https://youtu.be/neE6wOuBIP8?t=153
