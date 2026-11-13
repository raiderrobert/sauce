# Navigation and disclosure

Progressive disclosure, sidebars and app navigation, page structure, onboarding and engagement, website nav bars and search.

Practitioner heuristics, not standards: accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and the product's own design system take precedence. Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. *Note:* text is an uncited editorial caveat. Each citation (`author/video timestamp`) links to that moment in the source; the link definitions at the end of the file can be skipped, and full entries are in `references/bibliography.md`.

Contents: Progressive disclosure · Sidebar and app navigation · Page structure and wayfinding · Onboarding and engagement · Website nav bars and menus · Search

## Progressive disclosure

- Place each action on a spectrum of explicitness: important actions always visible and labeled; minor ones (e.g. remove-user, extra details) as icons revealed on hover. Saves tight space; minor actions appear when users look for them. *Note: Also reveal on keyboard focus; on touch, keep the action reachable (menu or swipe).* ([jain/dashboard-flaws 2:59], [jain/landing-page-levels 9:00], [jain/think-like-product-designer 0:40])
- Show only what users need in the moment and reveal more as required, e.g. hide filters until content exists and show full item details only on click. What you show versus hide is itself hierarchy. ([jain/dashboard-flaws 2:32], [jain/genius-designer 4:03], [jain/macos-apps 3:41])
- Before hiding actions in an overflow (kebab) menu, try rearranging content toward the card's edges; use the menu, and reduce chips to icons, when there are genuinely too many actions. Hiding isn't the default fix, but it keeps a crowded card clean. ([jain/finance-dashboard-redesign 8:13], [jain/saas-vibe-code-mistakes 1:51], [jain/weirdly-perfect-ui 1:07])
- Collapse advanced options by default, including in inputs (e.g. an advanced-mode toggle). ([jain/ai-startup-components 1:28], [jain/saas-vibe-code-mistakes 2:13])
- Reduce options and explanation rather than piling on labels, comparisons and tooltips to clarify unclear UI. More options worsen decisions, and extra explanation makes the screen harder to read. ([jain/tiktok-ux 1:32], [jain/weirdly-perfect-ui 3:37])
- **Marketing:** Relegate options irrelevant to most visitors (Enterprise, add-ons) to a small button that opens a lightbox, not a full section. Not useful to about 98% of visitors. ([jain/google-ai-redesign 4:53], [jain/tesla-wannabe-redesign 6:24])
- **App UI:** Don't hide frequently needed content such as tasks behind a button; give it its own visible section. Users shouldn't have to click to see core information. ([jain/finance-dashboard-redesign 1:41])
- On lists with a footer or finite content, use a 'Load more' button instead of infinite scroll. Gives users control and lets them reach the footer. *Note: Endless feeds may infinite-scroll; keep footer links reachable elsewhere.* ([jain/genius-designer 4:07])

## Sidebar and app navigation

- **App UI:** Use the standard app frame: persistent, global elements (navigation, profile, search, team, settings) in the sidebar, page-level actions in a top bar that changes with the current page, content in the center. The sidebar is the product's spine and frees vertical space; actions are contextual per page. ([jain/dashboard-ui 0:20], [jain/finance-dashboard-redesign 1:01], [jain/macos-apps 2:42], [jain/mobile-app-ui 0:51])
- **App UI:** Give each sidebar link a recognizable icon and a short title so the sidebar can collapse to icons; for when icons need visible labels or tooltips, see also components-and-states.md. Icons make a sidebar scannable and collapsible. ([jain/animated-sidebar 0:25], [jain/beginner-mistakes 4:20], [jain/crucial-ui-elements 1:34], [jain/dashboard-ui 0:43])
- **App UI:** Put an account card at the top of the sidebar: avatar, name and switcher chevrons, opening a popover of account links. Avoid gradient letter-circle avatars. A picture is identifiable and chevrons show it's clickable; gradient letter circles were an AI-generated cliché as of 2026. ([jain/dashboard-ui 0:35], [jain/saas-vibe-code-mistakes 1:39], [jain/vibe-coding-pro-ui 5:18])
- **App UI:** Move rarely used links such as Settings and Help to the bottom of the sidebar, and drop needless group labels like 'Menu'. ([jain/dashboard-ui 1:03], [jain/vibe-coding-pro-ui 5:23])
- **App UI:** Use tabs for related views (e.g. settings, billing) instead of more sidebar links. Keeps users in context; new sections become another tab as the product grows. ([jain/dashboard-ui 6:59], [jain/saas-vibe-code-mistakes 4:43])
- **App UI:** Group navigation links by relevance and nest them into collapsible groups as they grow. Navigation is about reducing cognitive load. ([jain/dashboard-ui 0:57])
- **App UI:** Expand a collapsed sidebar only after the pointer dwells at the edge. Avoids accidental pop-outs from fast mouse movement. ([jain/software-must-lie 3:46])
- **App UI:** In app menus, separate keyboard shortcuts from item labels with alignment and type, e.g. right-aligned in secondary text. The structure tells users what is clickable and what is a hint. ([jain/captivating-sections 4:22])

