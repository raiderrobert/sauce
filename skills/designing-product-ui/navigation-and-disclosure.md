# Navigation and disclosure

Progressive disclosure, sidebars and app navigation, page structure, onboarding and engagement, website nav bars and search.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a product-UI rule translated from the cited game-design Source principle, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Progressive disclosure · Sidebar and app navigation · Tabs · Page structure and wayfinding · Onboarding and engagement · Website nav bars and menus · Search

## Progressive disclosure

- Place each action on a spectrum of explicitness: important actions always visible and labeled; minor ones (e.g. remove-user, extra details) as icons revealed on hover, duplicated elsewhere such as the context menu. Saves tight space; minor actions appear when users look for them, and touch has no hover state. *Note: Also reveal on keyboard focus; on touch, keep the action reachable (menu or swipe).* ([apple/touch-on-mac 13:05], [jain/dashboard-flaws 2:59], [jain/landing-page-levels 9:00], [jain/think-like-product-designer 0:40], [nngroup/theory-of-user-delight ¶advanced-options-appear-when])
- Show only what's needed now, revealing more on demand: filters once content exists, a few items with a see-all by the section title, inline-expanding create forms, details on click. What you show versus hide is itself hierarchy. ([apple/design-foundations 9:01], [jain/dashboard-flaws 2:32], [jain/genius-designer 4:03], [jain/macos-apps 3:41], [schoger/resolute 9:28])
- Before hiding actions in an overflow (kebab) menu, try rearranging content toward the card's edges; when a card is still busy, collapse its buttons into an overflow menu and chips to icons, but avoid hiding just one or two actions there if there's space to show them. Overflow menus have low information scent and hide actions, but they keep a crowded card clean. ([jain/finance-dashboard-redesign 8:13], [jain/saas-vibe-code-mistakes 1:51], [jain/weirdly-perfect-ui 1:07], [nngroup/overflow-menu-icons 2:00])
- Reduce options and explanation rather than piling on labels, comparisons and tooltips to clarify unclear UI. More options worsen decisions, and extra explanation makes the screen harder to read. ([jain/tiktok-ux 1:32], [jain/weirdly-perfect-ui 3:37], [vohra/designing-for-flow ¶make-functions-visible-and])
- Collapse advanced options by default, including in inputs (e.g. an advanced-mode toggle). ([jain/ai-startup-components 1:28], [jain/saas-vibe-code-mistakes 2:13])
- Put features hardly anyone uses, but those few value highly, behind a preference or an invisible trigger, e.g. right-clicking the logo offers logo assets. Serves the few who look without cluttering the main UI for everyone else. *Note: Only for niche extras; frequent actions stay visible (see the rules on frequent content and long-press below).* ([saffer/microinteractions 16:02], [slack/easter-eggs ¶include-features-in-the])
- **App UI:** Don't hide frequently needed content such as tasks behind a button or in a non-default tab; give it its own visible section. Users shouldn't have to click to see core information; the default tab gets more attention. ([jain/finance-dashboard-redesign 1:41], [nngroup/tabs-humble-powerful 2:17])
- Avoid hiding frequent actions behind long-press or alternate modes; reserve modes for infrequent tasks that would otherwise disrupt the main flow, like editing a city list. Hiding frequent actions adds steps and waiting; the task's complexity doesn't go away. ([nngroup/simplicity 1:28], [saffer/microinteractions 30:06])
- Signal content beyond view: clip scrolling content at the bottom edge, use a slightly off-balance card row to hint at horizontal scroll, and show a paging indicator for multiple pages. Gestures aren't obvious; visual cues invite people to reveal more. ([apple/designing-fluid-interfaces ¶you-can-clip-the], [nngroup/principles-stripe 2:50])
- **Marketing:** Relegate options irrelevant to most visitors (Enterprise, add-ons) to a small button that opens a lightbox, not a full section. Not useful to about 98% of visitors. ([jain/google-ai-redesign 4:53], [jain/tesla-wannabe-redesign 6:24])
- On lists with a footer or finite content, use a 'Load more' button instead of infinite scroll. Gives users control and lets them reach the footer. *Note: Endless feeds may infinite-scroll; keep footer links reachable elsewhere.* ([jain/genius-designer 4:07])
- Use overflow menus (⋯ and ⋮ read the same) for one element's secondary actions, not main navigation; place them near that element and avoid small, low-contrast dots. Away from an element they're mistaken for show-more controls; small, faint dots go unnoticed. *Note: For accessibility, give the trigger an accessible name such as 'More actions for <item>' and a 24×24px minimum target.* ([nngroup/overflow-menu-icons 0:19])

