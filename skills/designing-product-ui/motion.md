# Motion

Purpose, easing and timing, hover and press feedback, transitions, gestures, loaders and entrances, and scroll and ambient motion.

Practitioner heuristics, not standards: accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and the product's own design system take precedence. Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. *Note:* text is an uncited editorial caveat. Each citation (`author/video timestamp`) links to that moment in the source; the link definitions at the end of the file can be skipped, and full entries are in `references/bibliography.md`.

Contents: Purpose and restraint · Easing and timing · Hover and press feedback · Transitions and overlays · Gestures and input timing · Loaders and entrances · Scroll and ambient motion

## Purpose and restraint

- Animate only to add clarity, feedback or focus, e.g. to direct the eye to the product or key text; never motion for its own sake. Purposeless animation distracts instead of supporting clarity. *Note: Honor prefers-reduced-motion: reduce or remove non-essential animation.* ([jain/boring-design-hacks 5:08], [jain/captivating-sections 2:22], [jain/genius-designer 3:32], [jain/vibe-coding-cant-fix 7:37])
- Keep animations subtle and simple: prefer a fade, a short slide (about 8-24px) or a slight scale (about 0.95-1.05) over large sweeps, spins and bounces, and execute them cleanly at full quality. Flashy animations slow the site and overwhelm people; blurry assets look sloppy. *Note: The distance and scale figures are editorial examples.* ([jain/captivating-sections 4:06], [jain/modern-layouts 4:24], [jain/think-like-product-designer 0:47], [jain/trendy-web-animations 0:06])
- **Marketing:** Expressive motion belongs on marketing pages: there, motion can be used even where static would work, built from a few repeated themes (e.g. consistent section transitions) that become the brand's animation identity. Repeated animations, not one-offs, form a motion identity. ([jain/boring-design-hacks 2:50], [jain/vibe-coding-cant-fix 7:27])
- **App UI:** Keep dashboard animation tame; spend creativity on chart hovers such as value bubbles or dimming the other bars. ([jain/dashboard-ui 7:23])

## Easing and timing

- Always apply easing, almost never linear, and map the curve to the tone: snappy = a short ease-out, springy = a spring with visible overshoot, smooth = a longer ease-in-out. Real objects speed up and slow down, so eased motion feels natural; the easing defines how an animation feels. ([jain/boring-design-hacks 3:40], [jain/mobile-swipe-interactions 0:44])
- **Marketing:** On marketing pages and load sequences, move large elements (reveals, expansions, wipes) with an exponential ease-in-out, e.g. cubic-bezier(0.87, 0, 0.13, 1) over ~0.8-1.3s. Large movements need a strong curve. ([jain/load-animations-code 5:32], [jain/load-animations-figma 4:55])
- **App UI:** In app UI, fade and transition elements with a simple ease-in-out around 200ms, keeping most transitions within about 150-300ms. Small fades and state changes need speed; long curves make product screens feel slow. *Note: The 150-300ms bound is editorial; the source gives ~200ms for fades.* ([jain/load-animations-figma 4:55])
- **Marketing:** Use a spring rather than default easing for hover pop-ups, e.g. in the Motion library { type: 'spring', stiffness: 636, damping: 24 } (about 0.5s with a visible bounce). The spring is what makes the pop-up feel alive. ([jain/micro-animations 3:06])

## Hover and press feedback

- **Marketing:** Add small, simple hover responses to interactive elements, including product visuals and bento cards; don't go overboard. They keep simple pages from feeling bland. ([jain/boring-design-hacks 5:21], [jain/landing-page-levels 6:35], [jain/modern-layouts 5:02])
- **Marketing:** On marketing pages, give buttons a hover animation beyond a color shift, e.g. slide the label up to reveal a duplicate while a background fill expands. Looks polished without juggling many hover colors. ([jain/genius-designer 4:20], [jain/micro-animations 0:30], [jain/trendy-web-animations 2:46])
- **Marketing:** On card hover, zoom (and optionally blur) the image slightly; for fading in an arrow as the link cue on repeating cards, see also components-and-states.md. Adds a premium feel. ([jain/google-ai-redesign 4:41], [jain/tesla-wannabe-redesign 4:12])
- **Marketing:** Use mouse-follow effects sparingly (the best use is pulling a CTA toward the cursor), and give every pointer-driven effect a touch fallback. Mouse-follow can be very annoying, and it doesn't exist on touch devices. ([jain/trendy-web-animations 4:54])
- Shrink buttons slightly while pressed to confirm the click. ([jain/micro-animations 0:34])

## Transitions and overlays

