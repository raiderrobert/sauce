# Data and dashboards

Heuristics for dashboard layout, charts, KPIs, tables and lists, chart color, and pricing/billing data displays in product UI.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Chart readability

- Add horizontal grid lines and axis numbers to every chart, even small ones; always include a vertical axis on bar charts. Everyone forgets them; without them charts look good but are nearly impossible to read. ([jain/beginner-mistakes 6:38](https://youtu.be/AH_ugxmLeUM?t=398), [jain/crucial-ui-elements 2:13](https://youtu.be/gKM6b2EnW1k?t=133), [jain/dashboard-ui 3:46](https://youtu.be/B7k5rOgmOGY?t=226))
- Prefer simple, familiar chart types, starting with a basic line graph; never invent unfamiliar or decorative charts. Nobody knows what weird charts mean; simple charts convey far more useful information. ([jain/beginner-mistakes 6:51](https://youtu.be/AH_ugxmLeUM?t=411), [jain/dashboard-ui 3:39](https://youtu.be/B7k5rOgmOGY?t=219))
- Draw line charts with straight segments between data points; never curve, smooth or fade the data line, especially the most recent data. Curves hide where the line's tip is; fading recent data implies you don't want to know what's happening. ([jain/crucial-ui-elements 2:22](https://youtu.be/gKM6b2EnW1k?t=142), [jain/finance-dashboard-redesign 4:39](https://youtu.be/Yr2uIcFZDDQ?t=279))
- Label every chart value; add a legend for comparison lines unless the encoding is clearly intuitive. Without labels these numbers don't mean anything. ([jain/crucial-ui-elements 3:08](https://youtu.be/gKM6b2EnW1k?t=188), [jain/finance-dashboard-redesign 4:08](https://youtu.be/Yr2uIcFZDDQ?t=248))
- Pick the chart type to fit the data: two-sided bars for income (up) vs expenses (down), pie for credit utilization, shaded-region map with values listed for geography. Data representation makes or breaks a dashboard; numbers without visuals fail to represent the data. ([jain/finance-dashboard-redesign 6:57](https://youtu.be/Yr2uIcFZDDQ?t=417), [jain/saas-vibe-code-mistakes 5:20](https://youtu.be/PDcQJOPby1k?t=320))
- Let users switch chart time frames or date range: a dropdown when short on space, otherwise separate buttons. ([jain/crucial-ui-elements 2:47](https://youtu.be/gKM6b2EnW1k?t=167), [jain/dashboard-ui 3:46](https://youtu.be/B7k5rOgmOGY?t=226))
- Add vertical grid lines to time-series charts. Gives a better sense of the time scale. ([jain/crucial-ui-elements 2:42](https://youtu.be/gKM6b2EnW1k?t=162))
- For business metrics, show the previous period as a gray comparison line on the chart. Useful to compare against the last period, e.g. previous month's sales. ([jain/crucial-ui-elements 2:56](https://youtu.be/gKM6b2EnW1k?t=176))
- Match the number of bars to the data periods: 7 days means 7 bars. Extra bars make no sense. ([jain/beginner-mistakes 6:46](https://youtu.be/AH_ugxmLeUM?t=406))
- Avoid rounded tops on chart bars. Hard to tell where the bar ends. ([jain/beginner-mistakes 6:43](https://youtu.be/AH_ugxmLeUM?t=403))
- Put an identifying icon, e.g. a favicon, beside each bar in a breakdown bar chart. Makes each bar easily identifiable. ([jain/dashboard-ui 3:54](https://youtu.be/B7k5rOgmOGY?t=234))

## Dashboard layout and priorities

- Lay out the dashboard as a grid with the most important information higher and farther left, filling the main area with what matters most. The main section reflects what is most important to the user. ([jain/dashboard-ui 2:20](https://youtu.be/B7k5rOgmOGY?t=140), [jain/finance-dashboard-redesign 3:44](https://youtu.be/Yr2uIcFZDDQ?t=224))
- Make a dashboard do one thing well; cut bulky elements that give no real value. If it looks like it needs a PhD, simplify. Disorganized, overloaded dashboards are unusable. ([jain/dashboard-ui 1:46](https://youtu.be/B7k5rOgmOGY?t=106), [jain/finance-dashboard-redesign 2:38](https://youtu.be/Yr2uIcFZDDQ?t=158))
- Add a summary view: a roll-up chart above time-based logs or tables, a summary dashboard beside click-through story formats. Shows time and stats at a glance instead of hunting timestamps or clicking through slides. ([jain/dashboard-flaws 2:10](https://youtu.be/Ksx9C2-3yMo?t=130), [jain/spotify-wrapped-redesign 0:44](https://youtu.be/goWOAFqJHpA?t=44))
- Build the dashboard UI around the data it must display; let the data drive the form. Yields a much more usable experience. ([jain/dashboard-flaws 0:22](https://youtu.be/Ksx9C2-3yMo?t=22))
- Build dashboard pages from four components: lists/tables, cards, user inputs and tabs. Master these four and you can build virtually any dashboard page. ([jain/dashboard-ui 5:56](https://youtu.be/B7k5rOgmOGY?t=356))
- Reserve the very top of the dashboard for important page actions or simple navigation. ([jain/dashboard-ui 2:42](https://youtu.be/B7k5rOgmOGY?t=162))
- Give low-priority placement to information users don't need to access regularly. Nice to view but not accessed on a regular basis. ([jain/finance-dashboard-redesign 5:07](https://youtu.be/Yr2uIcFZDDQ?t=307))
- Merge small related widgets into the card they belong to, e.g. card lock into the credit card card. Standalone fragments look useless; integrated they make sense. ([jain/finance-dashboard-redesign 2:19](https://youtu.be/Yr2uIcFZDDQ?t=139))
- Give every card enough context (amount, date, place) to be understood; replace pretty but meaningless diagrams. Missing context makes the card impossible to make sense of. ([jain/finance-dashboard-redesign 5:56](https://youtu.be/Yr2uIcFZDDQ?t=356))
- Keep dashboard text sizes at or below 24px. Higher information density shrinks the type size range. ([jain/every-ui-concept 4:14](https://youtu.be/EcbgbKtOELY?t=254))
- Add cheap, high-value features, like a toggle splitting an aggregate chart into individual items to compare. Super easy to implement and genuinely useful. ([jain/saas-vibe-code-mistakes 4:55](https://youtu.be/PDcQJOPby1k?t=295))

## Tables and lists

- Show only scan-critical fields on list items and homepage data (e.g. location, rating, price); leave details for the detail page. Users need specifics to scan; they click in for details. ([jain/dashboard-ui 2:54](https://youtu.be/B7k5rOgmOGY?t=174), [jain/genius-designer 2:48](https://youtu.be/HE4rLEQpiXY?t=168))
- Separate list items with space, dividers or color; if rows must be tightly spaced, use subtle alternating row backgrounds instead of lines. A good list mostly comes down to separation; alternating backgrounds beat lines everywhere. ([jain/dashboard-ui 6:08](https://youtu.be/B7k5rOgmOGY?t=368), [jain/ui-cheat-codes 5:54](https://youtu.be/c1TvOcKdBVE?t=354))
- Show avatars wherever people are referenced in lists or activity logs. The eye associates who did what faster than reading a name. ([jain/dashboard-flaws 2:03](https://youtu.be/Ksx9C2-3yMo?t=123), [jain/weirdly-perfect-ui 2:28](https://youtu.be/neE6wOuBIP8?t=148))
- Give tables search, filter and sort options. Turns the table into an interactive tool; display is only half the battle. ([jain/dashboard-ui 6:19](https://youtu.be/B7k5rOgmOGY?t=379))
- Right-align numeric columns in tables. Digits align by place value. ([jain/dashboard-flaws 0:44](https://youtu.be/Ksx9C2-3yMo?t=44))
- Render fixed-set categorical values like department or status as chips. There's only a set number of such values. ([jain/dashboard-flaws 0:41](https://youtu.be/Ksx9C2-3yMo?t=41))
- Truncate long text in table cells. Gives more breathing room to the other columns. ([jain/dashboard-flaws 0:57](https://youtu.be/Ksx9C2-3yMo?t=57))
- Shade out table rows that are inactive or deactivated. ([jain/dashboard-flaws 1:01](https://youtu.be/Ksx9C2-3yMo?t=61))
- Show time-delineated data as a timeline, not a time-sorted table; place it in a sidebar popout or a second column. A timeline is much easier to follow. ([jain/dashboard-flaws 1:14](https://youtu.be/Ksx9C2-3yMo?t=74))
- Group list items by a meaningful key, such as due date, so any item can be found in about a second. Grouping makes density work for you instead of against you. ([jain/weirdly-perfect-ui 2:33](https://youtu.be/neE6wOuBIP8?t=153))
- Allow multi-select on lists, revealing a contextual bulk actions button. Real applications need to manage data efficiently. ([jain/dashboard-ui 3:25](https://youtu.be/B7k5rOgmOGY?t=205))
- Stack items into a single list instead of giving each its own bordered card. Less clutter, and lists make empty states easier. ([jain/dashboard-ui 3:12](https://youtu.be/B7k5rOgmOGY?t=192))
- In dense tables, add hover copy chips over cells and small triangle indicators for comments. ([jain/dashboard-flaws 5:17](https://youtu.be/Ksx9C2-3yMo?t=317))

## KPIs and stats

- Never repeat the same data: no duplicated KPI rows across pages, no chart restating growth percentages already shown. Repeated KPIs are a telltale sign of AI-generated UI; repetition wastes space. ([jain/finance-dashboard-redesign 4:15](https://youtu.be/Yr2uIcFZDDQ?t=255), [jain/saas-vibe-code-mistakes 1:15](https://youtu.be/PDcQJOPby1k?t=75))
- Add color to dashboards through micro charts in KPI cards rather than colored buttons and icons. Adds more relevant information along with the color. ([jain/saas-vibe-code-mistakes 0:55](https://youtu.be/PDcQJOPby1k?t=55))
- Replace generic KPI rows on usage pages with a simple two-column layout and small donut charts. Generic KPI rows look vibe-coded and lame. ([jain/saas-vibe-code-mistakes 3:40](https://youtu.be/PDcQJOPby1k?t=220))
- Pack stat rows with useful info and helpful icons that add a splash of color. ([jain/saas-vibe-code-mistakes 5:12](https://youtu.be/PDcQJOPby1k?t=312))
- Add comparison text beneath stats, e.g. percent change from last year. ([jain/spotify-wrapped-redesign 4:04](https://youtu.be/goWOAFqJHpA?t=244))
- Show progress as an actual percentage instead of a vague 'In progress' label. 'In progress' tells us nothing. ([jain/vibe-coding-pro-ui 5:54](https://youtu.be/xHD01_Onac0?t=354))
- Use completed vs. incomplete status colors consistently; never color incomplete items in the completed color. Inconsistent status colors misrepresent progress. ([jain/vibe-coding-pro-ui 5:45](https://youtu.be/xHD01_Onac0?t=345))
- Let users browse every period (e.g. swipe through all months) rather than a curated selection. Showing only some periods defeats the point. ([jain/spotify-wrapped-redesign 5:51](https://youtu.be/goWOAFqJHpA?t=351))

## Chart color

- Use a full-spectrum palette for charts, not neutrals or a single brand color ramp. Neutral charts are lame; brand ramps look too similar. ([jain/60-30-10-rule 4:58](https://youtu.be/66oOi9OLMCw?t=298))
- Build chart colors in OKLCH: fix lightness and chroma, increment hue by ~25-30 per color. Gives the same perceived brightness across hues. ([jain/60-30-10-rule 5:19](https://youtu.be/66oOi9OLMCw?t=319))

## Pricing and billing pages

- Offer fewer than five pricing plans. Five plans is really not ideal. ([jain/saas-vibe-code-mistakes 3:59](https://youtu.be/PDcQJOPby1k?t=239))
- Order plans so prices make sense and show the actual discount, so a lower tier never looks pricier. Standard costing less than hobby confuses until you notice the discount. ([jain/saas-vibe-code-mistakes 3:51](https://youtu.be/PDcQJOPby1k?t=231))
- Show what the next plan includes that the current plan doesn't. ([jain/saas-vibe-code-mistakes 4:29](https://youtu.be/PDcQJOPby1k?t=269))
- Include billing email and payment method on the billing page. ([jain/saas-vibe-code-mistakes 4:37](https://youtu.be/PDcQJOPby1k?t=277))
