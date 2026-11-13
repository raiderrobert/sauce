# Design process

How to approach the work: working from real product references, handling generated UI, and reviewing at real size.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a game-design principle whose *Note* translates it to product UI, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Working from references · Generated UI · Review and polish · Redesigning existing UI

## Working from references

- If the user supplies or names a reference product or image, follow its patterns, including how it handles intent, disclosure and onboarding; take the simple, realistic parts rather than busy showcase detail. Real products show the answers; busy shots hide them. ([jain/dashboard-flaws 4:20], [jain/every-ui-concept 4:24], [jain/google-ai-redesign 2:44], [jain/software-must-lie 4:32], [jain/vibe-coding-pro-ui 0:59])
- Before reusing an attractive component from a showcase site such as Dribbble, check it for usability, color and contrast problems. Showcase shots often have contrast and usability issues. ([jain/crucial-ui-elements 0:05])

## Generated UI

- Check the layout first: if the result is the default sidebar + KPI row + one chart (or another stock layout and card design), confirm the content actually ranks that way and change the layout if it doesn't; then check fonts, alignment and color. Generated UI is weakest at complex layouts and cards, where a little effort makes the biggest change; fonts, alignment and color are the next biggest fixes. ([jain/saas-vibe-code-mistakes 1:22], [jain/vibe-coding-pro-ui 5:06])
- Check the result for the specific elements the request implies (e.g. a sidebar with icons, a Gantt chart), not just its purpose; if it could fit any product with the same purpose, it is too generic. Concrete elements produce far more fitting UI. ([jain/vibe-coding-pro-ui 2:54])
- Audit generated UI for AI red flags, such as really saturated grays, lots of containers and indigo accents, and move away from them. Moving away from them made the design look cleaner, more modern and not AI-generated. ([schoger/dashboard-with-ai 1:00:23])
- When implementing from a screenshot, check the output for copied capture artifacts, such as the device status bar or a gallery watermark, and remove them. Fed screenshots, AI tends to build the literal status bar; tools also copied a library watermark into the UI. ([raroque/ai-follow-my-designs 4:09])

## Review and polish

- If a browser or screenshot tool is available, render the design at the desktop and mobile sizes it is meant for and inspect text size, color and fonts at that real size; otherwise state that the design was not visually verified. Judging a scaled-down preview leads to oversized type and spacing. *Note: Editorial: e.g. about 1440px desktop and 390px mobile widths, accounting for browser chrome.* ([jain/typography 12:09], [jain/web-design-hacks 6:24], [raroque/app-design-process 1:32])
- Don't trust the first animation timing values: if a browser tool is available, play the animation at real speed or capture frames and adjust; otherwise state that timings were not visually verified. Animations usually take trial and error; the last 10% takes a lot of back-and-forth, and reviewing again later with fresh eyes reveals imperfections. ([jain/load-animations-code 16:40], [kowalski/great-animations ¶i-like-to-review], [raroque/ai-follow-my-designs 30:13])
- Review prototypes with real data, or data as close to real as possible (e.g. a long scrolling list of 200 names from a real address book), not polished fake data. Fake data can make everything look really good and hide UX problems. *Note: Editorial: include long strings, empty values and large counts.* ([ording/rubber-band ¶he-took-a-list], [raroque/app-design-process 1:51])
- **Marketing:** Apply a 5-second test: could someone scrolling for five seconds understand the idea? ([jain/captivating-sections 1:13])

## Redesigning existing UI

- **App UI:** When redesigning a tool people use daily, avoid moving buttons, renaming labels or changing shortcuts where possible; add new workflows alongside old ones, opt-in at first. Regular users rely on learned workflows; changes force them to stop and think. ([nngroup/legacy-users-complex-apps 1:26], [schoger/resolute 0:25])
- Before iterating on a redesign, preserve the original design on a separate page (or recreate it there afterwards) so before and after can be compared. Lets you compare the new design to the original when done. ([schoger/dashboard-with-ai 0:03:45], [schoger/designing-with-claude-code 0:58:58])

[jain/captivating-sections 1:13]: https://youtu.be/tNMAFjzapOk?t=73
[jain/crucial-ui-elements 0:05]: https://youtu.be/gKM6b2EnW1k?t=5
[jain/dashboard-flaws 4:20]: https://youtu.be/Ksx9C2-3yMo?t=260
[jain/every-ui-concept 4:24]: https://youtu.be/EcbgbKtOELY?t=264
[jain/google-ai-redesign 2:44]: https://youtu.be/pGYLZyBE32o?t=164
[jain/load-animations-code 16:40]: https://youtu.be/d4MF6pdAZNw?t=1000
[jain/saas-vibe-code-mistakes 1:22]: https://youtu.be/PDcQJOPby1k?t=82
[jain/software-must-lie 4:32]: https://youtu.be/S8DcTJm8pYM?t=272
[jain/typography 12:09]: https://youtu.be/7sUUzOCv47U?t=729
[jain/vibe-coding-pro-ui 0:59]: https://youtu.be/xHD01_Onac0?t=59
[jain/vibe-coding-pro-ui 2:54]: https://youtu.be/xHD01_Onac0?t=174
[jain/vibe-coding-pro-ui 5:06]: https://youtu.be/xHD01_Onac0?t=306
[jain/web-design-hacks 6:24]: https://youtu.be/Lp6ey4AyDzA?t=384
[kowalski/great-animations ¶i-like-to-review]: https://emilkowal.ski/ui/great-animations#:~:text=I%20like%20to%20review%20my%20work
[nngroup/legacy-users-complex-apps 1:26]: https://youtu.be/tnZtSbJR0_E?t=86
[ording/rubber-band ¶he-took-a-list]: https://www.cultofmac.com/news/bas-ording-rubber-band-effect-iphone#:~:text=He%20took%20a%20list%20of%20200
[raroque/ai-follow-my-designs 30:13]: https://youtu.be/18V3lFePdWU?t=1813
[raroque/ai-follow-my-designs 4:09]: https://youtu.be/18V3lFePdWU?t=249
[raroque/app-design-process 1:32]: https://youtu.be/H0czeRyXPxA?t=92
[raroque/app-design-process 1:51]: https://youtu.be/H0czeRyXPxA?t=111
[schoger/dashboard-with-ai 0:03:45]: https://youtu.be/lQCWuOT5ENQ?t=225
[schoger/dashboard-with-ai 1:00:23]: https://youtu.be/lQCWuOT5ENQ?t=3623
[schoger/designing-with-claude-code 0:58:58]: https://youtu.be/lkKGQVHrXzE?t=3538
[schoger/resolute 0:25]: https://youtu.be/BMHUKij1yUE?t=25
