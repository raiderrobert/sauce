# Depth and polish

Shadows, borders, corner radii, icons, imagery, gradients, texture and decorative touches that add depth and finish without clutter.

Practitioner heuristics, not standards: accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and the product's own design system take precedence. Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. *Note:* text is an uncited editorial caveat. Each citation (`author/video timestamp`) links to that moment in the source; the link definitions at the end of the file can be skipped, and full entries are in `references/bibliography.md`.

Contents: Restraint · Shadows · Surfaces, borders and corners · Icons · Imagery and text over images · Style and decoration · Gradients, texture and effects

## Restraint

- Use the fewest elements and effects that communicate: apply shadows, glows and gradients sparingly (remove any that isn't clearly working) and don't fill every empty space with decorative illustration. Less visual noise reads as more professional; one extra element can tip a design into clutter. ([jain/beginner-mistakes 1:12], [jain/boring-design-hacks 1:11], [jain/ui-cheat-codes 6:01], [jain/web-design-hacks 5:29])
- Don't nest cards inside cards; avoid borders on borders, stacked radii and extra background layers. Padding on padding cramps content and extra layers add clutter. For grouping with spacing, see also layout-and-hierarchy.md. ([jain/color-mistakes 2:21], [jain/mobile-app-ui 3:13], [jain/weirdly-perfect-ui 7:22])
- Dim the borders that remain once elements are well grouped, and remove strokes that add nothing. Good grouping means borders needn't be strong. ([jain/beginner-mistakes 5:20], [jain/color-mistakes 4:27])

## Shadows

- Soften shadows: low opacity and a large blur. Most shadows are too strong. *Note: Source figure is 15-20% opacity against Figma's 25% default; in CSS that usually means about 5-10% black, layered.* ([jain/beginner-mistakes 1:37], [jain/every-ui-concept 6:25], [jain/web-design-hacks 6:14])
- Scale shadow strength to elevation: lightest on cards, stronger on popovers and menus. For dark backgrounds, see also the dark-mode rule in color.md. Strength should reflect what sits above what. ([jain/every-ui-concept 6:33], [jain/web-design-hacks 6:14])
- Tint subtle shadows (e.g. under popovers) a light gray rather than transparent black. Lower opacity alone still looks harsh. ([jain/animated-sidebar 0:50], [jain/beginner-mistakes 1:37])
- Keep shadow x-offset at or below the y-offset, and blur at 1.3-2× the y-offset. ([jain/web-design-hacks 6:03])
- Combine an inset and an outer box-shadow to make buttons feel raised and tactile. ([jain/every-ui-concept 6:41])

## Surfaces, borders and corners

- Define card edges with a very subtle light border (around 85% white, i.e. a pale gray) or a background fill, not a thin black border or a shadow alone. A pale edge defines the surface without overpowering it; shadow alone looks washed out. ([jain/60-30-10-rule 1:36], [jain/animated-sidebar 0:38], [jain/dashboard-ui 6:40])
- Use one corner radius (e.g. 10px) for all smaller components, and match corner treatment across a page; don't mix sharp images with rounded buttons. Mismatched corners create a visible disconnect. ([jain/beginner-mistakes 3:10], [jain/landing-page-levels 0:51])
- Set a nested element's radius to the outer radius minus the gap (30px outer, 10px gap → 20px inner); eyeball it when the gap exceeds the outer radius, and skip it for pills. Equal radii make the corner gap look larger. ([jain/ui-cheat-codes 1:39])

## Icons

- Use one icon library (e.g. Phosphor or Lucide) with matching fill, stroke width, corner style and size; never use emojis as UI icons. Mixed sources produce mismatched icons; swapping emojis for real icons immediately looks better. ([jain/beginner-mistakes 3:55], [jain/google-ai-redesign 5:25], [jain/saas-vibe-code-mistakes 0:24], [jain/vibe-coding-pro-ui 3:23], [jain/web-design-hacks 2:00])
- Keep icons simple and match detail to size: at UI sizes (16-24px) use simple glyphs from the icon library; reserve interior detail for large feature icons (about 48px and up). An icon is a symbol, not a piece of art. *Note: The pixel thresholds are editorial.* ([jain/web-design-hacks 2:29])
- Mix icon styles only when they sit in visually separate areas serving different purposes. Separation lets different styles coexist. ([jain/beginner-mistakes 4:36])

## Imagery and text over images

- Put a linear gradient (or a subtle overlay) beneath text on photos rather than darkening the whole image; on image cards, let the image fill ~3/4 of the card height with a smooth gradient rising from its bottom. Text needs contrast, but full overlays don't do the image justice; smoother gradients look better. ([jain/crucial-ui-elements 4:03], [jain/every-ui-concept 8:44], [jain/skincare-redesign 4:39], [jain/website-layouts 2:03])
- Choose images that aren't busy behind text, and never put text or UI over the image's focal point; for full-screen heroes pick a zoomed-out shot that leaves room for overlays. Busy or crowded backgrounds make overlaid text chaotic and hard to read. ([jain/learn-ui-in-10-minutes 1:26], [jain/tesla-wannabe-redesign 2:49])
- For a more modern image gradient, layer a progressive blur over it (backdrop-filter: blur() with a gradient mask-image). ([jain/every-ui-concept 8:57])
- Keep image treatment consistent; don't place cut-out images next to images with backgrounds. Mixed treatments feel disjointed. ([jain/tesla-wannabe-redesign 3:57])
- **Marketing:** Vary image treatment on marketing pages: cut single objects out of their background, crop into a detail, or mask images into shapes that match the site's style. Draws attention to the object and breaks the boxy layout. ([jain/awful-to-amazing 2:22])

## Style and decoration

- **Marketing:** Match playfulness to the intended feel, e.g. blobs, doodles and fun colors for a playful consumer brand, realistic imagery for a professional tool such as invoicing; drop decorative shapes that look messy against a clean brand. Nailing the feel of a site matters as much as layout. ([jain/boring-design-hacks 1:55], [jain/google-ai-redesign 1:52])
- For a friendly feel use warm backgrounds, colorful visuals, rounded corners and large rounded buttons; for a modern, premium feel use tighter radii, less colorful premium imagery and subtle background noise. The same layout feels completely different with a different flavor. ([jain/crucial-ui-elements 3:35], [jain/learn-ui-in-10-minutes 5:39])

## Gradients, texture and effects

- Add subtle noise texture to image or color backgrounds, sparingly and never across the whole site. Adds texture and helps text contrast; too much looks like TV static. ([jain/google-ai-redesign 3:12], [jain/vibe-coding-cant-fix 5:30])
- Build glass surfaces (e.g. a dark-mode tab bar) from a semi-transparent fill, a subtle gradient, backdrop-filter: blur(), a 1px border and a soft inset shadow. Reads as polished, technical material. ([jain/ai-startup-components 5:59], [jain/crucial-ui-elements 1:48])
- **Marketing:** Behind a hero, add a very subtle background gradient and darken its edges to pull attention to the center. Without it the section looks bland. ([jain/modern-layouts 3:15], [jain/vibe-coding-cant-fix 6:07])
- **Marketing:** Build mesh gradients from 8-10 or more overlapping, semi-transparent circles with filter: blur(). More overlapping layers give brighter, more vibrant results. ([jain/figma-web-effects 3:19])

[jain/60-30-10-rule 1:36]: https://youtu.be/66oOi9OLMCw?t=96
[jain/ai-startup-components 5:59]: https://youtu.be/If7iCPDy2vk?t=359
[jain/animated-sidebar 0:38]: https://youtu.be/NtZeYmTMuo4?t=38
[jain/animated-sidebar 0:50]: https://youtu.be/NtZeYmTMuo4?t=50
[jain/awful-to-amazing 2:22]: https://youtu.be/ulSOdTgoGeY?t=142
[jain/beginner-mistakes 1:12]: https://youtu.be/AH_ugxmLeUM?t=72
[jain/beginner-mistakes 1:37]: https://youtu.be/AH_ugxmLeUM?t=97
[jain/beginner-mistakes 3:10]: https://youtu.be/AH_ugxmLeUM?t=190
[jain/beginner-mistakes 3:55]: https://youtu.be/AH_ugxmLeUM?t=235
[jain/beginner-mistakes 4:36]: https://youtu.be/AH_ugxmLeUM?t=276
[jain/beginner-mistakes 5:20]: https://youtu.be/AH_ugxmLeUM?t=320
[jain/boring-design-hacks 1:11]: https://youtu.be/SfX43uIubj4?t=71
[jain/boring-design-hacks 1:55]: https://youtu.be/SfX43uIubj4?t=115
[jain/color-mistakes 2:21]: https://youtu.be/EOcY3hPMQkk?t=141
[jain/color-mistakes 4:27]: https://youtu.be/EOcY3hPMQkk?t=267
[jain/crucial-ui-elements 1:48]: https://youtu.be/gKM6b2EnW1k?t=108
[jain/crucial-ui-elements 3:35]: https://youtu.be/gKM6b2EnW1k?t=215
[jain/crucial-ui-elements 4:03]: https://youtu.be/gKM6b2EnW1k?t=243
[jain/dashboard-ui 6:40]: https://youtu.be/B7k5rOgmOGY?t=400
[jain/every-ui-concept 6:25]: https://youtu.be/EcbgbKtOELY?t=385
[jain/every-ui-concept 6:33]: https://youtu.be/EcbgbKtOELY?t=393
[jain/every-ui-concept 6:41]: https://youtu.be/EcbgbKtOELY?t=401
[jain/every-ui-concept 8:44]: https://youtu.be/EcbgbKtOELY?t=524
[jain/every-ui-concept 8:57]: https://youtu.be/EcbgbKtOELY?t=537
[jain/figma-web-effects 3:19]: https://youtu.be/MZSm6MA8bww?t=199
[jain/google-ai-redesign 1:52]: https://youtu.be/pGYLZyBE32o?t=112
[jain/google-ai-redesign 3:12]: https://youtu.be/pGYLZyBE32o?t=192
[jain/google-ai-redesign 5:25]: https://youtu.be/pGYLZyBE32o?t=325
[jain/landing-page-levels 0:51]: https://youtu.be/eMMiLeo_UGI?t=51
[jain/learn-ui-in-10-minutes 1:26]: https://youtu.be/9WVt1CelBfg?t=86
[jain/learn-ui-in-10-minutes 5:39]: https://youtu.be/9WVt1CelBfg?t=339
[jain/mobile-app-ui 3:13]: https://youtu.be/Gfsd8NNuD9g?t=193
[jain/modern-layouts 3:15]: https://youtu.be/VPeTgU7la34?t=195
[jain/saas-vibe-code-mistakes 0:24]: https://youtu.be/PDcQJOPby1k?t=24
[jain/skincare-redesign 4:39]: https://youtu.be/BvbFPzLjWcU?t=279
[jain/tesla-wannabe-redesign 2:49]: https://youtu.be/V3Omp1hm0Sg?t=169
[jain/tesla-wannabe-redesign 3:57]: https://youtu.be/V3Omp1hm0Sg?t=237
[jain/ui-cheat-codes 1:39]: https://youtu.be/c1TvOcKdBVE?t=99
[jain/ui-cheat-codes 6:01]: https://youtu.be/c1TvOcKdBVE?t=361
[jain/vibe-coding-cant-fix 5:30]: https://youtu.be/RCneB_MQ7qs?t=330
[jain/vibe-coding-cant-fix 6:07]: https://youtu.be/RCneB_MQ7qs?t=367
[jain/vibe-coding-pro-ui 3:23]: https://youtu.be/xHD01_Onac0?t=203
[jain/web-design-hacks 2:00]: https://youtu.be/Lp6ey4AyDzA?t=120
[jain/web-design-hacks 2:29]: https://youtu.be/Lp6ey4AyDzA?t=149
[jain/web-design-hacks 5:29]: https://youtu.be/Lp6ey4AyDzA?t=329
[jain/web-design-hacks 6:03]: https://youtu.be/Lp6ey4AyDzA?t=363
[jain/web-design-hacks 6:14]: https://youtu.be/Lp6ey4AyDzA?t=374
[jain/website-layouts 2:03]: https://youtu.be/P2ksReDwWkE?t=123
[jain/weirdly-perfect-ui 7:22]: https://youtu.be/neE6wOuBIP8?t=442