## Sidebar and app navigation

- **App UI:** Use the standard app frame: persistent, global elements (navigation, profile, search, team, settings) in the sidebar, page-level actions in a top bar that changes with the current page, content in the center. The sidebar is the product's spine and frees vertical space; actions are contextual per page. ([jain/dashboard-ui 0:20], [jain/finance-dashboard-redesign 1:01], [jain/macos-apps 2:42], [jain/mobile-app-ui 0:51])
- **App UI:** Give each sidebar link a recognizable icon and a short title so the sidebar can collapse to icons; for when icons need visible labels or tooltips, see also components-and-states.md. Icons make a sidebar scannable and collapsible. ([jain/animated-sidebar 0:25], [jain/beginner-mistakes 4:20], [jain/crucial-ui-elements 1:34], [jain/dashboard-ui 0:43])
- **App UI:** Top the sidebar with an account or project switcher, not just the app name: avatar, name and switcher chevrons opening a popover of account links. Avoid gradient letter-circle avatars. A picture is identifiable and chevrons show it's clickable; AI tools tend to generate gradient letter circles. *Note: For the no-photo fallback, see the avatar rule in data-and-dashboards.md.* ([jain/dashboard-ui 0:35], [jain/saas-vibe-code-mistakes 1:39], [jain/vibe-coding-pro-ui 5:18], [schoger/dashboard-with-ai 0:51:43])
- **App UI:** Move rarely used links such as Settings and Help to the bottom of the sidebar, separated from frequent links by a divider, and drop needless group labels like 'Menu'. ([jain/dashboard-ui 1:03], [jain/vibe-coding-pro-ui 5:23], [schoger/resolute 12:56])
- Mark the active nav item with color, not weight: a light or white background, a 4px brand-color left border and brand-colored icon, with other links slightly lighter. A bolder active state shifts layout between pages; hints of color draw attention. *Note: Tabs differ: a bolder label is an accepted selected-tab cue (see Tabs). For accessibility, keep lightened links at 4.5:1 text contrast and mark the active link with aria-current="page".* ([schoger/bad-about 9:55], [schoger/resolute 12:31], [schoger/transistor 4:04])
- **App UI:** Use tabs for related views (e.g. settings, billing) instead of more sidebar links. Keeps users in context; new sections become another tab as the product grows. ([jain/dashboard-ui 6:59], [jain/saas-vibe-code-mistakes 4:43])
- **App UI:** Show each action's keyboard shortcut in app and context menus, separated from the label by alignment and type, e.g. right-aligned in secondary text. Teaches and reminds users of shortcuts; the structure shows what is clickable and what is a hint. *Note: For the Cmd/Ctrl+K command menu, see interaction-feel.md.* ([eldh/invisible-details ¶contextual-menus-are-also], [jain/captivating-sections 4:22])
- Bring data forward onto entry points: show item counts beside nav links and key live status on icons or tiles, so users needn't open them. Counts clarify what hides behind show-more; users shouldn't have to go all the way in. ([saffer/microinteractions 18:30], [schoger/bad-about 9:43])
- **App UI:** Group navigation links by relevance and nest them into collapsible groups as they grow. Navigation is about reducing cognitive load. ([jain/dashboard-ui 0:57])
- **App UI:** If a collapsed sidebar expands on hover, expand it only after the pointer dwells at the edge. Avoids accidental pop-outs from fast mouse movement. ([jain/software-must-lie 3:46])
- Use real links, not buttons, for navigation so users can open destinations in a new tab, copy or bookmark them. Buttons don't support those behaviors. ([nngroup/buttons-vs-links 1:02])

## Tabs

- Use tabs only for a few essential, clearly grouped views users needn't compare; show all at once, avoiding scrolling or multi-row tab lists, and treat more than seven as a warning sign. Users should see every option at a glance; each extra tab is another decision, and comparing means switching. ([apple/design-foundations 5:22], [nngroup/better-tabs 3:09], [nngroup/tabs-humble-powerful 1:46])
- Use tabs only to switch views: not for actions like Add, not to scroll to page sections, and don't mix in-page and navigation tabs in one control. Users expect tabs to toggle the view and behave alike; put Add inside the section where it's used. ([apple/design-foundations 6:01], [nngroup/tabs-humble-powerful 4:40], [schoger/wss 0:51])
- Mark the selected tab with two or more cues (high-contrast fill joined to the panel, 4px+ underline, bolder or darker label); keep unselected labels at accessible contrast. Users must spot the active tab instantly, especially with only two tabs; faded tabs get ignored. *Note: In CSS, reserve the bold label's width (e.g. a hidden bold copy) so selection doesn't shift tabs. For accessibility, expose selection with aria-selected.* ([nngroup/better-tabs 0:37])

