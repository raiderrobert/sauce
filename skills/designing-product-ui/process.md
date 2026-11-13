# Design process

How to approach the work: working from real product references, handling generated UI, and reviewing at real size.

Practitioner heuristics, not standards: accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and the product's own design system take precedence. Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. *Note:* text is an uncited editorial caveat. Each citation (`author/video timestamp`) links to that moment in the source; the link definitions at the end of the file can be skipped, and full entries are in `references/bibliography.md`.

Contents: Working from references · Generated UI · Review and polish

## Working from references

- Work from real, simple product references (e.g. Linear-style product screenshots, as of 2026) rather than busy showcase shots, and study real software for how it handles intent, disclosure and onboarding. Real products show the answers; busy shots hide them. ([jain/dashboard-flaws 4:20], [jain/every-ui-concept 4:24], [jain/google-ai-redesign 2:44], [jain/software-must-lie 4:32], [jain/vibe-coding-pro-ui 0:59])
- Before reusing an attractive component from a showcase site such as Dribbble, check it for usability, color and contrast problems. Showcase shots often have contrast and usability issues. ([jain/crucial-ui-elements 0:05])

## Generated UI

- Don't accept a generated default layout: decide layout and card design deliberately, since that's where generated UI is weakest, then fix fonts, alignment and color. These are the biggest changes for the least time. ([jain/saas-vibe-code-mistakes 1:22], [jain/vibe-coding-pro-ui 5:06])
- When generating UI, list the specific elements it needs in the prompt (e.g. a sidebar with icons, a Gantt chart), not just its purpose. Concrete context produces far more fitting UI. ([jain/vibe-coding-pro-ui 2:54])

## Review and polish

- If a browser or screenshot tool is available, render the design at desktop (~1440px) and mobile (~390px) widths and inspect text size, color and fonts at that real size, accounting for browser chrome; otherwise state that the design was not visually verified. Judging a scaled-down preview leads to oversized type and spacing. ([jain/typography 12:09], [jain/web-design-hacks 6:24])
- **Marketing:** Apply a 5-second test: could someone scrolling for five seconds understand the idea? ([jain/captivating-sections 1:13])
- Don't trust the first animation timing values: if a browser tool is available, play the animation at real speed or capture frames and adjust; otherwise state that timings were not visually verified. ([jain/load-animations-code 16:40])

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
