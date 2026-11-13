# Color

Choosing and restraining color: accents, icons, neutrals and backgrounds, dark mode, semantic colors, contrast and palette building.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/video timestamp`) link to that moment; definitions are at the end of the file.

Contents: Restraint and purpose · Neutrals and backgrounds · Dark mode · Semantic and status colors · Contrast · Palettes and scales

## Restraint and purpose

- Use color to communicate status or data meaning, not decoration; remove any color that is there just for color's sake. A reduced palette creates clarity. ([jain/color-mistakes 0:14], [jain/dashboard-flaws 1:50], [jain/every-ui-concept 5:41])
- Reserve the accent for the primary action and active or selected states; don't let several accents compete on sibling cards. For marketing pages, see the landing-page color rule below. Being the only accent-colored element is what makes it stand out. ([jain/color-mistakes 0:46], [jain/weirdly-perfect-ui 6:54])
- Keep UI icons (nav, buttons, inputs, list rows) neutral. Color an icon only when the color carries status or meaning, or for feature-illustration icons on marketing pages (e.g. in accent colors); on dashboards, add color through charts instead (see data-and-dashboards.md). UI icons work as recognizable symbols; color there is noise. ([jain/color-mistakes 1:09], [jain/vibe-coding-cant-fix 2:43])
- Don't put the brand color on everything that can take it; give low-importance elements or cards a light tint of it with dark text. Full-strength brand color dominates the page and causes contrast problems. ([jain/color-mistakes 0:56], [jain/landing-page-levels 1:44])
- **App UI:** Use brand color on active states, such as the active tab or nav item, for a controlled pop of color. ([jain/color-mistakes 1:12], [jain/crucial-ui-elements 1:21])
- In product UI, skip 60-30-10 and stay almost entirely neutral with a tiny accent: e.g. Vercel's dark UI was roughly 90% black, 8% white and 2% red accent by screen area, as of 2026. Use 60-30-10 (dominant neutral, secondary, accent) on marketing pages. Product UI is a frame for content. *Note: The 90/8/2 example is a dark-mode UI; in light mode the large share is the light neutral.* ([jain/60-30-10-rule 0:08], [jain/color-mistakes 0:29])
- **Marketing:** On landing pages, let color come from product screenshots and curated imagery and keep buttons neutral (e.g. white on dark), bringing the bright accent in only on hover or a CTA reveal. A more vibrant, professional way to add color, and the accent stays tasteful rather than overpowering. ([jain/landing-page-levels 2:46], [jain/tesla-wannabe-redesign 4:15])

## Neutrals and backgrounds

- Tint neutrals (grays, borders, dark surfaces and dark-mode backgrounds) with a hint of the brand hue instead of pure gray or black, e.g. a bluish black, or a deep purple, red or green in dark mode. A pure or near-white page background is fine in light mode (see the light-mode layering rule). Integrates color without overpowering and makes the design feel cohesive. ([jain/60-30-10-rule 5:53], [jain/awful-to-amazing 5:04], [jain/color-mistakes 1:57], [jain/every-ui-concept 4:59], [jain/ui-cheat-codes 6:47], [jain/web-design-hacks 3:18])
- Keep the page background plain: almost never bright colors or gradients across the whole page. Put any gradient on a hero or section background and use shades of one hue; the exception is a dark-mode section background gradient of two brand colors darkened way down (see also the gradient rules in depth-and-polish.md). Backgrounds should stay in the background; mixed-hue gradients like blue-green rarely work. *Note: The hero-or-section scope is editorial; the sources' gradients each sit behind a single section.* ([jain/beginner-mistakes 1:23], [jain/color-mistakes 1:40], [jain/google-ai-redesign 2:58])
- **App UI:** In light mode, pick one layering scheme: an off-white page with white cards, or a white page with slightly darker cards. Keep the page at 98-100% white and the app frame or sidebar only very slightly darker (e.g. Mercury adds 2% blue to its sidebar). Large surfaces need only a slight shift; Linear, Notion and Vercel sat at 98-100% white as of 2026. ([jain/60-30-10-rule 0:29], [jain/color-mistakes 1:48])
- Plan neutrals up front: 3-5 for a landing page; for product UI about four background layers, one or two stroke colors, and about three text variants (see also the text-tier rule in typography.md). ([jain/60-30-10-rule 0:40])

## Dark mode

- **App UI:** Create depth in dark mode with lighter raised surfaces and borders: each elevation step gets a lighter fill. Shadows barely read on dark backgrounds; if you use one, make it stronger than in light mode. Surfaces lighten as they elevate; a light-mode shadow disappears against a dark page. ([jain/60-30-10-rule 4:14], [jain/color-mistakes 1:52], [jain/every-ui-concept 5:57], [jain/ui-cheat-codes 7:29], [jain/web-design-hacks 6:14])
- Space dark-mode neutrals about twice as far apart as light mode: about 4-6% white between adjacent layers versus about 2% (per layer, not total). In HSB, raise brightness about 4-6 per layer and lower saturation only for a saturated base (source: 10-20 per layer from a saturated dark blue; lightly tinted neutrals need little or none). Dark colors look more alike, so they need more distance. ([jain/60-30-10-rule 3:29], [jain/color-mistakes 5:03], [jain/macos-apps 5:05], [jain/ui-cheat-codes 7:36])
- Use the 300-400 step of the accent ramp as the dark-mode primary (hover at 400-500), with dark text on fills that light, and lighten over-saturated colors; e.g. with Tailwind scales, light mode = 50 background + 500 for non-text accents, dark mode = 950 background + 300 primary (source: light mode 50 + 500 accent). Primary colors are usually far too saturated on dark backgrounds. *Note: In light mode, links and white-text fills need the step that passes 4.5:1 (see the ramp rule below).* ([jain/60-30-10-rule 3:56], [jain/awful-to-amazing 4:37], [jain/ui-cheat-codes 7:07])
- Brighten borders and surfaces enough that layers stay distinguishable, but lower border contrast when light borders look harsh against dark cards. Dark layers need bigger differences, yet bright outlines glare. ([jain/60-30-10-rule 4:03], [jain/color-mistakes 5:03], [jain/every-ui-concept 5:52])
- Don't build dark mode by inverting light mode; design both as distinct but consistent palettes. Inversion gives light mode too much contrast and dark mode too little separation. ([jain/color-mistakes 4:55], [jain/macos-apps 5:05])
- Dim text in dark mode: use light grays for most text and reserve pure white for the most important text and actions. Dark mode is about reducing eye strain. *Note: Editorial: e.g. secondary text as white at about 60-70% opacity; check 4.5:1 against the actual surface.* ([jain/60-30-10-rule 4:03], [jain/color-mistakes 4:37])
- Desaturate saturated elements such as logos and chips in dark mode; reduce chip saturation and brightness and switch to brighter chip text. Bright chips are harsh on dark surfaces. ([jain/color-mistakes 5:26], [jain/every-ui-concept 6:04])

## Semantic and status colors

- Color destructive actions such as delete red, never the brand color, and keep semantic colors even in a neutral or monochrome palette: green for success, red for danger or urgency, yellow for warning, blue for trust. Brand color draws attention without signaling destruction; semantic colors are signifiers, so they override a monochrome palette. *Note: Don't rely on color alone; pair it with an icon or text label (WCAG 1.4.1).* ([jain/60-30-10-rule 4:35], [jain/color-mistakes 5:51], [jain/dashboard-flaws 1:58], [jain/every-ui-concept 5:30])
- **App UI:** Notification badges may use the brand color instead of red. Notifications are far more flexible than destructive actions. ([jain/color-mistakes 6:03])

## Contrast

- Colored pairs fail contrast most often on chips, icons on tinted backgrounds and tab labels: check those pairs and darken the label or icon until it passes. The whole point of color is that people can see it. *Note: WCAG AA requires 4.5:1 for text and 3:1 for large text and UI graphics; compute the ratio with a tool rather than eyeballing it.* ([jain/color-mistakes 0:23], [jain/crucial-ui-elements 0:49], [jain/vibe-coding-pro-ui 5:38])
- If a brand color fails WCAG with white text, darken it or switch to a passing complementary color; adapt brand colors for UI rather than using them raw. Many brands pair a primary with an adapted secondary for exactly this reason. ([jain/color-mistakes 3:06])

## Palettes and scales

- Start the palette from one base color (from the brand or its imagery) and extend it with slightly rotated analogous hues and one complementary color, not opacity variations alone. Opacity variations alone feel bland. ([jain/color-mistakes 2:49], [jain/every-ui-concept 4:59], [jain/ui-cheat-codes 3:27], [jain/vibe-coding-cant-fix 2:06])
- Build the accent as a 50-950 ramp rather than one color: use the 500 step for non-text accents, the first step that passes 4.5:1 on white (often 600-700 for blues, darker for greens and yellows) for links and white-text fills, and a darker adjacent step for hover, with light tints for chips and backgrounds (source: 500 or 600 main, 700 hover, 400 or 500 links). Take hover and pressed colors from adjacent steps (see also components-and-states.md). Large design systems build components from ramps. ([jain/60-30-10-rule 2:19], [jain/every-ui-concept 5:14])
- Derive a few darker shades from a base color in HSB, per shade: +20 saturation, -10 brightness, and hue ~20° toward blue (the source derives two shades this way). Shifting toward blue matches perceived darkness: blues and purples read darkest, yellows lightest. *Note: Values are per step; across a full 50-950 ramp, shrink the hue shift so the total stays small.* ([jain/ui-cheat-codes 3:20])
- Theme neutrals in OKLCH: from a gray, drop lightness by ~0.03, raise chroma by ~0.02, then set the hue to the brand's. Consistently themes any design, including dark mode. ([jain/60-30-10-rule 5:53])

[jain/60-30-10-rule 0:08]: https://youtu.be/66oOi9OLMCw?t=8
[jain/60-30-10-rule 0:29]: https://youtu.be/66oOi9OLMCw?t=29
[jain/60-30-10-rule 0:40]: https://youtu.be/66oOi9OLMCw?t=40
[jain/60-30-10-rule 2:19]: https://youtu.be/66oOi9OLMCw?t=139
[jain/60-30-10-rule 3:29]: https://youtu.be/66oOi9OLMCw?t=209
[jain/60-30-10-rule 3:56]: https://youtu.be/66oOi9OLMCw?t=236
[jain/60-30-10-rule 4:03]: https://youtu.be/66oOi9OLMCw?t=243
[jain/60-30-10-rule 4:14]: https://youtu.be/66oOi9OLMCw?t=254
[jain/60-30-10-rule 4:35]: https://youtu.be/66oOi9OLMCw?t=275
[jain/60-30-10-rule 5:53]: https://youtu.be/66oOi9OLMCw?t=353
[jain/awful-to-amazing 4:37]: https://youtu.be/ulSOdTgoGeY?t=277
[jain/awful-to-amazing 5:04]: https://youtu.be/ulSOdTgoGeY?t=304
[jain/beginner-mistakes 1:23]: https://youtu.be/AH_ugxmLeUM?t=83
[jain/color-mistakes 0:14]: https://youtu.be/EOcY3hPMQkk?t=14
[jain/color-mistakes 0:23]: https://youtu.be/EOcY3hPMQkk?t=23
[jain/color-mistakes 0:29]: https://youtu.be/EOcY3hPMQkk?t=29
[jain/color-mistakes 0:46]: https://youtu.be/EOcY3hPMQkk?t=46
[jain/color-mistakes 0:56]: https://youtu.be/EOcY3hPMQkk?t=56
[jain/color-mistakes 1:09]: https://youtu.be/EOcY3hPMQkk?t=69
[jain/color-mistakes 1:12]: https://youtu.be/EOcY3hPMQkk?t=72
[jain/color-mistakes 1:40]: https://youtu.be/EOcY3hPMQkk?t=100
[jain/color-mistakes 1:48]: https://youtu.be/EOcY3hPMQkk?t=108
[jain/color-mistakes 1:52]: https://youtu.be/EOcY3hPMQkk?t=112
[jain/color-mistakes 1:57]: https://youtu.be/EOcY3hPMQkk?t=117
[jain/color-mistakes 2:49]: https://youtu.be/EOcY3hPMQkk?t=169
[jain/color-mistakes 3:06]: https://youtu.be/EOcY3hPMQkk?t=186
[jain/color-mistakes 4:37]: https://youtu.be/EOcY3hPMQkk?t=277
[jain/color-mistakes 4:55]: https://youtu.be/EOcY3hPMQkk?t=295
[jain/color-mistakes 5:03]: https://youtu.be/EOcY3hPMQkk?t=303
[jain/color-mistakes 5:26]: https://youtu.be/EOcY3hPMQkk?t=326
[jain/color-mistakes 5:51]: https://youtu.be/EOcY3hPMQkk?t=351
[jain/color-mistakes 6:03]: https://youtu.be/EOcY3hPMQkk?t=363
[jain/crucial-ui-elements 0:49]: https://youtu.be/gKM6b2EnW1k?t=49
[jain/crucial-ui-elements 1:21]: https://youtu.be/gKM6b2EnW1k?t=81
[jain/dashboard-flaws 1:50]: https://youtu.be/Ksx9C2-3yMo?t=110
[jain/dashboard-flaws 1:58]: https://youtu.be/Ksx9C2-3yMo?t=118
[jain/every-ui-concept 4:59]: https://youtu.be/EcbgbKtOELY?t=299
[jain/every-ui-concept 5:14]: https://youtu.be/EcbgbKtOELY?t=314
[jain/every-ui-concept 5:30]: https://youtu.be/EcbgbKtOELY?t=330
[jain/every-ui-concept 5:41]: https://youtu.be/EcbgbKtOELY?t=341
[jain/every-ui-concept 5:52]: https://youtu.be/EcbgbKtOELY?t=352
[jain/every-ui-concept 5:57]: https://youtu.be/EcbgbKtOELY?t=357
[jain/every-ui-concept 6:04]: https://youtu.be/EcbgbKtOELY?t=364
[jain/google-ai-redesign 2:58]: https://youtu.be/pGYLZyBE32o?t=178
[jain/landing-page-levels 1:44]: https://youtu.be/eMMiLeo_UGI?t=104
[jain/landing-page-levels 2:46]: https://youtu.be/eMMiLeo_UGI?t=166
[jain/macos-apps 5:05]: https://youtu.be/Vy0KKvZJRH8?t=305
[jain/tesla-wannabe-redesign 4:15]: https://youtu.be/V3Omp1hm0Sg?t=255
[jain/ui-cheat-codes 3:20]: https://youtu.be/c1TvOcKdBVE?t=200
[jain/ui-cheat-codes 3:27]: https://youtu.be/c1TvOcKdBVE?t=207
[jain/ui-cheat-codes 6:47]: https://youtu.be/c1TvOcKdBVE?t=407
[jain/ui-cheat-codes 7:07]: https://youtu.be/c1TvOcKdBVE?t=427
[jain/ui-cheat-codes 7:29]: https://youtu.be/c1TvOcKdBVE?t=449
[jain/ui-cheat-codes 7:36]: https://youtu.be/c1TvOcKdBVE?t=456
[jain/vibe-coding-cant-fix 2:06]: https://youtu.be/RCneB_MQ7qs?t=126
[jain/vibe-coding-cant-fix 2:43]: https://youtu.be/RCneB_MQ7qs?t=163
[jain/vibe-coding-pro-ui 5:38]: https://youtu.be/xHD01_Onac0?t=338
[jain/web-design-hacks 3:18]: https://youtu.be/Lp6ey4AyDzA?t=198
[jain/web-design-hacks 6:14]: https://youtu.be/Lp6ey4AyDzA?t=374
[jain/weirdly-perfect-ui 6:54]: https://youtu.be/neE6wOuBIP8?t=414
