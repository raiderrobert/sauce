# Color

Choosing and restraining color: accents, icons, neutrals and backgrounds, dark mode, semantic colors, contrast and palette building.

Rules within a section are ordered by how many sources back them. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. Each citation (`author/video timestamp`) links to that moment in the source; full entries are in `references/bibliography.md`.

Contents: Restraint and purpose · Neutrals and backgrounds · Dark mode · Semantic and status colors · Contrast · Palettes and scales

## Restraint and purpose

- Use color to communicate status or data meaning, not decoration; remove any color that is there just for color's sake. A reduced palette creates clarity. ([jain/color-mistakes 0:14], [jain/dashboard-flaws 1:50], [jain/every-ui-concept 5:41])
- Reserve the accent for the one component you most want users to act on; never let several accents compete on sibling cards. A bright accent can appear only on hover or a CTA reveal. Being the only accent-colored element is what makes it stand out. ([jain/color-mistakes 0:46], [jain/tesla-wannabe-redesign 4:15], [jain/weirdly-perfect-ui 6:54])
- Keep UI icons (nav, buttons, inputs, list rows) neutral. Color an icon only when the color carries status or meaning, for feature-illustration icons on marketing pages (e.g. in accent colors), or as a light tint in KPI and stat cards. UI icons work as recognizable symbols; color there is noise. ([jain/color-mistakes 1:09], [jain/saas-vibe-code-mistakes 5:12], [jain/vibe-coding-cant-fix 2:43])
- Don't put the brand color on everything that can take it; give low-importance elements or cards a light tint of it with dark text. Full-strength brand color dominates the page and causes contrast problems. ([jain/color-mistakes 0:56], [jain/landing-page-levels 1:44])
- **App UI:** Use brand color on active states, such as the active tab or nav item, for a controlled pop of color. ([jain/color-mistakes 1:12], [jain/crucial-ui-elements 1:21])
- In product UI, skip 60-30-10 and stay almost entirely neutral with a tiny accent, e.g. ~90% dark neutral, ~8% light, ~2% accent. Use 60-30-10 (dominant neutral, secondary, accent) on marketing pages. Product UI is a frame for content; Vercel's UI was roughly this split as of 2026. ([jain/60-30-10-rule 0:08], [jain/color-mistakes 0:29])
- **Marketing:** On landing pages, let color come from product screenshots and curated imagery; keep buttons neutral (e.g. white on dark). A more vibrant, professional way to add color. ([jain/landing-page-levels 2:46])

## Neutrals and backgrounds

- Tint neutrals and backgrounds with a hint of the brand hue instead of pure white or black, e.g. a bluish black, or a deep purple, red or green in dark mode. Integrates color without overpowering and makes the design feel cohesive. ([jain/60-30-10-rule 5:53], [jain/awful-to-amazing 5:04], [jain/color-mistakes 1:57], [jain/every-ui-concept 4:59], [jain/ui-cheat-codes 6:47], [jain/web-design-hacks 3:18])
- Keep page backgrounds plain: almost never bright colors or gradients. If a gradient is needed, use shades of one hue; the one exception is a dark-mode background gradient of two brand colors darkened way down. Backgrounds should stay in the background; mixed-hue gradients like blue-green rarely work. ([jain/beginner-mistakes 1:23], [jain/color-mistakes 1:40], [jain/google-ai-redesign 2:58])
- **App UI:** In light mode, pick one layering scheme: an off-white page with white cards, or a white page with slightly darker cards. Keep the page at 98-100% white and the app frame or sidebar ~2% darker. Large surfaces need only a slight shift; Linear, Notion and Vercel sat at 98-100% white as of 2026. ([jain/60-30-10-rule 0:29], [jain/color-mistakes 1:48])
- Plan neutrals up front: 3-5 for a landing page; for product UI about four background layers, one or two stroke colors, and the text tiers in typography.md. ([jain/60-30-10-rule 0:40])

## Dark mode

