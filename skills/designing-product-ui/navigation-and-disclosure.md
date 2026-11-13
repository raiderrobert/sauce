# Navigation and Progressive Disclosure

How to structure sidebars, nav bars, menus, search, pages and onboarding, and how to decide what to show versus hide in product UI.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Progressive disclosure

- Reveal secondary actions and extra context on hover (e.g. remove-user button with tooltip, logo-section CTA, issue details) instead of permanent buttons. Not main actions; revealed when the user looks for them, saving tight space. ([jain/dashboard-flaws 2:59](https://youtu.be/Ksx9C2-3yMo?t=179), [jain/landing-page-levels 9:00](https://youtu.be/eMMiLeo_UGI?t=540), [jain/think-like-product-designer 0:40](https://youtu.be/ADaQuZS04Rc?t=40))
- Show users only what they need in the moment and reveal more as required; treat what you show versus hide as hierarchy. ([jain/dashboard-flaws 2:32](https://youtu.be/Ksx9C2-3yMo?t=152), [jain/genius-designer 4:03](https://youtu.be/HE4rLEQpiXY?t=243))
- Collapse busy card actions into a triple-dot/kebab menu and reduce chips to icons, tucking secondary details there. Keeps the card clean while still available to those who care; prefer rearranging first if layout is the real problem. ([jain/finance-dashboard-redesign 8:13](https://youtu.be/Yr2uIcFZDDQ?t=493), [jain/saas-vibe-code-mistakes 1:51](https://youtu.be/PDcQJOPby1k?t=111))
- Collapse advanced options by default, including in inputs (advanced-mode toggle, token cost estimate above the input). ([jain/ai-startup-components 1:28](https://youtu.be/If7iCPDy2vk?t=88), [jain/saas-vibe-code-mistakes 2:13](https://youtu.be/PDcQJOPby1k?t=133))
- Relegate options irrelevant to most visitors (Enterprise, add-ons) to a small button opening a lightbox, not a full section. Not useful for about 98% of people passing through; add-ons aren't primary sections. ([jain/google-ai-redesign 4:53](https://youtu.be/pGYLZyBE32o?t=293), [jain/tesla-wannabe-redesign 6:24](https://youtu.be/V3Omp1hm0Sg?t=384))
- Place each action on a spectrum of explicitness: important ones always visible and labeled, minor ones as hover-only icons. ([jain/dashboard-flaws 3:26](https://youtu.be/Ksx9C2-3yMo?t=206))
- Put infrequently used actions like sharing in a popover, not permanent UI or a separate page. Not important enough to be permanent; avoids ripping users to another page. ([jain/dashboard-flaws 2:40](https://youtu.be/Ksx9C2-3yMo?t=160))
- Don't hide frequently needed content like tasks behind a button; give it its own visible section. Users shouldn't have to click to see core information. ([jain/finance-dashboard-redesign 1:41](https://youtu.be/Yr2uIcFZDDQ?t=101))
- Don't fix a crowded card by hiding secondary actions in an overflow menu; first rearrange content toward the edges. Hiding elements isn't generally the best fix; use overflow menus when there are genuinely too many actions. ([jain/weirdly-perfect-ui 1:07](https://youtu.be/neE6wOuBIP8?t=67))
- Don't clarify unclear UI by piling on comparisons, labels and tooltips. It makes the screen harder to read to make it easier to understand. ([jain/weirdly-perfect-ui 3:37](https://youtu.be/neE6wOuBIP8?t=217))
- Limit or remove options in the UI. More options leads to worse decision-making. ([jain/tiktok-ux 1:32](https://youtu.be/ixUq4HM4FNg?t=92))
- Hide filters and similar controls until they become useful, e.g. until content exists. Show only what the user needs in that moment. ([jain/macos-apps 3:41](https://youtu.be/Vy0KKvZJRH8?t=221))
- Show full item details only when the user clicks the item. ([jain/macos-apps 3:53](https://youtu.be/Vy0KKvZJRH8?t=233))
- When a card shows only a subset of items, add a 'view all' button with an add-new action beside it. Users need a way to view them all. ([jain/finance-dashboard-redesign 6:30](https://youtu.be/Yr2uIcFZDDQ?t=390))
- Tuck lengthy but important text behind a 'see more' control that slides up on hover. Too much text compared to the rest of the site. ([jain/tesla-wannabe-redesign 6:14](https://youtu.be/V3Omp1hm0Sg?t=374))
- Use a 'load more' button instead of infinite scroll. Gives users control and lets them reach the footer. ([jain/genius-designer 4:07](https://youtu.be/HE4rLEQpiXY?t=247))

## Sidebar and app navigation

- Put an account card at the top of the sidebar: avatar, name and switcher chevrons, opening a popover of account links; avoid gradient letter circles. Picture makes it identifiable, arrows show it's clickable; gradient letter circles are an AI cliché. ([jain/dashboard-ui 0:35](https://youtu.be/B7k5rOgmOGY?t=35), [jain/saas-vibe-code-mistakes 1:39](https://youtu.be/PDcQJOPby1k?t=99), [jain/vibe-coding-pro-ui 5:18](https://youtu.be/xHD01_Onac0?t=318))
- Put persistent, globally relevant elements (navigation, profile, search, team, settings) in the sidebar instead of a cluttered header. The sidebar is the spine of your product; it frees vertical space. ([jain/dashboard-ui 0:20](https://youtu.be/B7k5rOgmOGY?t=20), [jain/finance-dashboard-redesign 1:01](https://youtu.be/Yr2uIcFZDDQ?t=61))
- Give each sidebar link a recognizable icon and a short title. Icons are the secret to a great sidebar; supports collapsing and notification counts or 'new' chips. ([jain/animated-sidebar 0:25](https://youtu.be/NtZeYmTMuo4?t=25), [jain/dashboard-ui 0:43](https://youtu.be/B7k5rOgmOGY?t=43))
- Move rarely used links like Settings and Help Center to the bottom of the sidebar; drop needless group labels like 'Menu'. They are rarely used. ([jain/dashboard-ui 1:03](https://youtu.be/B7k5rOgmOGY?t=63), [jain/vibe-coding-pro-ui 5:23](https://youtu.be/xHD01_Onac0?t=323))
- Add text labels under icons when they're obscure; omit labels only for well-known icons (home, bookmark, user), using tooltips otherwise. Whether labels are needed depends on how obscure your icons are. ([jain/beginner-mistakes 4:20](https://youtu.be/AH_ugxmLeUM?t=260), [jain/crucial-ui-elements 1:34](https://youtu.be/gKM6b2EnW1k?t=94))
- Group navigation links by relevance. Navigation is all about reducing cognitive load. ([jain/dashboard-ui 0:57](https://youtu.be/B7k5rOgmOGY?t=57))
- Nest sidebar links into dropdowns as the number of links grows, and always show an active state indicator. ([jain/dashboard-ui 1:09](https://youtu.be/B7k5rOgmOGY?t=69))
- Keep metrics out of the sidebar; put them on the dashboard or a dedicated analytics tab. Click and link counts don't matter when you're on unrelated pages. ([jain/saas-vibe-code-mistakes 1:25](https://youtu.be/PDcQJOPby1k?t=85))
- Skip the sidebar entirely when navigation is very simple. Frees room for the user's content. ([jain/macos-apps 3:14](https://youtu.be/Vy0KKvZJRH8?t=194))
- Expand a collapsed sidebar only after the mouse dwells at the edge long enough. Avoids accidental pop-outs from fast mouse movement. ([jain/software-must-lie 3:46](https://youtu.be/S8DcTJm8pYM?t=226))
- Keep inactive tab bar icons clearly visible rather than dimming them to near-invisibility. The active indicator already shows which tab is selected. ([jain/crucial-ui-elements 1:04](https://youtu.be/gKM6b2EnW1k?t=64))
- Replace the generic profile tab icon with the user's profile picture once they've uploaded one. ([jain/crucial-ui-elements 1:19](https://youtu.be/gKM6b2EnW1k?t=79))
- Don't use tiny dot indicators as the way to navigate between content. Users can't be expected to click tiny circles. ([jain/finance-dashboard-redesign 5:38](https://youtu.be/Yr2uIcFZDDQ?t=338))

## Onboarding and first run

- Don't drop first-time users onto a fully loaded dashboard; design a full-screen first-login empty state highlighting the main action with an explanatory popover. They'll wonder where to start; don't only design the ideal content-filled state. ([jain/dashboard-flaws 3:50](https://youtu.be/Ksx9C2-3yMo?t=230), [jain/mobile-app-ui 6:27](https://youtu.be/Gfsd8NNuD9g?t=387))
- Sequence onboarding: one tooltip on the most important action, then the next or a checklist; never a six-bullet modal explaining everything. Users are never overwhelmed; modal content is forgotten the moment it's dismissed. ([jain/dashboard-flaws 3:56](https://youtu.be/Ksx9C2-3yMo?t=236))
- Keep onboarding minimal: pick interests, the shortest possible tutorial, then straight into the core experience. ([jain/tiktok-ux 1:10](https://youtu.be/ixUq4HM4FNg?t=70))
- Infer what users want from their behavior rather than relying mainly on stated onboarding preferences. Figure out what they want before they do. ([jain/tiktok-ux 2:17](https://youtu.be/ixUq4HM4FNg?t=137))
- Provide a skip button on optional onboarding steps, and offer search or an 'other' option alongside preset choices. Some users won't have anything to select or need something not in the presets. ([jain/beginner-mistakes 0:30](https://youtu.be/AH_ugxmLeUM?t=30))
- Ask team size early in onboarding and branch the flow; skip invite-teammates for individuals. It shapes how the next onboarding steps function. ([jain/learn-ui-in-10-minutes 7:00](https://youtu.be/9WVt1CelBfg?t=420))
- Add an escape hatch to the login page on signup screens. Many people end up on the signup page unintentionally. ([jain/learn-ui-in-10-minutes 6:37](https://youtu.be/9WVt1CelBfg?t=397))
- For email verification, either block until the code is entered or show a gentle reminder and let users continue. Neither is wrong; it's a product design choice. ([jain/learn-ui-in-10-minutes 6:44](https://youtu.be/9WVt1CelBfg?t=404))
- Show the app's value during onboarding, e.g. key insights from the user's own data, before introducing gamification. Demonstrates value before asking for engagement. ([jain/gamifying-apps 4:32](https://youtu.be/jSxxAFxjxbU?t=272))
- Use completion-driven gamification, like a profile completion meter, to get users to finish setup. It triggers our need for completion. ([jain/gamifying-apps 0:42](https://youtu.be/jSxxAFxjxbU?t=42))
- Reassure users about safety when onboarding asks for a sensitive connection like a bank account. ([jain/gamifying-apps 4:28](https://youtu.be/jSxxAFxjxbU?t=268))
- Include onboarding in desktop apps too, not just mobile. Good mobile apps all have it. ([jain/macos-apps 8:16](https://youtu.be/Vy0KKvZJRH8?t=496))
- Teach keyboard shortcuts: make users perform the key shortcut to dismiss onboarding, and provide a shortcut cheat sheet, e.g. in settings. Shortcuts are powerful but easy to forget; doing it teaches it. ([jain/macos-apps 8:34](https://youtu.be/Vy0KKvZJRH8?t=514))
- In mobile apps, concentrate captivating structure, animation and surprise in onboarding. Onboarding is the best time to captivate users. ([jain/captivating-sections 4:40](https://youtu.be/tNMAFjzapOk?t=280))
- Make onboarding next buttons both clickable and swipeable. ([jain/mobile-swipe-interactions 3:31](https://youtu.be/14h1VnkQvIc?t=211))
- Design rarely seen moments like new-feature announcements and onboarding popups. Much hidden UI is important for a finished product. ([jain/dashboard-flaws 6:02](https://youtu.be/Ksx9C2-3yMo?t=362))

## Page structure and wayfinding

- Use tabs to add related views (e.g. settings, billing) without cluttering the sidebar. Keeps users in page context; new sections become just another tab as the product scales. ([jain/dashboard-ui 6:59](https://youtu.be/B7k5rOgmOGY?t=419), [jain/saas-vibe-code-mistakes 4:43](https://youtu.be/PDcQJOPby1k?t=283))
- With one main product, skip the generic homepage or landing page and drop users straight into the product or interface. ChatGPT and Gemini do this; it's very effective. ([jain/ai-startup-components 0:43](https://youtu.be/If7iCPDy2vk?t=43), [jain/tesla-wannabe-redesign 2:05](https://youtu.be/V3Omp1hm0Sg?t=125))
- Send users to a new page only for permanent or very large context, and always include a back button or breadcrumb. ([jain/dashboard-ui 5:38](https://youtu.be/B7k5rOgmOGY?t=338))
- Don't create a dedicated page for every new feature; integrate it thoughtfully into existing UI. ([jain/dashboard-flaws 5:52](https://youtu.be/Ksx9C2-3yMo?t=352))
- Don't build pages whose only purpose is redirecting to another page. Websites need structure that makes sense, not just good looks. ([jain/tesla-wannabe-redesign 1:55](https://youtu.be/V3Omp1hm0Sg?t=115))
- Change top-bar actions and navigation based on the current page context. Actions are highly contextual per page. ([jain/mobile-app-ui 0:51](https://youtu.be/Gfsd8NNuD9g?t=51))
- Break long sequential content into chapters with a jump menu. Users can easily skip to the part they want. ([jain/spotify-wrapped-redesign 2:37](https://youtu.be/goWOAFqJHpA?t=157))
- Skip a page-outline or section navigator on short sites. Such sites aren't long enough to warrant it. ([jain/skincare-redesign 0:46](https://youtu.be/BvbFPzLjWcU?t=46))

## Website nav bars and menus

- Keep the navbar small and out of the way, but give it hierarchy: let one element, like an outlined sign-up CTA, stand out. Flat menus don't draw the eye to the most important action. ([jain/landing-page-levels 1:26](https://youtu.be/eMMiLeo_UGI?t=86), [jain/learn-ui-in-10-minutes 1:11](https://youtu.be/9WVt1CelBfg?t=71))
- Add images to dropdown and mega menus instead of plain text link lists. People don't read copy; images give quick context before clicking. ([jain/modern-layouts 6:36](https://youtu.be/VPeTgU7la34?t=396), [jain/slept-on-trends 8:44](https://youtu.be/EHwZzWd-OnQ?t=524))
- Balance the nav bar: center the main links instead of weighting everything right, and consider a search bar to even it out. Right-heavy menus don't balance the website well. ([jain/landing-page-levels 1:36](https://youtu.be/eMMiLeo_UGI?t=96), [jain/skincare-redesign 4:16](https://youtu.be/BvbFPzLjWcU?t=256))
- Use a mega menu for the most important nav links. Signals depth and that the product is worth exploring. ([jain/landing-page-levels 6:08](https://youtu.be/eMMiLeo_UGI?t=368))
- When nav links run out of room, consolidate them into a menu that animates in. The animation then serves a purpose. ([jain/genius-designer 3:43](https://youtu.be/HE4rLEQpiXY?t=223))
- Keep submenus open as the cursor heads toward them, using a hover-intent triangle based on pointer position and speed. Diagonal mouse moves otherwise close the submenu. ([jain/software-must-lie 3:02](https://youtu.be/S8DcTJm8pYM?t=182))
- Don't put social links in the top nav bar. Doesn't make sense there. ([jain/skincare-redesign 0:41](https://youtu.be/BvbFPzLjWcU?t=41))

## Search

- Collapse search until needed and expand it with animation on click or shortcut, especially when browsing is the priority. Stays out of the way while giving immediate feedback; keep it prominent when search is core. ([jain/genius-designer 3:52](https://youtu.be/HE4rLEQpiXY?t=232), [jain/macos-apps 7:08](https://youtu.be/Vy0KKvZJRH8?t=428))
- Make search prominent and always accessible. Every native Mac app does this. ([jain/macos-apps 5:31](https://youtu.be/Vy0KKvZJRH8?t=331))
- For one-screen apps, use a floating search bar with slide-out preview instead of a command palette. Command palette items usually navigate to new screens. ([jain/macos-apps 5:50](https://youtu.be/Vy0KKvZJRH8?t=350))
- When search results look like browse, show the result count and a clear X in the search bar, plus the query and a back arrow. Distinguishes search results from browsing. ([jain/macos-apps 6:22](https://youtu.be/Vy0KKvZJRH8?t=382))