## Page structure and wayfinding

- With one main product, skip the separate marketing landing page and open straight into the product interface (or, for a single-product marketing site, straight into that product's page). Very effective; ChatGPT and Gemini did this as of 2026. ([jain/ai-startup-components 0:43], [jain/tesla-wannabe-redesign 2:05])
- Integrate new features into existing UI rather than giving each its own page, and never build pages whose only purpose is redirecting elsewhere, e.g. a single-section page whose only content is a link to the page with the real information. Structure should make sense, not just look good. ([jain/dashboard-flaws 5:52], [jain/tesla-wannabe-redesign 1:55])
- Break long sequential content into chapters with a jump menu; skip section navigators on short pages. Users can skip to the part they want; short pages don't need it. ([jain/skincare-redesign 0:46], [jain/spotify-wrapped-redesign 2:37])

## Onboarding and engagement

- **App UI:** Don't drop first-time users onto a fully loaded dashboard; design a first-login empty state that highlights the main action with an explanatory popover. They'll wonder where to start. ([jain/dashboard-flaws 3:50], [jain/mobile-app-ui 6:27])
- **App UI:** Sequence onboarding: one tooltip on the most important action, then the next or a checklist; never a modal with six bullets explaining everything. Users aren't overwhelmed; modal content is forgotten the moment it closes. ([jain/dashboard-flaws 3:56])
- **App UI:** In consumer feed or content apps, keep onboarding minimal (pick interests, shortest possible tutorial, then the core experience) and infer preferences from behavior rather than relying on stated answers. Figure out what users want before they do. ([jain/tiktok-ux 1:10])
- **App UI:** Offer a skip button on optional onboarding steps, plus search or an 'Other' option next to preset choices. Some users won't fit the presets. ([jain/beginner-mistakes 0:30])
- **App UI:** Ask team size early in onboarding and branch the flow; skip invite-teammates for individuals. It shapes every following step. ([jain/learn-ui-in-10-minutes 7:00])
- **App UI:** Show the app's value during onboarding (e.g. insights from the user's own data) before introducing gamification, and reassure users about safety when asking for a sensitive connection like a bank account. Demonstrates value before asking for engagement or trust. ([jain/gamifying-apps 4:28])
- **App UI:** Teach keyboard shortcuts by having users press the key shortcut to dismiss onboarding, and provide a shortcut cheat sheet (e.g. in settings). Doing it teaches it; shortcuts are easy to forget. ([jain/macos-apps 8:34])
- **App UI:** In products that already use gamification, center it on one currency (XP, karma) that shows progress and unlocks features, and tie rewards to users' real goals. Progress and unlocks keep users going; meaningless rewards don't. ([jain/gamifying-apps 0:57])
- **App UI:** In products that already use gamification, add leaderboards and public badges so users can compare with friends; normalize leaderboards to a local cohort when users' resources differ widely. Comparison motivates, but only when it's fair across currencies and incomes. ([jain/gamifying-apps 1:22])

## Website nav bars and menus

