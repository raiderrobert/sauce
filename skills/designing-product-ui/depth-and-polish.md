# Depth and polish

Shadows, borders, corner radii, icons, imagery, texture, gradients and decorative touches that add depth and finish to product UI without clutter.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Restraint and clutter removal

- Prefer spacing over divider lines; use dividers only deliberately, when lines are the intended visual style. Lines are often redundant clutter; overused lines recall old, jam-packed PowerPoints. ([jain/slept-on-trends 4:01](https://youtu.be/EHwZzWd-OnQ?t=241), [jain/ui-cheat-codes 5:26](https://youtu.be/c1TvOcKdBVE?t=326))
- Use shadows, glows and gradients sparingly; if they aren't working or you're unsure, remove them entirely. Less visual noise usually reads as more professional. ([jain/beginner-mistakes 1:12](https://youtu.be/AH_ugxmLeUM?t=72), [jain/web-design-hacks 5:29](https://youtu.be/Lp6ey4AyDzA?t=329))
- Use the fewest elements possible to communicate; don't fill every empty space with decorative illustrations. One more element can push a design over the line into cluttered. ([jain/boring-design-hacks 1:11](https://youtu.be/SfX43uIubj4?t=71), [jain/ui-cheat-codes 6:01](https://youtu.be/c1TvOcKdBVE?t=361))
- Don't nest cards inside containers for structure; avoid borders on borders, stacked radii and extra colored background layers—use one simple border instead. Extra layers add clutter and don't really help. ([jain/color-mistakes 2:21](https://youtu.be/EOcY3hPMQkk?t=141), [jain/weirdly-perfect-ui 7:22](https://youtu.be/neE6wOuBIP8?t=442))
- Remove unnecessary strokes; if worried about contrast or elements are already well grouped, dim borders significantly instead. Good grouping means borders needn't be strong. ([jain/beginner-mistakes 5:20](https://youtu.be/AH_ugxmLeUM?t=320), [jain/color-mistakes 4:27](https://youtu.be/EOcY3hPMQkk?t=267))
- Keep row divider lines aligned to content edges; don't run them the full width of the screen. Full-width lines break the feeling of precision. ([jain/weirdly-perfect-ui 1:55](https://youtu.be/neE6wOuBIP8?t=115))
- Consider rounded ends on line dividers rather than straight lines everywhere. ([jain/slept-on-trends 4:42](https://youtu.be/EHwZzWd-OnQ?t=282))

## Shadows and depth

- Soften shadows: drop opacity to 15–20% (not Figma's 25% default) and greatly increase blur. Default shadows are far too harsh; most shadows are too strong. ([jain/beginner-mistakes 1:37](https://youtu.be/AH_ugxmLeUM?t=97), [jain/every-ui-concept 6:25](https://youtu.be/EcbgbKtOELY?t=385), [jain/web-design-hacks 6:14](https://youtu.be/Lp6ey4AyDzA?t=374))
- Color subtle shadows (e.g. on pop-ups) a very light gray instead of transparent black. Default shadows are far too harsh; lower opacity alone isn't enough. ([jain/animated-sidebar 0:50](https://youtu.be/NtZeYmTMuo4?t=50), [jain/beginner-mistakes 1:37](https://youtu.be/AH_ugxmLeUM?t=97))
- Scale shadow strength to elevation and background: lighter on cards, stronger on popovers and on darker backgrounds. Strength depends on what sits above what; dark backgrounds need more for it to appear. ([jain/every-ui-concept 6:33](https://youtu.be/EcbgbKtOELY?t=393), [jain/web-design-hacks 6:14](https://youtu.be/Lp6ey4AyDzA?t=374))
- Set shadow x offset less than or equal to y, and blur 1.3–2× the y value. ([jain/web-design-hacks 6:03](https://youtu.be/Lp6ey4AyDzA?t=363))
- Tone a shadow down if it's the first thing you notice. A noticeable shadow means it isn't being used right. ([jain/every-ui-concept 6:45](https://youtu.be/EcbgbKtOELY?t=405))
- Combine inner and outer shadows to create raised, tactile buttons. ([jain/every-ui-concept 6:41](https://youtu.be/EcbgbKtOELY?t=401))
- Add depth with buttons or elements offset over backgrounds or images, not only with shadows. Adds a lot of depth and is easy to animate. ([jain/awful-to-amazing 3:41](https://youtu.be/ulSOdTgoGeY?t=221))

## Surfaces, borders and corners

- Define cards with a very subtle light border (~85% white) rather than a thin black border or shadow alone, so surfaces stay white or near-white. Defines the edge without overpowering; shadow alone looks washed out. ([jain/60-30-10-rule 1:36](https://youtu.be/66oOi9OLMCw?t=96), [jain/animated-sidebar 0:38](https://youtu.be/NtZeYmTMuo4?t=38))
- Use one corner radius (e.g. 10px) for all smaller components, and match corner treatment—don't mix sharp-edged images with rounded buttons. Mismatched corners create a disconnect that discourages visitors from scrolling. ([jain/beginner-mistakes 3:10](https://youtu.be/AH_ugxmLeUM?t=190), [jain/landing-page-levels 0:51](https://youtu.be/eMMiLeo_UGI?t=51))
- Set nested inner radius = outer radius minus gap (30px outer, 10px gap → 20px inner); eyeball it when gap exceeds outer radius; skip for pills. Equal radii make corner gaps look larger; the formula breaks past the outer radius; pills are evenly spaced. ([jain/ui-cheat-codes 1:39](https://youtu.be/c1TvOcKdBVE?t=99))
- Define cards with outlines in dark mode and background fills in light mode. Personal preference; either border or background works. ([jain/dashboard-ui 6:40](https://youtu.be/B7k5rOgmOGY?t=400))
- Turn iOS-style corner smoothing (squircle) to maximum on rounded corners. Subtly tapers the curve before the corner, making corners feel rounder. ([jain/ui-cheat-codes 2:07](https://youtu.be/c1TvOcKdBVE?t=127))

## Icons and visual cues

- Use icons from a single library (e.g. Phosphor, Lucide, Feather) with matching fill, stroke width, corner style and intended size. Mixed sources produce mismatched icons that hurt the design. ([jain/beginner-mistakes 3:55](https://youtu.be/AH_ugxmLeUM?t=235), [jain/web-design-hacks 2:00](https://youtu.be/Lp6ey4AyDzA?t=120))
- Replace emojis with clean, simple interface-style icons (e.g. Flaticon's interface filter). Swapping emojis for real icons immediately looks better. ([jain/google-ai-redesign 5:25](https://youtu.be/pGYLZyBE32o?t=325), [jain/saas-vibe-code-mistakes 0:24](https://youtu.be/PDcQJOPby1k?t=24))
- Keep icons simple and match detail to size: more detail on larger icons, less on smaller ones. You don't need a piece of art as your icon. ([jain/web-design-hacks 2:29](https://youtu.be/Lp6ey4AyDzA?t=149))
- Mix icon styles only when they sit in visually separate areas serving different purposes. Separation lets different styles work together. ([jain/beginner-mistakes 4:36](https://youtu.be/AH_ugxmLeUM?t=276))
- Create icons in your accent colors to represent the product's main features. ([jain/vibe-coding-cant-fix 2:43](https://youtu.be/RCneB_MQ7qs?t=163))
- Highlight and underline links in blue. Immediately recognizable visuals convey information while staying clean. ([jain/weirdly-perfect-ui 4:17](https://youtu.be/neE6wOuBIP8?t=257))

## Imagery and text over images

- Put a linear gradient beneath text on photos instead of a full-screen overlay. Text is hard to read without it; full overlays don't do the image justice. ([jain/every-ui-concept 8:44](https://youtu.be/EcbgbKtOELY?t=524), [jain/website-layouts 2:03](https://youtu.be/P2ksReDwWkE?t=123))
- Choose background images that aren't busy behind text, and never let hero text overlap the image's focal point. Busy backgrounds make overlaid text chaotic and hard to read. ([jain/learn-ui-in-10-minutes 1:38](https://youtu.be/9WVt1CelBfg?t=98), [jain/tesla-wannabe-redesign 2:57](https://youtu.be/V3Omp1hm0Sg?t=177))
- Invest in high-quality imagery; filter stock image searches to large images only. Images can make or break a site; small images go grainy when enlarged. ([jain/awful-to-amazing 2:03](https://youtu.be/ulSOdTgoGeY?t=123), [jain/tesla-wannabe-redesign 2:41](https://youtu.be/V3Omp1hm0Sg?t=161))
- For image-overlay cards, make the image ~3/4 card height with a smooth gradient rising from its bottom, then place text on top. The smoother the gradient transition, the better it looks. ([jain/crucial-ui-elements 4:03](https://youtu.be/gKM6b2EnW1k?t=243))
- Add a progressive blur on top of an image gradient for a more modern look. ([jain/every-ui-concept 8:57](https://youtu.be/EcbgbKtOELY?t=537))
- Use consistent image treatments; don't place images with and without backgrounds side by side. Mixed treatments feel very disjointed. ([jain/tesla-wannabe-redesign 3:57](https://youtu.be/V3Omp1hm0Sg?t=237))
- Remove the background from single-object photos. Draws attention to the object and breaks the box. ([jain/awful-to-amazing 2:22](https://youtu.be/ulSOdTgoGeY?t=142))
- Crop and zoom into a portion of product images. ([jain/awful-to-amazing 2:30](https://youtu.be/ulSOdTgoGeY?t=150))
- Mask images into shapes that match the site's style. Makes a layout more unique. ([jain/awful-to-amazing 2:48](https://youtu.be/ulSOdTgoGeY?t=168))

## Style, vibe and decorative elements

- Match playfulness (blobs, doodles, realistic imagery) to the intended vibe; drop decorative shapes that look messy against a clean brand style. Nailing the vibe of a website is very important. ([jain/boring-design-hacks 1:55](https://youtu.be/SfX43uIubj4?t=115), [jain/google-ai-redesign 1:52](https://youtu.be/pGYLZyBE32o?t=112))
- For a friendly, welcoming feel use warm backgrounds, colorful visuals, rounded corners and large bubbly buttons. UI flavor transforms how the same layout feels; rounded edges feel friendlier. ([jain/crucial-ui-elements 3:35](https://youtu.be/gKM6b2EnW1k?t=215), [jain/learn-ui-in-10-minutes 5:39](https://youtu.be/9WVt1CelBfg?t=339))
- For a modern, professional feel use less rounded corners, less colorful premium imagery and subtle background noise. ([jain/learn-ui-in-10-minutes 5:52](https://youtu.be/9WVt1CelBfg?t=352))
- Avoid sterile corporate styling; modern doesn't have to mean sterile. Sterile sites lack the fun and curiosity of well-designed ones. ([jain/boring-design-hacks 0:04](https://youtu.be/SfX43uIubj4?t=4))
- Rely on well-crafted UI and attention to detail rather than custom illustrations or 3D. Top-tier quality is attainable without them. ([jain/landing-page-levels 9:21](https://youtu.be/eMMiLeo_UGI?t=561))
- Use stickers to break boxy layouts and add information: 12-point star, adjusted ratio, rounded corners, quirky display font; experiment freely. Decorative elements are where creativity belongs, unlike constrained ones like forms. ([jain/crucial-ui-elements 5:50](https://youtu.be/gKM6b2EnW1k?t=350))
- Give stickers a full-opacity, slightly offset drop shadow in a darker shade of the sticker color. ([jain/crucial-ui-elements 6:18](https://youtu.be/gKM6b2EnW1k?t=378))
- Pair bold, crisp type with hand-drawn annotations (circles, underlines, arrows). The contrast between perfect text and hand-drawn marks catches the eye. ([jain/slept-on-trends 2:18](https://youtu.be/EHwZzWd-OnQ?t=138))
- Consider a straight-line grid: keep visible grid lines framing sections instead of floating cards. ([jain/modern-layouts 6:03](https://youtu.be/VPeTgU7la34?t=363))

## Gradients, texture and effects

- Add subtle noise texture to image or color backgrounds, but sparingly—never across the whole site. Adds texture and helps text contrast; too much looks like TV static. ([jain/google-ai-redesign 3:12](https://youtu.be/pGYLZyBE32o?t=192), [jain/vibe-coding-cant-fix 5:30](https://youtu.be/RCneB_MQ7qs?t=330))
- Build glass surfaces (e.g. a dark-mode tab bar) with semi-transparent fill, subtle gradient, background blur, 1px border and soft inner shadow. Exudes technological sophistication, like luxury glass. ([jain/ai-startup-components 5:59](https://youtu.be/If7iCPDy2vk?t=359), [jain/crucial-ui-elements 1:48](https://youtu.be/gKM6b2EnW1k?t=108))
- Add a very subtle background gradient behind the hero. Without it the section becomes bland and boring. ([jain/modern-layouts 3:15](https://youtu.be/VPeTgU7la34?t=195))
- Darken the edges of hero backgrounds to pull attention to the center. ([jain/vibe-coding-cant-fix 6:07](https://youtu.be/RCneB_MQ7qs?t=367))
- Use a rotating gradient 'shimmer' stroke to highlight elements with a modern feel. ([jain/micro-animations 3:22](https://youtu.be/ld1zhQMXxXU?t=202))
- For metallic gradients, put a noticeable color change in the middle; tint with a 20% red, orange or blue fill for gold, bronze or titanium. The effect fails without the mid-gradient change; edge colors matter less. ([jain/figma-web-effects 2:06](https://youtu.be/MZSm6MA8bww?t=126))
- Build mesh gradients from 8–10+ overlapping blurred, transparent circles. More overlapping layers yield brighter, more vibrant results. ([jain/figma-web-effects 3:19](https://youtu.be/MZSm6MA8bww?t=199))
- Check lighting on rotating 3D objects for dark spots across the full rotation. Dark spots appear as the object rotates. ([jain/no-code-3d-website 4:14](https://youtu.be/A_Ozpb0XDuw?t=254))