## Page structure and wayfinding

- Break long sequential content into chapters with a jump menu, e.g. a sticky left nav of anchor links when sections sit below the fold; skip section navigators on short pages. Users skip to what they want and learn sections exist below the fold; short pages don't need it. ([jain/skincare-redesign 0:46], [jain/spotify-wrapped-redesign 2:37], [schoger/bad-about 6:46])
- If the product is a single tool users come to use directly (e.g. a prompt-based AI tool), you can skip the separate marketing landing page and open straight into the interface; if a marketing site covers a single product, skip the generic homepage and open on that product's page. The moment you land, you're in the interface; ChatGPT and Gemini did this as of 2025. ([jain/ai-startup-components 0:43], [jain/tesla-wannabe-redesign 2:05])
- Integrate new features into existing UI rather than giving each its own page, and don't build pages whose only purpose is redirecting elsewhere, e.g. a single-section page whose only content is a link to the page with the real information. Structure should make sense, not just look good. ([jain/dashboard-flaws 5:52], [jain/tesla-wannabe-redesign 1:55])
- Use the scrollbar for wayfinding in long content: mark find-in-page matches on it, and let users drop a landmark to jump back to. Users see where matches occur and keep their place when scrolling back to check something. *Note: For accessibility, also offer a keyboard way to set and return to the landmark.* ([freiberg/invisible-details ¶double-tapping-the-scrollbar], [saffer/microinteractions 28:23])
- Give every screen orientation: a toolbar titled with the screen's name, not branding, holding only essential screen-specific actions and a back button; don't open on a menu. Users shouldn't wonder where they are or how they got here; menus are vague and unpredictable. *Note: For animating a new screen out of the item that opened it, see motion.md.* ([apple/design-foundations 2:03])
- **App UI:** Inside a task flow, remove the bottom nav and alert icons, but give a back button to exit the flow. They might distract; users still need a way to navigate out. *Note: Contrasts with keeping the nav bar on checkout pages reached from promo links (see Website nav bars): hide chrome only in flows users entered from within the app.* ([kennedy/wodify-redesign 2:26])
- Organize large sets by LATCH (location, alphabet, time, category, hierarchy): alphabetical when users know exact names, reverse-chronological feeds, category filters; offer two schemes, like list plus map, where useful. Turns an overwhelming dataset into meaningful organization; alphabetical order lets users skip irrelevant entries. ([nngroup/latch 0:39])
- **From games:** Use spatial transitions to preserve a sense of place, but drop stylistic navigation once it costs users extra steps on common tasks. A point of view helps until it slows the user down. Source principle: Design navigation for flavor over efficiency (a folding box, sliding drawers) to keep players' sense of place, but compromise once it costs players too many clicks. *Note: Under prefers-reduced-motion, use an instant swap or a crossfade.* ([sakamoto/hearthstone-immersive-ui 15:13])

## Onboarding and engagement

- **App UI:** Don't drop first-time users onto a fully loaded dashboard; design a first-login empty state that highlights the main action with an explanatory popover. They'll wonder where to start. ([jain/dashboard-flaws 3:50], [jain/mobile-app-ui 6:27])
- **App UI:** Sequence onboarding: one tooltip on the most important action, then the next or a checklist, not a modal with six bullets explaining everything. Users aren't overwhelmed; modal content is forgotten the moment it closes. ([jain/dashboard-flaws 3:56])
- **From games:** Introduce each new feature alone, simple before advanced, and add inline guidance where testing shows users get stuck. A focused introduction is memorable, and testing reveals where people get lost. Source principle: Give each new enemy a scene where it's the sole focus, escalate threat gradually, and keep exposition in-game, adding cues where playtesters get lost. ([valve/half-life-documentary 0:22:53])
- **App UI:** In consumer feed or content apps, keep onboarding minimal (pick interests, shortest possible tutorial, then the core experience) and infer preferences from behavior rather than relying on stated answers. Figure out what users want before they do. ([jain/tiktok-ux 1:10])
- **App UI:** Offer a skip button on optional onboarding steps, plus search or an 'Other' option next to preset choices. Some users won't fit the presets. ([jain/beginner-mistakes 0:30])
- **App UI:** If the product serves both teams and individuals, ask team size early in onboarding and branch the flow; skip invite-teammates for individuals. It shapes every following step. ([jain/learn-ui-in-10-minutes 7:00])
- **App UI:** Show the app's value during onboarding (e.g. insights from the user's own data) before introducing gamification, and reassure users about safety when asking for a sensitive connection like a bank account. Demonstrates value before asking for engagement or trust. ([jain/gamifying-apps 4:28])
- **App UI:** If the product has keyboard shortcuts, teach them by having users press a shortcut to dismiss onboarding, and provide a shortcut cheat sheet (e.g. in settings). Doing it teaches it; shortcuts are easy to forget. ([jain/macos-apps 8:34])
- **App UI:** If the product already uses gamification, center it on one currency (XP, karma) that shows progress and unlocks features, and tie rewards to users' real goals. Progress and unlocks keep users going; meaningless rewards don't. *Note: Only for products with a progress loop users already care about; bolted-on points and badges hurt (see interaction-feel.md).* ([jain/gamifying-apps 0:57])
- **App UI:** If the product already uses gamification and users benefit from comparing with friends, add leaderboards and public badges; normalize leaderboards to a local cohort when users' resources differ widely. Comparison motivates, but only when it's fair across currencies and incomes. *Note: Same condition: leaderboards and badges suit an existing progress loop users care about, not a bolted-on one.* ([jain/gamifying-apps 1:22])