- **Marketing:** Keep the navbar small and out of the way but give it hierarchy: let one element, like an outlined sign-up CTA, stand out. Flat menus don't draw the eye to the most important action. ([jain/landing-page-levels 1:26], [jain/learn-ui-in-10-minutes 1:11])
- **Marketing:** Balance the nav bar: center the main links rather than weighting everything right; a search bar can even it out. Right-heavy menus unbalance the page. ([jain/landing-page-levels 1:36], [jain/skincare-redesign 4:16])
- **Marketing:** Add images to dropdown and mega menus instead of plain lists of text links. Images give quick context before clicking. ([jain/modern-layouts 6:36], [jain/slept-on-trends 8:44])
- **Marketing:** Use a mega menu only when there are enough destinations to fill it (e.g. several products or resource groups). With real depth, it signals the product is worth exploring; with few links it's empty. ([jain/landing-page-levels 6:08])
- Keep submenus open while the pointer heads toward them, using a hover-intent triangle based on pointer position and speed. Diagonal mouse moves otherwise close the submenu. ([jain/software-must-lie 3:02])

## Search

- Make search a prominent, always-visible bar when it is the primary task of the screen; when it is secondary or space is tight, collapse it to a magnifying-glass icon that expands with a short animation on click or keyboard shortcut. Search should be instantly reachable without crowding screens where browsing comes first. ([jain/genius-designer 3:52], [jain/macos-apps 5:31], [jain/micro-animations 7:04])
- **App UI:** When search results look like browse, show the result count, the query, a clear X in the search bar and a back arrow. Distinguishes results from browsing. ([jain/macos-apps 6:22])

