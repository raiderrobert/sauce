# Depth and polish

Shadows, borders, corner radii, icons, imagery, materials, gradients, texture and decorative touches that add depth and finish without clutter.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a game-design principle whose *Note* translates it to product UI, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Restraint · Shadows and elevation · Surfaces, borders and corners · Icons · Imagery and text over images · Style and decoration · Materials and light · Gradients and texture

## Restraint

- Use the fewest elements and effects that communicate: apply shadows, glows and gradients sparingly (remove any that isn't clearly working) and don't fill every empty space with decorative illustration. Less visual noise reads as more professional; one extra element can tip a design into clutter. ([jain/beginner-mistakes 1:12], [jain/boring-design-hacks 1:11], [jain/ui-cheat-codes 6:01], [jain/web-design-hacks 5:29], [raroque/ai-follow-my-designs 36:20])
- Dim the borders that remain once elements are well grouped, remove strokes that add nothing (e.g. thin borders around images), and separate adjacent sections with slightly different backgrounds instead. Good grouping means borders needn't be strong; too many borders make a design look busy. ([jain/beginner-mistakes 5:20], [jain/color-mistakes 4:27], [kennedy/advanced-design-tips 3:23], [schoger/transistor 9:37])
- Don't nest cards inside cards; avoid borders on borders, stacked radii and extra background layers. Padding on padding cramps content and extra layers add clutter. For grouping with spacing, see also layout-and-hierarchy.md. ([jain/color-mistakes 2:21], [jain/mobile-app-ui 3:13], [jain/weirdly-perfect-ui 7:22])
- Add depth (cards, elevation) only when it elevates something important, e.g. results floating over a map; otherwise drop the cards for subtle dividers (on a dark UI, a white border at 10% opacity). Unnecessary depth adds nothing; dividers still separate elements while keeping the layout flat. *Note: In CSS, e.g. border-top: 1px solid rgb(255 255 255 / 0.1); the 1px width is editorial.* ([raroque/app-design-process 4:27], [schoger/dashboard-with-ai 0:07:55])

## Shadows and elevation

- Soften shadows: keep the x-offset at or below the y-offset, set the blur to 1.3-2× the y-offset, and keep opacity low (source: 15-20% in Figma, down from its 25% default). For subtle shadows, such as under popovers, the source's alternative to transparent black is a light-gray shadow color. Most shadows, including Figma's defaults, are too strong; lowering opacity alone can still look harsh. *Note: In CSS, e.g. box-shadow: 0 4px 8px rgb(0 0 0 / 0.1): blur 2× the y-offset, opacity about 8-12%. A light-gray shadow color (e.g. #e5e5e5) is the opaque equivalent and only suits a white or near-white background.* ([jain/animated-sidebar 0:50], [jain/beginner-mistakes 1:37], [jain/every-ui-concept 6:25], [jain/web-design-hacks 6:03])
- Scale shadows to elevation: tight (small y-offset, blur ≤4) on elements resting on a surface, lightest on cards, stronger and blurrier on popovers and menus. On dark backgrounds, raise opacity and make closer surfaces lighter gray (see also the dark-mode rule in color.md). Strength should reflect what sits above what; dark backgrounds need stronger shadows, and lighter grays read as closer. ([jain/every-ui-concept 6:33], [jain/web-design-hacks 6:14], [kennedy/advanced-ui-tips 13:56], [schoger/dashboard-with-ai 0:01:56])
- Layer two shadows instead of one: a larger, saturated blur plus a shorter, darker shadow; on an outline-free white button, pair a positive-Y shadow with a lighter, blurrier 0,0 ambient one. Layered shadows (as Stripe uses) look natural; the ambient shadow keeps a white button's top edge visible. *Note: The card-edge rule prefers a pale border or fill over a shadow alone; shadow-only edges suit surfaces on a darker page background (see the border-plus-shadow rule). In CSS, comma-separate the two box-shadow layers.* ([kennedy/timezones-redesign 5:30], [schoger/bad-about 6:24], [schoger/wp-pusher-checkout 9:57])
- Combine an inner and an outer shadow to make buttons feel raised and tactile. *Note: In CSS, an inset box-shadow plus an outer one.* ([jain/every-ui-concept 6:41])
- Lift grabbable controls, such as a switch knob, onto a separate plane above the content. Distinguishes them from the content and signals they can be dragged. ([apple/designing-fluid-interfaces ¶lifting-it-up-to])

## Surfaces, borders and corners

- Define card edges with a very subtle light border (around 85% white, i.e. a pale gray, matching the dividers inside) or a background fill, not a thin black border or a shadow alone. A pale edge defines the surface without overpowering it; shadow alone looks washed out. *Note: When a shadowed panel sits on a noticeably darker page background, the shadow plus background contrast can be enough without a border (see the border-plus-shadow rule).* ([jain/60-30-10-rule 1:36], [jain/animated-sidebar 0:38], [jain/dashboard-ui 6:40], [raroque/ai-follow-my-designs 11:15])
- Use one corner radius (e.g. 10px) for all smaller components, and match corner treatment across a page; don't mix sharp images with rounded buttons. Mismatched corners create a visible disconnect. ([jain/beginner-mistakes 3:10], [jain/landing-page-levels 0:51], [schoger/bad-about 5:57])
- Make nested shapes concentric: inner radius = outer radius minus the gap (30px outer, 10px gap → 20px inner); eyeball it when the gap exceeds the outer radius. Skip this for pills; capsules (radius half the height) suit sliders, switches, bars and buttons. Equal radii make the corner gap look larger; capsule geometry naturally supports concentricity. ([apple/explore-the-new-design 1:04], [jain/ui-cheat-codes 1:39], [schoger/designing-with-claude-code 0:33:01])
- Avoid solid-color borders on shadowed elements: drop the border when the background is darker, or use an outer ring of gray-950 at 10% opacity. Solid border plus shadow looks muddy; a translucent ring looks crisp, with the shadow sitting behind it. *Note: In CSS, an outer ring is box-shadow: 0 0 0 1px rgb(3 7 18 / 0.1) listed before the drop shadow; gray-950 is Tailwind's near-black.* ([schoger/designing-with-claude-code 0:05:51], [schoger/transistor 10:01])
- Put white content panels on a light gray page background, not gray panels on white; a subtle shadow then contains busy content such as tables. Gray panels on white feel like they're standing back; boundaries keep a busy table contained. ([schoger/bad-about 6:08], [schoger/wss 6:49])
- Add a thick accent border to liven a bland design: across the top of the page, or a subtle 4px brand-color top border on panels instead of a title bar. A quick way to bring life; on panels it separates them and ties them to the brand. ([schoger/resolute 2:21], [schoger/tuple 3:16])

## Icons

- Use one icon library (e.g. Phosphor or Lucide) whose style matches the brand's illustrations, with matching fill, stroke width, corner style and size, and replace emojis used as UI icons with real icons. Mixed sources produce mismatched icons and a less cohesive app; swapping emojis for real icons immediately looks better. ([jain/beginner-mistakes 3:55], [jain/google-ai-redesign 5:25], [jain/saas-vibe-code-mistakes 0:24], [jain/vibe-coding-pro-ui 3:23], [jain/web-design-hacks 2:00], [raroque/apps-feel-10x-better 7:43], [schoger/resolute 11:52])
- Choose a less ubiquitous icon pack than the default (system set, Font Awesome), and pick its weight deliberately (thin, filled or detailed), making sure strokes aren't too thin for the background and surrounding elements. Defaults feel generic; switching thin to thick icons changes a whole tab bar's feel; too-thin icons get missed. ([nngroup/anatomy-of-good-icons 0:57], [raroque/apps-feel-10x-better 6:27], [schoger/wss 4:45])
- Draw custom inline icons with the same pen as the text (stroke thickness, curviness, color), and lighten set icons that feel heavy next to their text labels. Same-pen icons match the typography; heavy icons next to labels feel unbalanced and take over. *Note: Both aim for balance with the text: same-pen drawing suits custom glyph-like icons such as a back arrow; lightening suits icon-set icons that overpower nav or list labels.* ([kennedy/advanced-design-tips 1:16], [kennedy/wodify-redesign 3:27], [schoger/resolute 12:15])
- Render icons at their drawn size (e.g. micro icons in a 16×16 viewBox); to make a simple icon look bigger, put it inside a shape such as a circle. Scaled simple icons look clunky and mushy; such sets are designed for small in-app sizes. ([schoger/dashboard-with-ai 0:05:58], [schoger/transistor 6:38], [schoger/wss 4:19])
- Keep icons simple and match detail to size: the smaller the icon, the less detail it needs; use simple glyphs from the icon library at UI sizes and reserve interior detail for large icons. An icon is a symbol, not a piece of art. *Note: Editorial thresholds: UI sizes are about 16-24px; large feature icons start around 48px.* ([jain/web-design-hacks 2:29])
- Draw icons with one stroke weight and corner radius throughout and even padding (usually 1-2px) on all sides; sharpen corners where it aids recognition, like a file's dog-ear. Inconsistent strokes and radii look haphazard; heavy rounding hid the dog-ear, square corners made it recognizable. ([nngroup/anatomy-of-good-icons 0:21])
- Mix icon styles only when they sit in visually separate areas serving different purposes. Separation lets different styles coexist. ([jain/beginner-mistakes 4:36])

## Imagery and text over images

- Put a linear gradient (or a subtle overlay) beneath text on photos rather than darkening the whole image; on image cards, let the image fill ~3/4 of the card height with a smooth gradient rising from its bottom. Text needs contrast, but full overlays don't do the image justice; smoother gradients look better. ([jain/crucial-ui-elements 4:03], [jain/every-ui-concept 8:44], [jain/skincare-redesign 4:39], [jain/website-layouts 2:03], [schoger/designing-with-claude-code 0:48:44])
- Choose images that aren't busy behind text, and never put text or UI over the image's focal point; for full-screen heroes pick a zoomed-out shot that leaves room for overlays. Busy or crowded backgrounds make overlaid text chaotic and hard to read. ([jain/learn-ui-in-10-minutes 1:26], [jain/tesla-wannabe-redesign 2:49])
- Keep image treatment consistent: don't place cut-out images next to images with backgrounds, crop profile pictures in circles, and desaturate images that clash with the design. Mixed treatments feel disjointed; desaturating makes clashing images blend in. ([jain/tesla-wannabe-redesign 3:57], [schoger/wp-pusher-checkout 7:23])
- Outline images and cropped screenshots with an inset ring on top (gray-950 at 5-10%); set media in a borderless gray-950 ~5% well, not a white bordered box. The ring crisply covers image corners and the well makes media pop; a 5% ring vanished against the well. *Note: In CSS, an inset box-shadow on an <img> paints beneath the image, so put the ring on an overlay such as a wrapper's ::after with box-shadow: inset 0 0 0 1px.* ([schoger/designing-with-claude-code 0:33:48])
- For a more modern image gradient (as of 2026), layer a progressive blur on top of it. *Note: In CSS, backdrop-filter: blur() with a gradient mask-image.* ([jain/every-ui-concept 8:57])
- **Marketing:** Vary image treatment on marketing pages: cut single objects out of their background, crop into a detail, or mask images into shapes that match the site's style. Draws attention to the object and breaks the boxy layout. ([jain/awful-to-amazing 2:22])

## Style and decoration

- Pick one flavor and apply it to every corner, button and image: for a friendly feel, warm backgrounds, colorful visuals, well-rounded corners and large rounded buttons; for a modern, professional feel (as of 2026), much less rounded corners, less colorful premium imagery and subtle background noise. Match radius to the typeface too: with a squared-off font or less soft brand, cut it (e.g. 4px to 1px). The same layout feels completely different with a different flavor. *Note: Editorial: e.g. friendly radii around 16-24px with pill buttons; modern radii around 4-8px.* ([jain/crucial-ui-elements 3:35], [jain/learn-ui-in-10-minutes 5:39], [kennedy/advanced-design-tips 6:50], [kennedy/starting-a-ui-project 39:23])
- **Marketing:** Match playfulness to the intended feel, e.g. blobs, doodles and fun colors for a playful consumer brand, realistic imagery for a professional tool such as invoicing; drop decorative shapes that look messy against a clean brand. Nailing the feel of a site matters as much as layout. ([jain/boring-design-hacks 1:55], [jain/google-ai-redesign 1:52])
- **App UI:** Make illustrations distinctive: commission a base mascot from an illustrator and generate state variations, or iterate 30+ AI prompts mixing styles; consider animating empty-state illustrations. Custom art feels more original; anything two prompts can produce, anyone can, so it feels generic. ([raroque/apps-feel-10x-better 3:47], [raroque/apps-feel-premium 4:29])

## Materials and light

- Build glass surfaces (e.g. a dark-mode tab bar; a common AI-startup style as of 2025) from a semi-transparent fill (about 20% fill opacity, not layer opacity), a subtle gradient, a background blur, a 1px border and a soft inner shadow; put contrast behind it so the blur shows. Reads as a polished, luxury glass effect; blur only works with a lowered fill opacity and only shows over contrasting content ('design judo'). *Note: In CSS, the background blur is backdrop-filter: blur().* ([jain/ai-startup-components 5:59], [jain/crucial-ui-elements 1:48], [kennedy/advanced-ui-tips 10:20])
- Give key elements real-world materials, e.g. a frosted-glass input or a metallic button (light-to-slightly-darker same-hue gradient, dark text, darker bottom edge); Hearthstone uses gold and gems so items feel valuable. Materials aren't needed, so having them signals extra care; relatable physical objects make things feel valuable. *Note: In product UI, use material cues sparingly, e.g. for key actions or things users pay for or earn.* ([kennedy/advanced-ui-tips 9:59], [sakamoto/hearthstone-immersive-ui 8:43])
- Light surfaces from the top: a top-edge sheen (thin white inner shadow, 0 blur, fairly opaque) and, for convexity, a white 100%-to-0% top-down gradient at ~10%. Only glass also gets a bottom sheen. The light source is at the top; an inner shadow is easier to implement in code than a stroke. *Note: In CSS, the sheen is box-shadow: inset 0 1px 0 rgb(255 255 255 / 0.5) or similar.* ([kennedy/advanced-ui-tips 11:33])
- Make dividers look inset: a darker top pixel and a lighter bottom pixel. The top angles away from the light and the bottom toward it, so the divider reads as indented. *Note: In CSS, e.g. a border-top darker and a border-bottom lighter than the surface.* ([kennedy/advanced-ui-tips 14:37])

## Gradients and texture

- **Marketing:** Behind a hero, add a very subtle background gradient or decorative pattern and darken or fade its edges (e.g. with a radial gradient mask) to pull attention to the center. Without it the section looks bland; subtlety is the name of the game. ([jain/modern-layouts 3:15], [jain/vibe-coding-cant-fix 6:07], [kennedy/advanced-ui-tips 16:11])
- Add subtle noise texture to image or color backgrounds, sparingly and never across the whole site. Adds texture and helps text contrast; too much looks like TV static. ([jain/google-ai-redesign 3:12], [jain/vibe-coding-cant-fix 5:30])
- **Marketing:** Build mesh gradients for a hero or section background, never the whole page, from 8-10 or more overlapping, semi-transparent, blurred circles. More overlapping layers give brighter, more vibrant results. *Note: In CSS, blur the circles with filter: blur(). The hero-or-section scope is editorial (see also the page-background rule in color.md).* ([jain/figma-web-effects 3:19])

[apple/designing-fluid-interfaces ¶lifting-it-up-to]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=lifting%20it%20up%20to%20a%20separate
[apple/explore-the-new-design 1:04]: https://youtu.be/nwyaB288qBA?t=64
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
[kennedy/advanced-design-tips 1:16]: https://youtu.be/6jiq5g_bXB8?t=76
[kennedy/advanced-design-tips 3:23]: https://youtu.be/6jiq5g_bXB8?t=203
[kennedy/advanced-design-tips 6:50]: https://youtu.be/6jiq5g_bXB8?t=410
[kennedy/advanced-ui-tips 10:20]: https://youtu.be/-2vzMH8iqsg?t=620
[kennedy/advanced-ui-tips 11:33]: https://youtu.be/-2vzMH8iqsg?t=693
[kennedy/advanced-ui-tips 13:56]: https://youtu.be/-2vzMH8iqsg?t=836
[kennedy/advanced-ui-tips 14:37]: https://youtu.be/-2vzMH8iqsg?t=877
[kennedy/advanced-ui-tips 16:11]: https://youtu.be/-2vzMH8iqsg?t=971
[kennedy/advanced-ui-tips 9:59]: https://youtu.be/-2vzMH8iqsg?t=599
[kennedy/starting-a-ui-project 39:23]: https://youtu.be/JOQJO_V7sew?t=2363
[kennedy/timezones-redesign 5:30]: https://youtu.be/B4XHaboNMOI?t=330
[kennedy/wodify-redesign 3:27]: https://youtu.be/OdS7fOS7bTk?t=207
[nngroup/anatomy-of-good-icons 0:21]: https://youtu.be/9MRTqn9tRl8?t=21
[nngroup/anatomy-of-good-icons 0:57]: https://youtu.be/9MRTqn9tRl8?t=57
[raroque/ai-follow-my-designs 11:15]: https://youtu.be/18V3lFePdWU?t=675
[raroque/ai-follow-my-designs 36:20]: https://youtu.be/18V3lFePdWU?t=2180
[raroque/app-design-process 4:27]: https://youtu.be/H0czeRyXPxA?t=267
[raroque/apps-feel-10x-better 3:47]: https://youtu.be/8mMH6Pq8qnE?t=227
[raroque/apps-feel-10x-better 6:27]: https://youtu.be/8mMH6Pq8qnE?t=387
[raroque/apps-feel-10x-better 7:43]: https://youtu.be/8mMH6Pq8qnE?t=463
[raroque/apps-feel-premium 4:29]: https://youtu.be/MXLF8b15GhQ?t=269
[sakamoto/hearthstone-immersive-ui 8:43]: https://youtu.be/axkPXCNjOh8?t=523
[schoger/bad-about 5:57]: https://youtu.be/S6-q5BheEYU?t=357
[schoger/bad-about 6:08]: https://youtu.be/S6-q5BheEYU?t=368
[schoger/bad-about 6:24]: https://youtu.be/S6-q5BheEYU?t=384
[schoger/dashboard-with-ai 0:01:56]: https://youtu.be/lQCWuOT5ENQ?t=116
[schoger/dashboard-with-ai 0:05:58]: https://youtu.be/lQCWuOT5ENQ?t=358
[schoger/dashboard-with-ai 0:07:55]: https://youtu.be/lQCWuOT5ENQ?t=475
[schoger/designing-with-claude-code 0:05:51]: https://youtu.be/lkKGQVHrXzE?t=351
[schoger/designing-with-claude-code 0:33:01]: https://youtu.be/lkKGQVHrXzE?t=1981
[schoger/designing-with-claude-code 0:33:48]: https://youtu.be/lkKGQVHrXzE?t=2028
[schoger/designing-with-claude-code 0:48:44]: https://youtu.be/lkKGQVHrXzE?t=2924
[schoger/resolute 11:52]: https://youtu.be/BMHUKij1yUE?t=712
[schoger/resolute 12:15]: https://youtu.be/BMHUKij1yUE?t=735
[schoger/resolute 2:21]: https://youtu.be/BMHUKij1yUE?t=141
[schoger/transistor 10:01]: https://youtu.be/ZT4WRRhacWk?t=601
[schoger/transistor 6:38]: https://youtu.be/ZT4WRRhacWk?t=398
[schoger/transistor 9:37]: https://youtu.be/ZT4WRRhacWk?t=577
[schoger/tuple 3:16]: https://youtu.be/RC9cYdbQ-_c?t=196
[schoger/wp-pusher-checkout 7:23]: https://youtu.be/5gdYHlYAKDY?t=443
[schoger/wp-pusher-checkout 9:57]: https://youtu.be/5gdYHlYAKDY?t=597
[schoger/wss 4:19]: https://youtu.be/ZJj7uNdzPpM?t=259
[schoger/wss 4:45]: https://youtu.be/ZJj7uNdzPpM?t=285
[schoger/wss 6:49]: https://youtu.be/ZJj7uNdzPpM?t=409