## Website nav bars and menus

- Show navigation up front when there's room rather than burying it to look clean; if you must hide it, use the standard three-line icon, top-left, without borders. Hidden navigation is less discoverable and costs an extra click; icon variants and borders confuse users. ([apple/principles-of-great-design 11:20], [nngroup/hamburger-icon 0:43], [nngroup/theory-of-user-delight ¶the-hidden-links-with])
- **Marketing:** Keep the navbar small and out of the way but give it hierarchy: let one element, like an outlined sign-up CTA, stand out. Flat menus don't draw the eye to the most important action. ([jain/landing-page-levels 1:26], [jain/learn-ui-in-10-minutes 1:11])
- **Marketing:** Balance the nav bar: center the main links rather than weighting everything right; a search bar can even it out. Right-heavy menus unbalance the page. ([jain/landing-page-levels 1:36], [jain/skincare-redesign 4:16])
- **Marketing:** Add images to dropdown and mega menus instead of plain lists of text links. Images give quick context before clicking. *Note: For keeping submenus open on diagonal pointer moves, see components-and-states.md.* ([jain/modern-layouts 6:36], [jain/slept-on-trends 8:44])
- **Marketing:** Use a mega menu only when there are enough destinations to fill it (e.g. several products or resource groups). With real depth, it signals the product is worth exploring; with few links it's empty. ([jain/landing-page-levels 6:08])
- Keep the nav bar on checkout and other pages users may reach from promotional links, so they have context. Without navigation, users are cut off from the rest of the site. ([schoger/wp-pusher-checkout 4:04])
- Left-align top-bar nav links snug with the logo instead of centering them between logo and actions. Three separated groups feel busy. *Note: Disagrees with centering links to balance a right-heavy marketing navbar (above): left-align in app headers and simple bars; center when a heavy right side needs balancing.* ([schoger/designing-with-claude-code 0:18:42])

## Search

- Make search a prominent, always-visible bar when it is the primary task of the screen; when it is secondary or space is tight, collapse it to a magnifying-glass icon that expands with a short animation on click or keyboard shortcut. Search should be instantly reachable without crowding screens where browsing comes first. ([jain/genius-designer 3:52], [jain/macos-apps 5:31], [jain/micro-animations 7:04])
- Place search to signal its scope: one primary entry point (Search tab or sidebar item) for app-wide search; inline under a section's title, with descriptive placeholder, for that section only. Placement sets expectations; search placed over content it doesn't search misleads. *Note: For accessibility, placeholder text doesn't replace an accessible label for the field.* ([apple/intuitive-search 3:41])
- **App UI:** On a Search tab, show a landing page of suggested categories when content is broad and people explore; open the keyboard immediately when people usually know what they want. Suggestions ground explorers in what's available; known-item seekers are never more than a tap away. ([apple/intuitive-search 6:20])
- **App UI:** When search results look like browse, show the result count, the query, a clear X in the search bar and a back arrow. Distinguishes results from browsing. ([jain/macos-apps 6:22])

