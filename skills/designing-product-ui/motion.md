# Motion and Interaction

How to use animation, easing, hover and feedback micro-interactions, transitions, loaders, scroll effects and gestures in product UI and marketing sites.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Purpose and restraint

- Animate only to add clarity, functionality or focus; use motion to direct the eye to the product or key text, never motion for its own sake. Purposeless animations don't do anything; motion should support clarity, not distract from it. ([jain/boring-design-hacks 5:08](https://youtu.be/SfX43uIubj4?t=308), [jain/captivating-sections 2:22](https://youtu.be/tNMAFjzapOk?t=142), [jain/genius-designer 3:32](https://youtu.be/HE4rLEQpiXY?t=212), [jain/vibe-coding-cant-fix 7:37](https://youtu.be/RCneB_MQ7qs?t=457))
- Keep animations subtle, simple and tasteful rather than big or flashy, and execute them cleanly at full quality. Flashy animations slow the site and overwhelm people; blurry imported assets look sloppy. ([jain/captivating-sections 4:06](https://youtu.be/tNMAFjzapOk?t=246), [jain/modern-layouts 4:24](https://youtu.be/VPeTgU7la34?t=264), [jain/think-like-product-designer 0:47](https://youtu.be/ADaQuZS04Rc?t=47), [jain/trendy-web-animations 0:06](https://youtu.be/ZsP20PN14O0?t=6))
- Occasionally break the expected pattern with a well-built surprise, such as a modal that expands with good motion. Unexpected things are engaging if built well and reward users for exploring that part of the UI. ([jain/captivating-sections 3:23](https://youtu.be/tNMAFjzapOk?t=203))
- Add motion even where a static presentation would work, especially on simple, expressive marketing sites. Things needn't move to merit motion; still keep it purposeful in functional UI per the clarity rule. ([jain/boring-design-hacks 2:50](https://youtu.be/SfX43uIubj4?t=170))
- Keep dashboard animation tame and user-focused; spend creativity on chart hovers like value bubbles or dimming the other bars. ([jain/dashboard-ui 7:23](https://youtu.be/B7k5rOgmOGY?t=443))
- Establish a few repeated motion themes, such as consistent section transitions, as the brand's animation identity. Repeated animations, not one-offs, form the animation visual identity. ([jain/vibe-coding-cant-fix 7:27](https://youtu.be/RCneB_MQ7qs?t=447))

## Easing and timing

- Always apply easing; almost never use linear. Things in real life speed up and slow down, so eased motion feels natural. ([jain/boring-design-hacks 3:40](https://youtu.be/SfX43uIubj4?t=220), [jain/mobile-swipe-interactions 0:44](https://youtu.be/14h1VnkQvIc?t=44))
- Use a custom exponential bezier or expo in-out (about 0.8-1.3s) for large movements like reveals, expansions and wipes; use simple ease-in-out ~200ms for fades. Gives an exponential curve matching custom beziers designed in Figma. ([jain/load-animations-code 5:32](https://youtu.be/d4MF6pdAZNw?t=332), [jain/load-animations-figma 4:55](https://youtu.be/nl8OFGdx75w?t=295))
- Tune the easing curve to set tone: snappy and performant, fun and springy, or slow and smooth. ([jain/mobile-swipe-interactions 0:51](https://youtu.be/14h1VnkQvIc?t=51))
- Use spring easing for pop-ups (e.g. 500ms, stiffness 636, damping 24) instead of default easing. The easing creates the difference in how the animation feels. ([jain/micro-animations 3:06](https://youtu.be/ld1zhQMXxXU?t=186))
- Animate loading spinners by stepping the rotation every 300ms with a spring (stiffness 550, damping 40). ([jain/animated-sidebar 8:26](https://youtu.be/NtZeYmTMuo4?t=506))

## Hover, press and feedback

- Add small, simple hover interactions to most elements, including product visuals and bento cards; don't go overboard. They keep simple pages from feeling bland and make them feel smooth and alive. ([jain/boring-design-hacks 5:21](https://youtu.be/SfX43uIubj4?t=321), [jain/landing-page-levels 6:35](https://youtu.be/eMMiLeo_UGI?t=395), [jain/modern-layouts 5:02](https://youtu.be/VPeTgU7la34?t=302))
- Give buttons a small hover animation almost always, e.g. slide the label up to reveal a duplicate and expand a background fill, not just a color shift. Looks cool but professional and avoids fiddling with many different colors. ([jain/genius-designer 4:20](https://youtu.be/HE4rLEQpiXY?t=260), [jain/micro-animations 0:30](https://youtu.be/ld1zhQMXxXU?t=30), [jain/trendy-web-animations 2:46](https://youtu.be/ZsP20PN14O0?t=166))
- On card hover, zoom (and optionally blur) the image and reveal extra text or the CTA. A classy effect that compacts information and adds a premium feel. ([jain/google-ai-redesign 4:41](https://youtu.be/pGYLZyBE32o?t=281), [jain/tesla-wannabe-redesign 4:12](https://youtu.be/V3Omp1hm0Sg?t=252))
- Shrink buttons slightly while pressed to confirm the click. ([jain/micro-animations 0:34](https://youtu.be/ld1zhQMXxXU?t=34))
- Fade in an arrow icon on hover to signal that a card is a link. Makes it clear the card is clickable. ([jain/crucial-ui-elements 3:49](https://youtu.be/gKM6b2EnW1k?t=229))
- Confirm actions with a micro-interaction, e.g. a 'copied' chip sliding up after clicking copy. Hover and click states alone don't confirm the action happened. ([jain/every-ui-concept 8:15](https://youtu.be/EcbgbKtOELY?t=495))
- Slide success checkmarks in behind a mask instead of just fading them in. ([jain/animated-sidebar 9:37](https://youtu.be/NtZeYmTMuo4?t=577))
- Fade in AI research or progress steps one by one. Makes the AI feel like a collaborator, not a black box. ([jain/ai-startup-components 4:15](https://youtu.be/If7iCPDy2vk?t=255))
- Show icon tooltips after about a 1 second hover delay when there's no room to label every icon. Helpful when there's no space to label all icons. ([jain/micro-animations 4:25](https://youtu.be/ld1zhQMXxXU?t=265))
- Show a small name tag on hover over small headshots. ([jain/micro-animations 2:13](https://youtu.be/ld1zhQMXxXU?t=133))
- Animate keyboard shortcut hints to make shortcuts memorable. Shortcuts are easy to forget. ([jain/micro-animations 1:08](https://youtu.be/ld1zhQMXxXU?t=68))
- Reveal upgraded plan limits on hover by sliding in the new values rather than crossing out the current ones. He dislikes the crossed-out text treatment. ([jain/micro-animations 7:50](https://youtu.be/ld1zhQMXxXU?t=470))
- Use mouse-follow effects sparingly; the best use is pulling a CTA toward the cursor on hover. Mouse-follow effects can be super annoying. ([jain/trendy-web-animations 4:54](https://youtu.be/ZsP20PN14O0?t=294))
- Provide a tablet and mobile fallback for every mouse-driven effect. Mouse effects don't work on touch devices. ([jain/trendy-web-animations 5:13](https://youtu.be/ZsP20PN14O0?t=313))

## Transitions, menus and overlays

- Animate menus and hover pop-ups in from a few pixels below their final position at 0% opacity so they slide up while fading. Produces a nicer slide-up than a plain fade. ([jain/animated-sidebar 3:08](https://youtu.be/NtZeYmTMuo4?t=188), [jain/micro-animations 2:59](https://youtu.be/ld1zhQMXxXU?t=179))
- As a bottom sheet or popover rises, zoom out and move down the background; reverse it on dismiss or swipe down. Adds to the effect. ([jain/mobile-app-ui 5:26](https://youtu.be/Gfsd8NNuD9g?t=326), [jain/mobile-swipe-interactions 5:03](https://youtu.be/14h1VnkQvIc?t=303))
- Use motion direction to situate users: slide up from the bottom for temporary actions, slide in from the side for progress. Animations situate the user in the flow. ([jain/captivating-sections 4:58](https://youtu.be/tNMAFjzapOk?t=298))
- Make page transitions follow the swipe direction, with background and new content sliding up and in. Makes motion feel natural and transitions seamless. ([jain/mobile-swipe-interactions 3:19](https://youtu.be/14h1VnkQvIc?t=199))
- Transition between pages by zooming a shared image into the new page's hero rather than sliding a new page in. Creates continuity and more seamless navigation. ([jain/mobile-swipe-interactions 4:03](https://youtu.be/14h1VnkQvIc?t=243))
- For swipe-back transitions, offset the background screen about 35% left and animate it right as the top screen slides away. Creates a super smooth transition. ([jain/mobile-app-ui 5:17](https://youtu.be/Gfsd8NNuD9g?t=317))
- When switching mega menu sections, keep the menu open and slide content left or right instead of closing and reopening. Much smoother. ([jain/landing-page-levels 8:44](https://youtu.be/eMMiLeo_UGI?t=524))
- Add a blur effect to tab and section content transitions. A simple change that takes the experience from 8/10 to 10/10. ([jain/landing-page-levels 8:36](https://youtu.be/eMMiLeo_UGI?t=516))

## Gestures and input timing

- Make the primary interaction a single, decision-free gesture (like swipe up), with auto-snapping and autoplay removing extra steps. Requires zero decision-making, significantly reducing cognitive load and maximizing efficiency. ([jain/tiktok-ux 1:46](https://youtu.be/ixUq4HM4FNg?t=106))
- Add bounce to swipe easing so cards carry momentum. Rigid swiping feels unnatural; bounce feels more natural. ([jain/mobile-swipe-interactions 0:33](https://youtu.be/14h1VnkQvIc?t=33))
- In swipeable card stacks, move the remaining cards forward to fill the gap as the top card is dragged away. Completes the effect so cards feel like they move forward. ([jain/micro-animations 6:48](https://youtu.be/ld1zhQMXxXU?t=408))
- Skew cards as they reach the screen edge to suggest a 3D ring of swipeable cards. ([jain/mobile-swipe-interactions 1:01](https://youtu.be/14h1VnkQvIc?t=61))
- Delay a single-click action only when it competes with a double-click action; don't delay when the first click is correct either way (e.g. selecting a cell). Otherwise the first click navigates away before double-click editing; non-competing actions need no delay. ([jain/software-must-lie 1:11](https://youtu.be/S8DcTJm8pYM?t=71))
- Accept a delay on the primary action if the secondary action's convenience (e.g. inline rename) is worth it. Removing the secondary action fixes the delay but loses the convenience. ([jain/software-must-lie 2:09](https://youtu.be/S8DcTJm8pYM?t=129))
- When dragging to reorder, show the predicted drop location and auto-scroll faster the closer the pointer is to the edge. The system is guessing intent; a gradient beats a binary decision. ([jain/software-must-lie 4:14](https://youtu.be/S8DcTJm8pYM?t=254))
- Support inline AI editing: let users highlight part of a response and type the change. Fast, contextual and removes friction. ([jain/ai-startup-components 2:47](https://youtu.be/If7iCPDy2vk?t=167))

## Loaders and entrances

- When a loading screen slides up, offset page content slightly down and slide it up concurrently with the same duration and ease; shift the background slightly too. Moving content with the loader makes the effect look good and the page feel fluid. ([jain/load-animations-code 6:58](https://youtu.be/d4MF6pdAZNw?t=418), [jain/load-animations-figma 1:17](https://youtu.be/nl8OFGdx75w?t=77), [jain/trendy-web-animations 1:34](https://youtu.be/ZsP20PN14O0?t=94))
- Use loading animations (screen reveal, expanding nav, text wipe) for a premium feel or to cover loading heavy background video or 3D. They make a website feel much more premium. ([jain/load-animations-figma 0:01](https://youtu.be/nl8OFGdx75w?t=1), [jain/trendy-web-animations 0:40](https://youtu.be/ZsP20PN14O0?t=40))
- Time a loading reveal as: hold ~1000ms, slide up over 800ms-1.3s with an exponential curve, then fade the nav in over 200-300ms after everything settles. ([jain/load-animations-code 6:02](https://youtu.be/d4MF6pdAZNw?t=362), [jain/load-animations-figma 2:03](https://youtu.be/nl8OFGdx75w?t=123))
- Stagger entrances one at a time (about 0.2s stagger, 0.6s fade), e.g. nav items after their container expands or hero screens sliding up on load. ([jain/awful-to-amazing 6:44](https://youtu.be/ulSOdTgoGeY?t=404), [jain/load-animations-code 16:07](https://youtu.be/d4MF6pdAZNw?t=967))
- Keep preloaders short. People are impatient and shouldn't wait to see actual content. ([jain/trendy-web-animations 1:57](https://youtu.be/ZsP20PN14O0?t=117))
- Expand a pill navbar from a circle: scale 0 to 1 over 0.8s, then grow max-width from its height over 1.3s with expo in-out. Width equal to height gives a circle to expand from. ([jain/load-animations-code 14:46](https://youtu.be/d4MF6pdAZNw?t=886))
- Do a text wipe by growing a block over the text from the left, revealing the text, then shrinking the block off to the right. ([jain/load-animations-code 19:16](https://youtu.be/d4MF6pdAZNw?t=1156))
- Give decorative elements characterful entrances (rotate-pop, fly in, gentle bob) instead of no entrance or a robotic fade. No entrance or a robotic fade is no fun. ([jain/boring-design-hacks 3:15](https://youtu.be/SfX43uIubj4?t=195))
- Animate key headline words with text animations and micro-interactions. Text is ~80% of most websites and is otherwise neither fun nor interesting. ([jain/boring-design-hacks 4:08](https://youtu.be/SfX43uIubj4?t=248))

## Scroll and ambient motion

- Use scrolljacking very sparingly, if ever; prefer a well-built hover animation demonstrating the product over complex scroll animations. Complex scroll animations make navigation harder and add little. ([jain/captivating-sections 2:52](https://youtu.be/tNMAFjzapOk?t=172), [jain/genius-designer 4:20](https://youtu.be/HE4rLEQpiXY?t=260))
- Move marquee text slowly enough to read, and weigh its reduced usability before using it. Slow marquees add to the design instead of taking away; these sections reduce usability. ([jain/awful-to-amazing 5:58](https://youtu.be/ulSOdTgoGeY?t=358), [jain/trendy-web-animations 4:39](https://youtu.be/ZsP20PN14O0?t=279))
- Auto-rotate important images on a timer, extend the active dot into a progress timer, and add a slight zoom on hover. Encourages users to see all the important images. ([jain/crucial-ui-elements 10:25](https://youtu.be/gKM6b2EnW1k?t=625), [jain/vibe-coding-cant-fix 8:14](https://youtu.be/RCneB_MQ7qs?t=494))
- Keep looped animations simple, minimal and slow-moving. Complicated loops are distracting and can be annoying or flashy. ([jain/trendy-web-animations 4:06](https://youtu.be/ZsP20PN14O0?t=246))
- Add gentle movement such as photos slowly zooming in or out. One of the most foolproof, classy ways to make a site feel alive. ([jain/awful-to-amazing 5:32](https://youtu.be/ulSOdTgoGeY?t=332))
- Apply subtle parallax on scroll to elements placed in spacious margins. Gives a lifelike 3D feel without busy backgrounds. ([jain/boring-design-hacks 3:48](https://youtu.be/SfX43uIubj4?t=228))
- Smooth hard section breaks by sliding elements off and blurring the hero while the next section slides over it. Makes the hero feel like part of the background. ([jain/vibe-coding-cant-fix 7:46](https://youtu.be/RCneB_MQ7qs?t=466))
- Use scroll- or hover-driven animated diagrams to walk users through a multi-step process. A very interactive way to present a process in depth. ([jain/slept-on-trends 6:38](https://youtu.be/EHwZzWd-OnQ?t=398))
- Swap text in place on scroll as a low-effort way to make a simple page interactive. Shows two matching texts in one spot without much work. ([jain/slept-on-trends 1:11](https://youtu.be/EHwZzWd-OnQ?t=71))
- Highlight text on scroll by masking a hard-stop two-color gradient with the text and moving it by scroll position. ([jain/trendy-web-animations 3:16](https://youtu.be/ZsP20PN14O0?t=196))
- Keep image or video morphing changes small. Massive changes slow the browser and make the animation choppy. ([jain/slept-on-trends 6:00](https://youtu.be/EHwZzWd-OnQ?t=360))
- Turn static three-card rows into a clickable multi-select or tabbed section. Adds interactivity and variety and makes sections shorter and more compact. ([jain/landing-page-levels 5:23](https://youtu.be/eMMiLeo_UGI?t=323))
- Don't make decorative sideways text sticky as the user scrolls. Having it follow you on scroll is distracting. ([jain/tesla-wannabe-redesign 0:44](https://youtu.be/V3Omp1hm0Sg?t=44))