[jain/ai-startup-components 0:43]: https://youtu.be/If7iCPDy2vk?t=43
[jain/ai-startup-components 1:28]: https://youtu.be/If7iCPDy2vk?t=88
[jain/animated-sidebar 0:25]: https://youtu.be/NtZeYmTMuo4?t=25
[jain/beginner-mistakes 0:30]: https://youtu.be/AH_ugxmLeUM?t=30
[jain/beginner-mistakes 4:20]: https://youtu.be/AH_ugxmLeUM?t=260
[jain/captivating-sections 4:22]: https://youtu.be/tNMAFjzapOk?t=262
[jain/crucial-ui-elements 1:34]: https://youtu.be/gKM6b2EnW1k?t=94
[jain/dashboard-flaws 2:32]: https://youtu.be/Ksx9C2-3yMo?t=152
[jain/dashboard-flaws 2:59]: https://youtu.be/Ksx9C2-3yMo?t=179
[jain/dashboard-flaws 3:50]: https://youtu.be/Ksx9C2-3yMo?t=230
[jain/dashboard-flaws 3:56]: https://youtu.be/Ksx9C2-3yMo?t=236
[jain/dashboard-flaws 5:52]: https://youtu.be/Ksx9C2-3yMo?t=352
[jain/dashboard-ui 0:20]: https://youtu.be/B7k5rOgmOGY?t=20
[jain/dashboard-ui 0:35]: https://youtu.be/B7k5rOgmOGY?t=35
[jain/dashboard-ui 0:43]: https://youtu.be/B7k5rOgmOGY?t=43
[jain/dashboard-ui 0:57]: https://youtu.be/B7k5rOgmOGY?t=57
[jain/dashboard-ui 1:03]: https://youtu.be/B7k5rOgmOGY?t=63
[jain/dashboard-ui 6:59]: https://youtu.be/B7k5rOgmOGY?t=419
[jain/finance-dashboard-redesign 1:01]: https://youtu.be/Yr2uIcFZDDQ?t=61
[jain/finance-dashboard-redesign 1:41]: https://youtu.be/Yr2uIcFZDDQ?t=101
[jain/finance-dashboard-redesign 8:13]: https://youtu.be/Yr2uIcFZDDQ?t=493
[jain/gamifying-apps 0:57]: https://youtu.be/jSxxAFxjxbU?t=57
[jain/gamifying-apps 1:22]: https://youtu.be/jSxxAFxjxbU?t=82
[jain/gamifying-apps 4:28]: https://youtu.be/jSxxAFxjxbU?t=268
[jain/genius-designer 3:52]: https://youtu.be/HE4rLEQpiXY?t=232
[jain/genius-designer 4:03]: https://youtu.be/HE4rLEQpiXY?t=243
[jain/genius-designer 4:07]: https://youtu.be/HE4rLEQpiXY?t=247
[jain/google-ai-redesign 4:53]: https://youtu.be/pGYLZyBE32o?t=293
[jain/landing-page-levels 1:26]: https://youtu.be/eMMiLeo_UGI?t=86
[jain/landing-page-levels 1:36]: https://youtu.be/eMMiLeo_UGI?t=96
[jain/landing-page-levels 6:08]: https://youtu.be/eMMiLeo_UGI?t=368
[jain/landing-page-levels 9:00]: https://youtu.be/eMMiLeo_UGI?t=540
[jain/learn-ui-in-10-minutes 1:11]: https://youtu.be/9WVt1CelBfg?t=71
[jain/learn-ui-in-10-minutes 7:00]: https://youtu.be/9WVt1CelBfg?t=420
[jain/macos-apps 2:42]: https://youtu.be/Vy0KKvZJRH8?t=162
[jain/macos-apps 3:41]: https://youtu.be/Vy0KKvZJRH8?t=221
[jain/macos-apps 5:31]: https://youtu.be/Vy0KKvZJRH8?t=331
[jain/macos-apps 6:22]: https://youtu.be/Vy0KKvZJRH8?t=382
[jain/macos-apps 8:34]: https://youtu.be/Vy0KKvZJRH8?t=514
[jain/micro-animations 7:04]: https://youtu.be/ld1zhQMXxXU?t=424
[jain/mobile-app-ui 0:51]: https://youtu.be/Gfsd8NNuD9g?t=51
[jain/mobile-app-ui 6:27]: https://youtu.be/Gfsd8NNuD9g?t=387
[jain/modern-layouts 6:36]: https://youtu.be/VPeTgU7la34?t=396
[jain/saas-vibe-code-mistakes 1:39]: https://youtu.be/PDcQJOPby1k?t=99
[jain/saas-vibe-code-mistakes 1:51]: https://youtu.be/PDcQJOPby1k?t=111
[jain/saas-vibe-code-mistakes 2:13]: https://youtu.be/PDcQJOPby1k?t=133
[jain/saas-vibe-code-mistakes 4:43]: https://youtu.be/PDcQJOPby1k?t=283
[jain/skincare-redesign 0:46]: https://youtu.be/BvbFPzLjWcU?t=46
[jain/skincare-redesign 4:16]: https://youtu.be/BvbFPzLjWcU?t=256
[jain/slept-on-trends 8:44]: https://youtu.be/EHwZzWd-OnQ?t=524
[jain/software-must-lie 3:02]: https://youtu.be/S8DcTJm8pYM?t=182
[jain/software-must-lie 3:46]: https://youtu.be/S8DcTJm8pYM?t=226
[jain/spotify-wrapped-redesign 2:37]: https://youtu.be/goWOAFqJHpA?t=157
[jain/tesla-wannabe-redesign 1:55]: https://youtu.be/V3Omp1hm0Sg?t=115
[jain/tesla-wannabe-redesign 2:05]: https://youtu.be/V3Omp1hm0Sg?t=125
[jain/tesla-wannabe-redesign 6:24]: https://youtu.be/V3Omp1hm0Sg?t=384
[jain/think-like-product-designer 0:40]: https://youtu.be/ADaQuZS04Rc?t=40
[jain/tiktok-ux 1:10]: https://youtu.be/ixUq4HM4FNg?t=70
[jain/tiktok-ux 1:32]: https://youtu.be/ixUq4HM4FNg?t=92
[jain/vibe-coding-pro-ui 5:18]: https://youtu.be/xHD01_Onac0?t=318
[jain/vibe-coding-pro-ui 5:23]: https://youtu.be/xHD01_Onac0?t=323
[jain/weirdly-perfect-ui 1:07]: https://youtu.be/neE6wOuBIP8?t=67
[jain/weirdly-perfect-ui 3:37]: https://youtu.be/neE6wOuBIP8?t=217