[apple/design-foundations 2:03]: https://youtu.be/dGcqqA3Sl-o?t=123
[apple/design-foundations 5:22]: https://youtu.be/dGcqqA3Sl-o?t=322
[apple/design-foundations 6:01]: https://youtu.be/dGcqqA3Sl-o?t=361
[apple/design-foundations 9:01]: https://youtu.be/dGcqqA3Sl-o?t=541
[apple/designing-fluid-interfaces ¶you-can-clip-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=you%20can%20clip%20the%20content%20off
[apple/intuitive-search 3:41]: https://youtu.be/lx45sKEnZkU?t=221
[apple/intuitive-search 6:20]: https://youtu.be/lx45sKEnZkU?t=380
[apple/principles-of-great-design 11:20]: https://youtu.be/Xa9L2yx_QH8?t=680
[apple/touch-on-mac 13:05]: https://youtu.be/2cq3ytwLrLk?t=785
[eldh/invisible-details ¶contextual-menus-are-also]: https://linear.app/now/invisible-details#:~:text=contextual%20menus%20are%20also%20a%20great
[freiberg/invisible-details ¶double-tapping-the-scrollbar]: https://rauno.me/craft/interaction-design#:~:text=double%20tapping%20the%20scrollbar%20will%20place
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
[kennedy/wodify-redesign 2:26]: https://youtu.be/OdS7fOS7bTk?t=146
[nngroup/better-tabs 0:37]: https://youtu.be/hPxrudx1iXg?t=37
[nngroup/better-tabs 3:09]: https://youtu.be/hPxrudx1iXg?t=189
[nngroup/buttons-vs-links 1:02]: https://youtu.be/hb_QYE2itO4?t=62
[nngroup/hamburger-icon 0:43]: https://youtu.be/1au4Gff9cSo?t=43
[nngroup/latch 0:39]: https://youtu.be/xdkPLINAUU0?t=39
[nngroup/overflow-menu-icons 0:19]: https://youtu.be/Lo_miuSgQv8?t=19
[nngroup/overflow-menu-icons 2:00]: https://youtu.be/Lo_miuSgQv8?t=120
[nngroup/principles-stripe 2:50]: https://youtu.be/qooOXNmdCH4?t=170
[nngroup/simplicity 1:28]: https://youtu.be/utnOhRSXkyw?t=88
[nngroup/tabs-humble-powerful 1:46]: https://youtu.be/7ntSojFW5Jg?t=106
[nngroup/tabs-humble-powerful 2:17]: https://youtu.be/7ntSojFW5Jg?t=137
[nngroup/tabs-humble-powerful 4:40]: https://youtu.be/7ntSojFW5Jg?t=280
[nngroup/theory-of-user-delight ¶advanced-options-appear-when]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=Advanced%20options%20appear%20when%20the%20user
[nngroup/theory-of-user-delight ¶the-hidden-links-with]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=the%20hidden%20links%20with%20little%20information
[saffer/microinteractions 16:02]: https://youtu.be/9CEtqnPdWoI?t=962
[saffer/microinteractions 18:30]: https://youtu.be/9CEtqnPdWoI?t=1110
[saffer/microinteractions 28:23]: https://youtu.be/9CEtqnPdWoI?t=1703
[saffer/microinteractions 30:06]: https://youtu.be/9CEtqnPdWoI?t=1806
[sakamoto/hearthstone-immersive-ui 15:13]: https://youtu.be/axkPXCNjOh8?t=913
[schoger/bad-about 6:46]: https://youtu.be/S6-q5BheEYU?t=406
[schoger/bad-about 9:43]: https://youtu.be/S6-q5BheEYU?t=583
[schoger/bad-about 9:55]: https://youtu.be/S6-q5BheEYU?t=595
[schoger/dashboard-with-ai 0:51:43]: https://youtu.be/lQCWuOT5ENQ?t=3103
[schoger/designing-with-claude-code 0:18:42]: https://youtu.be/lkKGQVHrXzE?t=1122
[schoger/resolute 12:31]: https://youtu.be/BMHUKij1yUE?t=751
[schoger/resolute 12:56]: https://youtu.be/BMHUKij1yUE?t=776
[schoger/resolute 9:28]: https://youtu.be/BMHUKij1yUE?t=568
[schoger/transistor 4:04]: https://youtu.be/ZT4WRRhacWk?t=244
[schoger/wp-pusher-checkout 4:04]: https://youtu.be/5gdYHlYAKDY?t=244
[schoger/wss 0:51]: https://youtu.be/ZJj7uNdzPpM?t=51
[slack/easter-eggs ¶include-features-in-the]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=include%20features%20in%20the%20product%20that
[valve/half-life-documentary 0:22:53]: https://youtu.be/TbZ3HzvFEto?t=1373
[vohra/designing-for-flow ¶make-functions-visible-and]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=Make%20functions%20visible%2C%20and%20limit%20alternative
