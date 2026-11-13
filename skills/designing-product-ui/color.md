# Color

How to choose, restrain and apply color in product UI: accents, neutrals, dark mode, semantic colors, contrast and palette building.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Color restraint and purpose

- Use color to communicate status or data meaning, not decoration; remove any color used just for the sake of color. Less is almost always more; a reduced palette creates clarity. ([jain/color-mistakes 0:14](https://youtu.be/EOcY3hPMQkk?t=14), [jain/dashboard-flaws 1:50](https://youtu.be/Ksx9C2-3yMo?t=110), [jain/every-ui-concept 5:41](https://youtu.be/EcbgbKtOELY?t=341))
- Don't apply the brand color to everything that can take it; give low-importance elements a light tint with black text instead. Bright brand color dominates the page and text, and creates accessibility issues. ([jain/color-mistakes 0:56](https://youtu.be/EOcY3hPMQkk?t=56), [jain/landing-page-levels 1:44](https://youtu.be/eMMiLeo_UGI?t=104))
- Reserve the accent for the one component you most want users to act on; never let several accents compete on sibling cards. Being the only accent-colored element is what makes it stand out. ([jain/color-mistakes 0:46](https://youtu.be/EOcY3hPMQkk?t=46), [jain/weirdly-perfect-ui 6:54](https://youtu.be/neE6wOuBIP8?t=414))
- Put brand color on active states, such as the active tab or nav item, when you want a pop of color. Active states are a good place to play with brand color. ([jain/color-mistakes 1:12](https://youtu.be/EOcY3hPMQkk?t=72), [jain/crucial-ui-elements 1:21](https://youtu.be/gKM6b2EnW1k?t=81))
- In product UI, skip 60-30-10: stay mostly neutral with a tiny accent, e.g. ~90% black, 8% white, 2% red. Product design differs from marketing; Vercel is roughly that split. ([jain/60-30-10-rule 0:08](https://youtu.be/66oOi9OLMCw?t=8))
- Apply 60-30-10 outside product UI: 60% dominant neutral, 30% secondary, 10% accent. Applies to general/marketing design; for product UI use the far more neutral split. ([jain/color-mistakes 0:29](https://youtu.be/EOcY3hPMQkk?t=29))
- Keep icons uncolored. Their job is to be recognizable symbols. ([jain/color-mistakes 1:09](https://youtu.be/EOcY3hPMQkk?t=69))
- Let neutrals give elements room to breathe, the way whitespace does (neutral balance). Neutrals create hierarchy the same way whitespace does. ([jain/color-mistakes 1:27](https://youtu.be/EOcY3hPMQkk?t=87))
- On landing pages, let color pops come from product screenshots and curated imagery; keep buttons neutral (e.g. white on dark). A more vibrant, professional way to add color. ([jain/landing-page-levels 2:46](https://youtu.be/eMMiLeo_UGI?t=166))
- Introduce a bright accent only on hover or CTA reveal rather than everywhere. Keeps the bright color from being overpowering. ([jain/tesla-wannabe-redesign 4:15](https://youtu.be/V3Omp1hm0Sg?t=255))
- Use muted colors like baby blue, beige and lavender, not only pure saturated colors. Beginners treat color as all or nothing. ([jain/web-design-hacks 2:53](https://youtu.be/Lp6ey4AyDzA?t=173))
- Don't accept AI-chosen colors as-is. AI picks bright colors that don't work well together. ([jain/saas-vibe-code-mistakes 0:39](https://youtu.be/PDcQJOPby1k?t=39))

## Neutrals and backgrounds

- Tint neutral grays and backgrounds with a hint of the brand/accent color instead of pure white or black. Integrates color without overpowering visuals (e.g. GitHub's dark blue). ([jain/60-30-10-rule 5:53](https://youtu.be/66oOi9OLMCw?t=353), [jain/color-mistakes 1:57](https://youtu.be/EOcY3hPMQkk?t=117), [jain/every-ui-concept 4:59](https://youtu.be/EcbgbKtOELY?t=299), [jain/ui-cheat-codes 6:47](https://youtu.be/c1TvOcKdBVE?t=407))
- Favor grays, off-whites and bluish blacks over pure black and white; consider subtle noise/texture instead of plain white. Signals an experienced designer and makes the design feel cohesive. ([jain/awful-to-amazing 5:04](https://youtu.be/ulSOdTgoGeY?t=304), [jain/color-mistakes 4:45](https://youtu.be/EOcY3hPMQkk?t=285), [jain/web-design-hacks 3:18](https://youtu.be/Lp6ey4AyDzA?t=198))
- In light mode, pick one layering: gray background with white cards, light background with darker cards, or monochrome layers. Light mode is flexible; neutral gray background plus white foreground is a safe start. ([jain/60-30-10-rule 1:11](https://youtu.be/66oOi9OLMCw?t=71), [jain/color-mistakes 1:48](https://youtu.be/EOcY3hPMQkk?t=108))
- Keep the page background 98-100% white; if cards are pure white, make the background slightly off-white and darker cards the sidebar color. Linear, Notion and Vercel use 98-100%; pure white is fine, but cards need contrast. ([jain/60-30-10-rule 0:29](https://youtu.be/66oOi9OLMCw?t=29))
- Plan 3-5 neutrals for landing pages; for products, ~4 background layers, 1-2 stroke colors and ~3 text colors. ([jain/60-30-10-rule 0:40](https://youtu.be/66oOi9OLMCw?t=40))
- Make the app frame/sidebar a very slightly darker anchor color, about a 2% tint. Large elements need only a slight shift, especially in light mode. ([jain/60-30-10-rule 0:58](https://youtu.be/66oOi9OLMCw?t=58))
- Use dark grays instead of pure black for less important text like file metadata and labels. It boils down to hierarchy. ([jain/color-mistakes 4:21](https://youtu.be/EOcY3hPMQkk?t=261))
- Almost never use bright colors or gradients for page backgrounds. Backgrounds should stay in the background. ([jain/color-mistakes 1:40](https://youtu.be/EOcY3hPMQkk?t=100))
- Use a light tint of a bright brand color as a card background for a splash of color. Adds color without overpowering the visuals. ([jain/color-mistakes 2:05](https://youtu.be/EOcY3hPMQkk?t=125))
- In light mode, consider reversing background and foreground for small features like a search bar. Better accessibility for smaller features. ([jain/color-mistakes 2:12](https://youtu.be/EOcY3hPMQkk?t=132))
- If you need a gradient, use shades of one hue, not two different colors; often skip it entirely. Mixed-hue gradients like blue-green don't work; exception: darkened dark-mode brand gradients. ([jain/beginner-mistakes 1:23](https://youtu.be/AH_ugxmLeUM?t=83))
- Sample background gradient colors from nearby imagery when a plain black background blends into the content. Black was too similar to the image subject. ([jain/tesla-wannabe-redesign 5:19](https://youtu.be/V3Omp1hm0Sg?t=319))

## Dark mode

- Make elevated surfaces lighter than the background to create depth; raised cards need a lighter fill or a border, not shadows. Shadows don't work in dark mode; surfaces always lighten as they elevate. ([jain/60-30-10-rule 4:14](https://youtu.be/66oOi9OLMCw?t=254), [jain/color-mistakes 1:52](https://youtu.be/EOcY3hPMQkk?t=112), [jain/every-ui-concept 5:57](https://youtu.be/EcbgbKtOELY?t=357), [jain/ui-cheat-codes 7:29](https://youtu.be/c1TvOcKdBVE?t=449))
- Space dark-mode neutrals about twice as far apart as light mode: ~4-6% lightness steps vs ~2%; per layer +4-6 brightness, -10-20 saturation. Dark colors look more similar, so they need more distance. ([jain/60-30-10-rule 3:29](https://youtu.be/66oOi9OLMCw?t=209), [jain/color-mistakes 5:03](https://youtu.be/EOcY3hPMQkk?t=303), [jain/macos-apps 5:05](https://youtu.be/Vy0KKvZJRH8?t=305), [jain/ui-cheat-codes 7:36](https://youtu.be/c1TvOcKdBVE?t=456))
- Use the 300/400 shade as primary and 400/500 for hover; lighten overly saturated primary and accent colors. Primary colors are often far too saturated for dark mode. ([jain/60-30-10-rule 3:56](https://youtu.be/66oOi9OLMCw?t=236), [jain/awful-to-amazing 4:37](https://youtu.be/ulSOdTgoGeY?t=277), [jain/ui-cheat-codes 7:18](https://youtu.be/c1TvOcKdBVE?t=438))
- Don't build dark mode by inverting light mode; design both as different but consistent palettes. Inversion gives light mode too much contrast and dark mode too little separation. ([jain/color-mistakes 4:55](https://youtu.be/EOcY3hPMQkk?t=295), [jain/macos-apps 5:05](https://youtu.be/Vy0KKvZJRH8?t=305))
- Dim text to light grays; reserve pure white for the most important elements only. Dark mode focuses on reducing eye strain. ([jain/60-30-10-rule 4:03](https://youtu.be/66oOi9OLMCw?t=243), [jain/color-mistakes 4:37](https://youtu.be/EOcY3hPMQkk?t=277))
- Desaturate saturated elements like logos and chips; reduce chip saturation and brightness and flip to brighter text. Bright chips are too harsh; flipping text creates hierarchy. ([jain/color-mistakes 5:26](https://youtu.be/EOcY3hPMQkk?t=326), [jain/every-ui-concept 6:04](https://youtu.be/EcbgbKtOELY?t=364))
- Tint dark backgrounds: bluish blacks, or deep purples, reds or greens, not just navy or gray. ([jain/every-ui-concept 6:12](https://youtu.be/EcbgbKtOELY?t=372), [jain/web-design-hacks 3:18](https://youtu.be/Lp6ey4AyDzA?t=198))
- Brighten borders and card surfaces more than in light mode so layers stay distinguishable. Dark colors need bigger differences; but tone down borders that look harsh (next rule). ([jain/60-30-10-rule 4:03](https://youtu.be/66oOi9OLMCw?t=243), [jain/color-mistakes 5:03](https://youtu.be/EOcY3hPMQkk?t=303))
- Lower card border contrast when light borders look harsh against dark surfaces. Light borders create too much contrast; brighten only when layers become indistinguishable. ([jain/every-ui-concept 5:52](https://youtu.be/EcbgbKtOELY?t=352))
- Respect the OS light/dark mode setting. ([jain/macos-apps 4:59](https://youtu.be/Vy0KKvZJRH8?t=299))
- To add color to dark mode, set the background to a gradient of two primary brand colors darkened down. Subtle color for dark modes; otherwise prefer single-hue gradients. ([jain/google-ai-redesign 2:58](https://youtu.be/pGYLZyBE32o?t=178))

## Semantic and status colors

- Include semantic colors even in neutral or monochrome brands: green success, red danger/urgency, yellow warning, blue trust. Colors convey meaning and act as signifiers, so break the system. ([jain/60-30-10-rule 4:35](https://youtu.be/66oOi9OLMCw?t=275), [jain/color-mistakes 5:55](https://youtu.be/EOcY3hPMQkk?t=355), [jain/every-ui-concept 5:30](https://youtu.be/EcbgbKtOELY?t=330))
- Always color destructive actions like delete red, never the brand color. Brand color draws attention without signaling destruction; anything else is a design sin. ([jain/60-30-10-rule 4:50](https://youtu.be/66oOi9OLMCw?t=290), [jain/color-mistakes 5:51](https://youtu.be/EOcY3hPMQkk?t=351))
- Use a red icon or chip to flag urgent actions in activity logs. Red draws the eye because the action is urgent. ([jain/dashboard-flaws 1:58](https://youtu.be/Ksx9C2-3yMo?t=118))
- Let notification badges use the brand color instead of red if you like. Notifications are much more flexible than destructive actions. ([jain/color-mistakes 6:03](https://youtu.be/EOcY3hPMQkk?t=363))

## Contrast and accessibility

- Check every colored pair against WCAG contrast—chips, icons on tinted backgrounds, tab labels—and fix any that fail. The whole point of color is that you can see it. ([jain/color-mistakes 0:23](https://youtu.be/EOcY3hPMQkk?t=23), [jain/crucial-ui-elements 0:49](https://youtu.be/gKM6b2EnW1k?t=49), [jain/vibe-coding-pro-ui 5:38](https://youtu.be/xHD01_Onac0?t=338))
- If a brand color fails WCAG with white text, darken it or use a passing complementary color; adapt brand colors for good design. Many brands pair a primary with an adapted or complementary secondary. ([jain/color-mistakes 3:06](https://youtu.be/EOcY3hPMQkk?t=186))
- Add a subtle overlay to bright hero images to fix text contrast. ([jain/skincare-redesign 4:39](https://youtu.be/BvbFPzLjWcU?t=279))
- Give users a pause/play control for continuous decorative animations. Some people may be bothered by the motion. ([jain/micro-animations 4:10](https://youtu.be/ld1zhQMXxXU?t=250))

## Building palettes and scales

- Treat the accent as a 50-950 ramp, not one color: 500/600 main, 700 hover, 400/500 links; reuse it for chips, states and charts. Large companies build out components from ramps. ([jain/60-30-10-rule 2:19](https://youtu.be/66oOi9OLMCw?t=139), [jain/every-ui-concept 5:14](https://youtu.be/EcbgbKtOELY?t=314))
- Start the palette from one base/brand color; use a generator like Coolors if you can't pick one. ([jain/every-ui-concept 4:59](https://youtu.be/EcbgbKtOELY?t=299), [jain/ui-cheat-codes 3:27](https://youtu.be/c1TvOcKdBVE?t=207))
- Derive darker shades in HSB: each step +20 saturation, -10 brightness, and hue shifted ~20 toward blue. Objective matching; blues and purples read darkest, yellows and reds lightest. ([jain/ui-cheat-codes 3:20](https://youtu.be/c1TvOcKdBVE?t=200))
- Shortcut with Tailwind: light mode uses the 50 shade background and 500 accent; dark mode uses 950 background and 300 primary. Hard to screw up; works for every color. ([jain/ui-cheat-codes 7:07](https://youtu.be/c1TvOcKdBVE?t=427))
- Theme neutrals in OKLCH: drop lightness by 0.03, raise chroma by 0.02, then set the hue. Consistently themes any design, including dark mode. ([jain/60-30-10-rule 5:53](https://youtu.be/66oOi9OLMCw?t=353))
- Extend a limited brand palette with analogous hues (rotate slightly on the color wheel) and a complementary color. Opacity variations alone feel bland. ([jain/color-mistakes 2:49](https://youtu.be/EOcY3hPMQkk?t=169))
- Derive the palette from your brand imagery's tones, then add a few accent colors. ([jain/vibe-coding-cant-fix 2:06](https://youtu.be/RCneB_MQ7qs?t=126))
- Use desaturated colors for clay/soft 3D effects. Saturated colors don't work well for this effect. ([jain/figma-web-effects 1:24](https://youtu.be/MZSm6MA8bww?t=84))