- Animate menus and hover pop-ups in from a few pixels below their final position at 0% opacity, so they slide up while fading. Nicer than a plain fade. ([jain/animated-sidebar 3:08], [jain/micro-animations 2:59])
- **App UI:** As a bottom sheet or popover rises, scale the background down slightly and move it down; reverse on dismiss. Reinforces that the sheet sits above the page. ([jain/mobile-app-ui 5:26], [jain/mobile-swipe-interactions 5:03])
- **App UI:** Use motion direction to situate users: temporary actions slide up from the bottom, progress slides in from the side, and page transitions follow the swipe direction. Direction tells users where they are in the flow. ([jain/captivating-sections 4:58], [jain/mobile-swipe-interactions 3:19])
- **App UI:** For swipe-back transitions, offset the background screen about 35% left and slide it right as the top screen leaves. Makes the transition feel continuous. ([jain/mobile-app-ui 5:17])
- **Marketing:** On marketing pages and hero moments, transition by zooming a shared image into the next page's hero instead of sliding a new page in; app navigation follows the swipe direction instead. Creates continuity between screens. ([jain/mobile-swipe-interactions 4:03])
- **Marketing:** Add a brief filter: blur() to tab and section content transitions. A small change that makes switches feel much smoother. ([jain/landing-page-levels 8:36])

## Gestures and input timing

- **App UI:** Give swipes physical momentum: add a little bounce to swipe easing, and move remaining cards forward as the top card of a stack is dragged away. Rigid swiping feels unnatural. ([jain/micro-animations 6:48], [jain/mobile-swipe-interactions 0:33])
- **App UI:** In consumer feed or content apps, make the primary interaction a single, decision-free gesture (e.g. swipe up), with auto-snapping and autoplay removing extra steps. Zero decisions per step keeps cognitive load minimal. *Note: Give autoplaying media a visible pause control, and a tap or button alternative to the gesture.* ([jain/tiktok-ux 1:46])
- **App UI:** Delay a single-click action only when it competes with a double-click action (e.g. open versus inline rename), and only if the secondary action is worth the delay. The first click would otherwise act before the double-click registers; non-competing clicks need no delay. ([jain/software-must-lie 1:11])
- **App UI:** When dragging to reorder, show the predicted drop location and auto-scroll faster the closer the pointer is to the edge. A gradient of speed beats a binary on/off. ([jain/software-must-lie 4:14])

## Loaders and entrances

- **Marketing:** On marketing pages only, a deliberate intro loader (screen reveal, expanding nav, text wipe) can add a premium feel or cover loading heavy video or 3D: hold ~1000ms, slide up over 0.8-1.3s on an exponential curve, then fade the nav in over 200-300ms. A brand device, not a functional loader; functional loaders stay short (see also components-and-states.md). *Note: Show only on first visit, skip under prefers-reduced-motion, and never delay content that is ready.* ([jain/load-animations-code 6:02], [jain/load-animations-figma 0:01], [jain/trendy-web-animations 0:40])
- **Marketing:** When a loading screen slides away, offset page content slightly down and slide it up concurrently with the same duration and easing. Moving content with the loader makes the page feel fluid. ([jain/load-animations-code 6:58], [jain/load-animations-figma 1:17], [jain/trendy-web-animations 1:34])
- **Marketing:** Stagger entrances one element at a time (about 0.2s stagger, 0.6s fade), e.g. nav items after their container expands. ([jain/awful-to-amazing 6:44], [jain/load-animations-code 16:07])
- **Marketing:** Give decorative elements and key headline words characterful entrances (rotate-pop, fly in, gentle bob, word animations) instead of none or a robotic fade. Text is most of a website and is otherwise neither fun nor interesting. ([jain/boring-design-hacks 3:15])

## Scroll and ambient motion

- **Marketing:** Auto-rotate important images only with a visible pause control; stop rotation on hover and focus, turn the active dot into a progress timer, and add a slight zoom on hover. Encourages users to see every image without trapping those bothered by motion. ([jain/crucial-ui-elements 10:25], [jain/micro-animations 4:10], [jain/vibe-coding-cant-fix 8:14])
- Use scrolljacking very sparingly, if ever; prefer a well-built hover animation that demonstrates the product over complex scroll animations. Complex scroll animation makes navigation harder and adds little. ([jain/captivating-sections 2:52], [jain/genius-designer 4:20])
- **Marketing:** Keep looping and ambient motion slow and simple: marquees slow enough to read, gentle photo zooms in or out; weigh the usability cost before adding them. Complicated or fast loops are distracting. ([jain/awful-to-amazing 5:32], [jain/trendy-web-animations 4:06])
- **Marketing:** Apply subtle parallax on scroll to elements placed in spacious margins. A lifelike depth effect without busy backgrounds. ([jain/boring-design-hacks 3:48])