- **App UI:** Create depth in dark mode with lighter raised surfaces and borders: each elevation step gets a lighter fill. Shadows barely read on dark backgrounds; if you use one, make it stronger than in light mode. Surfaces lighten as they elevate; a light-mode shadow disappears against a dark page. ([jain/60-30-10-rule 4:14], [jain/color-mistakes 1:52], [jain/every-ui-concept 5:57], [jain/ui-cheat-codes 7:29], [jain/web-design-hacks 6:14])
- Space dark-mode neutrals about twice as far apart as light mode: ~4-6% lightness per layer versus ~2% (in HSB, +4-6 brightness and -10-20 saturation per layer). Dark colors look more alike, so they need more distance. ([jain/60-30-10-rule 3:29], [jain/color-mistakes 5:03], [jain/macos-apps 5:05], [jain/ui-cheat-codes 7:36])
- Use the 300-400 shade of the accent as the dark-mode primary (versus ~500 in light mode) and lighten over-saturated colors; e.g. with Tailwind scales, light mode = 50 background + 500 accent, dark mode = 950 background + 300 primary. Primary colors are usually far too saturated on dark backgrounds. ([jain/60-30-10-rule 3:56], [jain/awful-to-amazing 4:37], [jain/ui-cheat-codes 7:07])
- Brighten borders and surfaces enough that layers stay distinguishable, but lower border contrast when light borders look harsh against dark cards. Dark layers need bigger differences, yet bright outlines glare. ([jain/60-30-10-rule 4:03], [jain/color-mistakes 5:03], [jain/every-ui-concept 5:52])
- Don't build dark mode by inverting light mode; design both as distinct but consistent palettes. Inversion gives light mode too much contrast and dark mode too little separation. ([jain/color-mistakes 4:55], [jain/macos-apps 5:05])
- Dim text in dark mode: reserve pure white for the most important text and set secondary text to white at ~60-70% opacity. Dark mode is about reducing eye strain. ([jain/60-30-10-rule 4:03], [jain/color-mistakes 4:37])
- Desaturate saturated elements such as logos and chips in dark mode; reduce chip saturation and brightness and switch to brighter chip text. Bright chips are harsh on dark surfaces. ([jain/color-mistakes 5:26], [jain/every-ui-concept 6:04])

## Semantic and status colors

- Include semantic colors even in a neutral or monochrome palette: green for success, red for danger or urgency (e.g. a red chip on an urgent item in an activity log), yellow for warning, blue for information. Semantic colors are signifiers, so they override a monochrome palette. ([jain/60-30-10-rule 4:35], [jain/color-mistakes 5:55], [jain/dashboard-flaws 1:58], [jain/every-ui-concept 5:30])
- Color destructive actions such as delete red, never the brand color. Brand color draws attention without signaling destruction. ([jain/60-30-10-rule 4:50], [jain/color-mistakes 5:51])
- **App UI:** Notification badges may use the brand color instead of red. Notifications are far more flexible than destructive actions. ([jain/color-mistakes 6:03])

## Contrast

- Check every colored pair against WCAG contrast (chips, icons on tinted backgrounds, tab labels) and fix any that fail. The whole point of color is that people can see it. ([jain/color-mistakes 0:23], [jain/crucial-ui-elements 0:49], [jain/vibe-coding-pro-ui 5:38])
- If a brand color fails WCAG with white text, darken it or switch to a passing complementary color; adapt brand colors for UI rather than using them raw. Many brands pair a primary with an adapted secondary for exactly this reason. ([jain/color-mistakes 3:06])

## Palettes and scales

- Start the palette from one base color (from the brand or its imagery) and extend it with slightly rotated analogous hues and one complementary color, not opacity variations alone. Opacity variations alone feel bland. ([jain/color-mistakes 2:49], [jain/every-ui-concept 4:59], [jain/ui-cheat-codes 3:27], [jain/vibe-coding-cant-fix 2:06])
- Build the accent as a 50-950 ramp rather than one color: ~500-600 for the main fill, ~400-500 for links, light tints for chips and backgrounds; take hover and pressed colors from adjacent steps (see components-and-states.md). Large design systems build components from ramps. ([jain/60-30-10-rule 2:19], [jain/every-ui-concept 5:14])
- Derive darker shades in HSB: per step, +20 saturation, -10 brightness, and hue shifted ~20° toward blue. Matches perceived darkness; blues and purples read darkest, yellows and reds lightest. ([jain/ui-cheat-codes 3:20])
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
[jain/60-30-10-rule 4:50]: https://youtu.be/66oOi9OLMCw?t=290
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
[jain/color-mistakes 5:55]: https://youtu.be/EOcY3hPMQkk?t=355
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
[jain/saas-vibe-code-mistakes 5:12]: https://youtu.be/PDcQJOPby1k?t=312
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
