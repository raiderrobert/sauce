# Design Process and Workflow

How to approach designing product UI: starting from user intent and flows, layout-first workflow, design systems, review and polish, working with AI-generated UI, and researching references.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## User intent and flows

- Design the whole product and the user's journey (flows, function, how screens connect), not just polished screens or spacing and typography. No one hires for visuals alone; UX decisions are about the journey. ([jain/learn-ui-in-10-minutes 7:28](https://youtu.be/9WVt1CelBfg?t=448), [jain/think-like-product-designer 0:23](https://youtu.be/ADaQuZS04Rc?t=23))
- Start from user intent, e.g. a search bar for searching, and think through how users will actually interact before styling icons or cards. Otherwise you lose the plot of why you're designing. ([jain/genius-designer 0:25](https://youtu.be/HE4rLEQpiXY?t=25), [jain/macos-apps 0:49](https://youtu.be/Vy0KKvZJRH8?t=49))
- Plan the user flow first, even as boxes sketched on paper, to catch gaps early. You'll miss gaps without a flow, and users feel them instantly. ([jain/beginner-mistakes 0:39](https://youtu.be/AH_ugxmLeUM?t=39))
- Design apps as screens and sequences, not website-style sections. ([jain/think-like-product-designer 2:02](https://youtu.be/ADaQuZS04Rc?t=122))
- For each screen, ask how the user got there and what they need next. ([jain/think-like-product-designer 2:13](https://youtu.be/ADaQuZS04Rc?t=133))
- Chain small decisions into one flow and make the transitions between them feel natural. Product design is about making tiny transitions feel natural. ([jain/think-like-product-designer 2:48](https://youtu.be/ADaQuZS04Rc?t=168))
- Serve secondary intents too, e.g. browsable listings with filters for users without a destination. There can be more than one intent for a website. ([jain/genius-designer 1:01](https://youtu.be/HE4rLEQpiXY?t=61))
- Expand functionality only as user intent expands. Fonts, colors and icons change aesthetics, not functionality. ([jain/genius-designer 1:21](https://youtu.be/HE4rLEQpiXY?t=81))
- Invest in behind-the-scenes tech that removes work from the user. It creates a seamless user experience. ([jain/tiktok-ux 2:41](https://youtu.be/ixUq4HM4FNg?t=161))
- Normalize leaderboards to a local cohort when users' resources differ widely. Accounts for currency and income differences. ([jain/gamifying-apps 3:41](https://youtu.be/jSxxAFxjxbU?t=221))

## Clarity over decoration

- Prioritize making things work and feel clear (well-designed states, flows, consistent system) over visual beauty. Clarity is why users love great products; it makes them feel effortless. ([jain/genius-designer 0:04](https://youtu.be/HE4rLEQpiXY?t=4), [jain/think-like-product-designer 0:34](https://youtu.be/ADaQuZS04Rc?t=34))
- Find the minimum UI that lets content shine before adding colors or effects; cut headers or background images that do nothing for the user. They don't add functionality. ([jain/genius-designer 0:52](https://youtu.be/HE4rLEQpiXY?t=52), [jain/macos-apps 3:59](https://youtu.be/Vy0KKvZJRH8?t=239))
- Skip flashy effects like 3D or smooth-scroll when the goal is guiding users to an action. Flare might just be in the way. ([jain/genius-designer 0:19](https://youtu.be/HE4rLEQpiXY?t=19))
- Decide whether a project needs to be merely good or also interesting; businesses may only need good. Good and interesting designs are very different things. ([jain/awful-to-amazing 0:09](https://youtu.be/ulSOdTgoGeY?t=9))
- Respect users' expectations, but make the design distinct with micro-interactions or unique features. Separates the good from the genius. ([jain/genius-designer 2:02](https://youtu.be/HE4rLEQpiXY?t=122))
- Evolve, don't overhaul, a layout users have been used to for years. ([jain/spotify-wrapped-redesign 1:11](https://youtu.be/goWOAFqJHpA?t=71))

## Layout-first workflow

- Wireframe the layout before visual design, and nail it before adding animation. A good layout carries the design; a boring wireframe makes the rest follow suit. ([jain/awful-to-amazing 0:30](https://youtu.be/ulSOdTgoGeY?t=30), [jain/google-ai-redesign 3:45](https://youtu.be/pGYLZyBE32o?t=225))
- Start a redesign by assessing the hierarchy and cutting elements that don't earn their place. ([jain/finance-dashboard-redesign 0:52](https://youtu.be/Yr2uIcFZDDQ?t=52))
- Rank each dashboard module into high, mid or low priority tiers before arranging the layout. Priority tiers determine placement in the grid. ([jain/finance-dashboard-redesign 3:51](https://youtu.be/Yr2uIcFZDDQ?t=231))
- Iterate through several layout options for a section (he tried about four) until one feels right. That is how you iterate to find the best design. ([jain/google-ai-redesign 6:24](https://youtu.be/pGYLZyBE32o?t=384))
- 'Frankenstein' a wireframe by combining sections from sites you like to work out message and flow; keep only the wireframe. Creates something that resonates. ([jain/vibe-coding-cant-fix 3:10](https://youtu.be/RCneB_MQ7qs?t=190))
- Define layout and visual identity separately so different identities can be swapped into the same wireframe. Same layout with a different identity yields wildly different feelings. ([jain/vibe-coding-cant-fix 6:51](https://youtu.be/RCneB_MQ7qs?t=411))
- Start the visual identity from one mood image, gather similar images, and aim to convey the brand's feeling rather than follow a formula. Escapes sterile light modes and flat, typical dark modes. ([jain/vibe-coding-cant-fix 1:46](https://youtu.be/RCneB_MQ7qs?t=106))

## Design systems and consistency

- Define spacing, typography scales and interaction patterns as a system; enforce it with color styles, measurement variables and reusable components. Developing the system creates an architecture for expansion and brings the design together. ([jain/beginner-mistakes 3:24](https://youtu.be/AH_ugxmLeUM?t=204), [jain/genius-designer 4:50](https://youtu.be/HE4rLEQpiXY?t=290))
- Size the design system to the team: lightweight and flexible for startups, deeply defined for large orgs. The system has to reflect the values of the team. ([jain/genius-designer 4:33](https://youtu.be/HE4rLEQpiXY?t=273))
- Treat the design system as a shared language; break its rules only with intention. Mastery means knowing when to bend the rules. ([jain/genius-designer 5:03](https://youtu.be/HE4rLEQpiXY?t=303))
- Derive font sizes from a mathematical scale instead of eyeballing one page and building the style guide from it. Eyeballing isn't wrong but can be improved. ([jain/typography 7:17](https://youtu.be/7sUUzOCv47U?t=437))
- Reuse a small set of trusted fonts across projects instead of endlessly hunting for the perfect one. You'll use the same three fonts for 90% of projects, and that's okay. ([jain/typography 3:00](https://youtu.be/7sUUzOCv47U?t=180))
- Generate the accent color ramp with a tool like UI Colors. Helps when switching to dark mode. ([jain/60-30-10-rule 2:34](https://youtu.be/66oOi9OLMCw?t=154))

## Review and polish

- Review designs on the actual target screen or device, accounting for browser bar space, to check text size, color and fonts. Zoomed-out canvases lead to oversized fonts and spacing. ([jain/typography 12:09](https://youtu.be/7sUUzOCv47U?t=729), [jain/web-design-hacks 6:24](https://youtu.be/Lp6ey4AyDzA?t=384))
- Polish many small details rather than looking for one big change. The difference between good and great is almost never one big thing. ([jain/landing-page-levels 7:21](https://youtu.be/eMMiLeo_UGI?t=441))
- Check for commonly missed elements: navigation links, hidden states, hovers and micro-interactions. ([jain/beginner-mistakes 0:55](https://youtu.be/AH_ugxmLeUM?t=55))
- Design every tab's content in tabbed or clickable multi-section components before handoff. Otherwise devs or clients get a site with half the content missing. ([jain/modern-layouts 3:54](https://youtu.be/VPeTgU7la34?t=234))
- Apply a 5-second test: could someone scrolling for 5 seconds understand the idea? ([jain/captivating-sections 1:13](https://youtu.be/tNMAFjzapOk?t=73))
- Tune animation timings by eye in the browser rather than trusting the first values. ([jain/load-animations-code 16:40](https://youtu.be/d4MF6pdAZNw?t=1000))
- Don't drop in the first good-looking Dribbble component; check it for usability, color and contrast problems first. Visually appealing shots often have color, contrast and usability issues. ([jain/crucial-ui-elements 0:05](https://youtu.be/gKM6b2EnW1k?t=5))

## Working with AI-generated UI

- Never let AI choose your layout; spend human design time on the layouts and cards of AI-built apps. AI is bad at complex layouts and cards; least time for the largest change. ([jain/saas-vibe-code-mistakes 1:22](https://youtu.be/PDcQJOPby1k?t=82))
- When polishing AI-generated UI, fix fonts, alignment and color first. Biggest changes and what screws up most real sites; pair with taking over layout and cards. ([jain/vibe-coding-pro-ui 5:06](https://youtu.be/xHD01_Onac0?t=306))
- Upload a reference image for a specific style, using realistic, simple product screenshots (e.g. Linear, siteinspire) rather than busy Dribbble shots. AI can't see busy Dribbble details and just excludes them. ([jain/vibe-coding-pro-ui 0:59](https://youtu.be/xHD01_Onac0?t=59))
- State in the prompt the UI's purpose and intended use, and name specific elements needed, like sidebars with icons or Gantt charts. Provides a lot of extra context. ([jain/vibe-coding-pro-ui 2:54](https://youtu.be/xHD01_Onac0?t=174))
- Tell the AI explicitly that you want it to design something, and to write HTML and CSS if exporting to Figma. Occasionally it won't recognize that's what you want. ([jain/vibe-coding-pro-ui 2:41](https://youtu.be/xHD01_Onac0?t=161))
- Tell the AI to use an icon library. Otherwise it uses emojis. ([jain/vibe-coding-pro-ui 3:23](https://youtu.be/xHD01_Onac0?t=203))
- Make small tweaks like alignment or sticky sidebars manually rather than re-prompting the AI. Small tweaks are better done directly in the design tool. ([jain/vibe-coding-pro-ui 4:03](https://youtu.be/xHD01_Onac0?t=243))

## Research and references

- Search for existing assets and real-world designs from good sources before starting a project. You may find something much better than what you'd make. ([jain/every-ui-concept 4:24](https://youtu.be/EcbgbKtOELY?t=264), [jain/google-ai-redesign 2:44](https://youtu.be/pGYLZyBE32o?t=164))
- Study lots of real software to learn how great products handle user intent, progressive disclosure, explicitness and onboarding. It's the only way to get better at guessing intent. ([jain/dashboard-flaws 4:20](https://youtu.be/Ksx9C2-3yMo?t=260), [jain/software-must-lie 4:32](https://youtu.be/S8DcTJm8pYM?t=272))
- Build a swipe file of about 20 inspiring hero and feature sections, then dissect their spacing, hierarchy and grouping. You start to see patterns like proximity, contrast, consistency and hierarchy. ([jain/learn-ui-in-10-minutes 2:21](https://youtu.be/9WVt1CelBfg?t=141))
- To learn, copy a design you like exactly instead of redesigning it. Forces you to notice details like card gaps, nav height, button padding. ([jain/learn-ui-in-10-minutes 2:56](https://youtu.be/9WVt1CelBfg?t=176))
- Restyle one layout twice, once warm and friendly and once modern and premium, to practice UI flavors. That's how you develop different flavors of website. ([jain/learn-ui-in-10-minutes 9:00](https://youtu.be/9WVt1CelBfg?t=540))
- Study other sites' scroll animations for inspiration, then experiment with them. ([jain/trendy-web-animations 3:54](https://youtu.be/ZsP20PN14O0?t=234))