[jain/animated-sidebar 3:08]: https://youtu.be/NtZeYmTMuo4?t=188
[jain/awful-to-amazing 5:32]: https://youtu.be/ulSOdTgoGeY?t=332
[jain/awful-to-amazing 6:44]: https://youtu.be/ulSOdTgoGeY?t=404
[jain/boring-design-hacks 2:50]: https://youtu.be/SfX43uIubj4?t=170
[jain/boring-design-hacks 3:15]: https://youtu.be/SfX43uIubj4?t=195
[jain/boring-design-hacks 3:40]: https://youtu.be/SfX43uIubj4?t=220
[jain/boring-design-hacks 3:48]: https://youtu.be/SfX43uIubj4?t=228
[jain/boring-design-hacks 5:08]: https://youtu.be/SfX43uIubj4?t=308
[jain/boring-design-hacks 5:21]: https://youtu.be/SfX43uIubj4?t=321
[jain/captivating-sections 2:22]: https://youtu.be/tNMAFjzapOk?t=142
[jain/captivating-sections 2:52]: https://youtu.be/tNMAFjzapOk?t=172
[jain/captivating-sections 4:06]: https://youtu.be/tNMAFjzapOk?t=246
[jain/captivating-sections 4:58]: https://youtu.be/tNMAFjzapOk?t=298
[jain/crucial-ui-elements 10:25]: https://youtu.be/gKM6b2EnW1k?t=625
[jain/dashboard-ui 7:23]: https://youtu.be/B7k5rOgmOGY?t=443
[jain/genius-designer 3:32]: https://youtu.be/HE4rLEQpiXY?t=212
[jain/genius-designer 4:20]: https://youtu.be/HE4rLEQpiXY?t=260
[jain/google-ai-redesign 4:41]: https://youtu.be/pGYLZyBE32o?t=281
[jain/landing-page-levels 6:35]: https://youtu.be/eMMiLeo_UGI?t=395
[jain/landing-page-levels 8:36]: https://youtu.be/eMMiLeo_UGI?t=516
[jain/load-animations-code 16:07]: https://youtu.be/d4MF6pdAZNw?t=967
[jain/load-animations-code 5:32]: https://youtu.be/d4MF6pdAZNw?t=332
[jain/load-animations-code 6:02]: https://youtu.be/d4MF6pdAZNw?t=362
[jain/load-animations-code 6:58]: https://youtu.be/d4MF6pdAZNw?t=418
[jain/load-animations-figma 0:01]: https://youtu.be/nl8OFGdx75w?t=1
[jain/load-animations-figma 1:17]: https://youtu.be/nl8OFGdx75w?t=77
[jain/load-animations-figma 4:55]: https://youtu.be/nl8OFGdx75w?t=295
[jain/micro-animations 0:30]: https://youtu.be/ld1zhQMXxXU?t=30
[jain/micro-animations 0:34]: https://youtu.be/ld1zhQMXxXU?t=34
[jain/micro-animations 2:59]: https://youtu.be/ld1zhQMXxXU?t=179
[jain/micro-animations 3:06]: https://youtu.be/ld1zhQMXxXU?t=186
[jain/micro-animations 4:10]: https://youtu.be/ld1zhQMXxXU?t=250
[jain/micro-animations 6:48]: https://youtu.be/ld1zhQMXxXU?t=408
[jain/mobile-app-ui 5:17]: https://youtu.be/Gfsd8NNuD9g?t=317
[jain/mobile-app-ui 5:26]: https://youtu.be/Gfsd8NNuD9g?t=326
[jain/mobile-swipe-interactions 0:33]: https://youtu.be/14h1VnkQvIc?t=33
[jain/mobile-swipe-interactions 0:44]: https://youtu.be/14h1VnkQvIc?t=44
[jain/mobile-swipe-interactions 3:19]: https://youtu.be/14h1VnkQvIc?t=199
[jain/mobile-swipe-interactions 4:03]: https://youtu.be/14h1VnkQvIc?t=243
[jain/mobile-swipe-interactions 5:03]: https://youtu.be/14h1VnkQvIc?t=303
[jain/modern-layouts 4:24]: https://youtu.be/VPeTgU7la34?t=264
[jain/modern-layouts 5:02]: https://youtu.be/VPeTgU7la34?t=302
[jain/software-must-lie 1:11]: https://youtu.be/S8DcTJm8pYM?t=71
[jain/software-must-lie 4:14]: https://youtu.be/S8DcTJm8pYM?t=254
[jain/tesla-wannabe-redesign 4:12]: https://youtu.be/V3Omp1hm0Sg?t=252
[jain/think-like-product-designer 0:47]: https://youtu.be/ADaQuZS04Rc?t=47
[jain/tiktok-ux 1:46]: https://youtu.be/ixUq4HM4FNg?t=106
[jain/trendy-web-animations 0:06]: https://youtu.be/ZsP20PN14O0?t=6
[jain/trendy-web-animations 0:40]: https://youtu.be/ZsP20PN14O0?t=40
[jain/trendy-web-animations 1:34]: https://youtu.be/ZsP20PN14O0?t=94
[jain/trendy-web-animations 2:46]: https://youtu.be/ZsP20PN14O0?t=166
[jain/trendy-web-animations 4:06]: https://youtu.be/ZsP20PN14O0?t=246
[jain/trendy-web-animations 4:54]: https://youtu.be/ZsP20PN14O0?t=294
[jain/vibe-coding-cant-fix 7:27]: https://youtu.be/RCneB_MQ7qs?t=447
[jain/vibe-coding-cant-fix 7:37]: https://youtu.be/RCneB_MQ7qs?t=457
[jain/vibe-coding-cant-fix 8:14]: https://youtu.be/RCneB_MQ7qs?t=494
