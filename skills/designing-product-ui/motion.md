# Motion

Purpose, easing and timing, hover and press feedback, transitions, gestures, loaders and entrances, and scroll and ambient motion.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a product-UI rule translated from the cited game-design Source principle, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Purpose and restraint · Easing and timing · Springs and physics · Hover and press feedback · Transitions and overlays · Gestures and input timing · Loaders and entrances · Scroll and ambient motion

## Purpose and restraint

- Animate only to add clarity, feedback, focus, object permanence or delight, e.g. to direct the eye to the product or key text; not motion for its own sake. Purposeless animation distracts instead of supporting clarity, and animations everywhere lose their impact. *Note: Honor prefers-reduced-motion: reduce or remove non-essential animation.* ([freiberg/invisible-details ¶object-permanence-creating-a], [jain/boring-design-hacks 5:08], [jain/captivating-sections 2:22], [jain/genius-designer 3:32], [jain/vibe-coding-cant-fix 7:37], [kowalski/great-animations ¶its-easy-to-start], [kowalski/you-dont-need-animations ¶before-you-start-animating])
- Decide whether to animate by how often it's seen: skip motion on actions and hovers used many times a day, keep delight-only motion for rare interactions, and judge each by its thousandth use. A pleasant surprise once becomes irritating and slow when seen daily. *Note: Keyboard-initiated actions get feedback but no motion; see interaction-feel.md.* ([apple/designing-fluid-interfaces ¶not-get-in-the], [freiberg/invisible-details ¶it-doesnt-feel-like], [kowalski/great-animations ¶before-you-add-an], [kowalski/you-dont-need-animations ¶how-often-users-will], [saffer/microinteractions 31:21])
- Keep animations subtle and simple rather than big or flashy, and execute them cleanly at full quality. Check: if the movement draws the eye away from the content it carries, shorten the distance or scale. Flashy animations slow the site and overwhelm people; blurry assets look sloppy. *Note: Editorial examples: a fade, a short slide (about 8-24px) or a slight scale (about 0.95-1.05) rather than large sweeps, spins and bounces.* ([jain/captivating-sections 4:06], [jain/modern-layouts 4:24], [jain/think-like-product-designer 0:47], [jain/trendy-web-animations 0:06], [nngroup/theory-of-user-delight ¶combine-this-with-flashy])
- **App UI:** Animate state changes rather than letting them appear instantly: toasts, modals entering and exiting, tab page switches, and the changed item itself, not just a toast. Instant changes feel artificial; nothing in the world appears or disappears instantly. *Note: For keyboard-initiated and very frequent actions, keep the state change but drop the motion; see the frequency rule above.* ([kowalski/great-animations ¶changes-in-web-apps], [kowalski/you-dont-need-animations ¶having-a-toast-suddenly], [raroque/apps-feel-10x-better 0:52], [raroque/apps-feel-premium 1:29])
- Under prefers-reduced-motion, replace movement with an opacity fade, and consider an in-app toggle for shakes and large movements. Animations can make some people feel sick or distracted; Nuclear Throne added a screen-shake toggle after players got nauseous. ([kowalski/great-animations ¶this-component-animates-opacity], [nijman/art-of-screenshake 32:19])
- **Marketing:** Expressive motion belongs on marketing pages: there, motion can be used even where static would work, built from a few repeated themes (e.g. consistent section transitions) that become the brand's animation identity. Repeated animations, not one-offs, form a motion identity. ([jain/boring-design-hacks 2:50], [jain/vibe-coding-cant-fix 7:27])
- **From games:** Calibrate motion intensity with fresh eyes, not your own; tone down any effect that could make people feel sick. Designers become desensitized to their own effects while first-time users feel the full intensity. Source principle: Watch screen shake intensity: designers get used to it and keep adding more; don't put effects in a game that physically hurt people. ([nijman/art-of-screenshake 32:27])
- **App UI:** Keep dashboard animation tame; spend creativity on chart hovers such as value bubbles or dimming the other bars. ([jain/dashboard-ui 7:23])

## Easing and timing

- Choose the easing curve for the tone you want: snappy and performant, fun and springy, or slow and smooth (e.g. a slightly slower ease for an elegant toast). The easing defines how an animation feels. *Note: Editorial mapping: snappy = a short ease-out, springy = a spring with slight overshoot (marketing and playful contexts), smooth = a longer ease-in-out.* ([jain/boring-design-hacks 3:40], [jain/mobile-swipe-interactions 0:44], [kowalski/great-animations ¶uses-ease-as-the])
- **App UI:** In product UI, keep animations fast: under about 300ms with ease-out, e.g. a ~180ms dropdown rather than 400ms. Ease-out starts fast, so the interface feels responsive and like it is listening. *Note: Marketing sites can run slower. The ease-in-out guidance for small fades below comes from marketing load sequences.* ([kowalski/great-animations ¶your-animations-should-also], [kowalski/you-dont-need-animations ¶unless-you-are-working])
- **Marketing:** On marketing pages and load sequences, move large elements (reveals, expansions, wipes) with an exponential ease-in-out; the sources use about 1.3s for a full-screen slide-up and about 400ms for an expanding navbar. Large movements need a strong curve. *Note: In CSS, an expo ease-in-out is about cubic-bezier(0.87, 0, 0.13, 1).* ([jain/load-animations-code 5:32], [jain/load-animations-figma 4:55])
- **From games:** When the viewport follows the user, interpolate smoothly so it decelerates into place rather than hard-snapping. Motion that is fast at first and smooths in feels better, even when nobody notices it. Source principle: When no tweening engine is available, move a value 10% of the remaining distance each frame; lerp the camera so it slightly lags the player. *Note: In CSS, an ease-out curve gives the same deceleration.* ([jonasson-purho/juice-it-or-lose-it 3:59], [nijman/art-of-screenshake 14:53])
- Fade and transition small elements with a simple ease-in-out of about 200-300ms; keep the exponential curve for large movements. *Note: Editorial: in app UI, keep most transitions within about 150-300ms; long curves make product screens feel slow.* ([jain/load-animations-figma 4:55])
- **Marketing:** Use a spring rather than default easing for hover pop-ups, e.g. the source's 500ms spring with stiffness 636 and damping 24. The spring is what makes the pop-up feel alive. *Note: In the Motion library, { type: 'spring', stiffness: 636, damping: 24 }; Figma and code springs may not match exactly.* ([jain/micro-animations 3:06])
- **From games:** Ease elements onto the screen with a curve that decelerates into place, never linear; add overshoot only when a gesture carried momentum. Eased entrances feel finished, while overshoot without a driving gesture reads as wobble. Source principle: Tween objects onto the screen with non-linear easing (slowdown, slight overshoot or bounce) instead of linear; overshoot looks luxurious next to linear falling in. ([jonasson-purho/juice-it-or-lose-it 4:33])

## Springs and physics

- Use springs for natural motion, e.g. pulling overscrolled content back within bounds; tune them by damping (overshoot) and response (speed) rather than duration. Springs are seamless, can be retargeted at any time, and raw physics properties are unwieldy. *Note: Web libraries such as Motion expose stiffness, damping and mass instead; SwiftUI's spring(response:dampingFraction:) matches the two-parameter model.* ([apple/designing-fluid-interfaces ¶the-content-uses-elasticity], [kowalski/great-animations ¶i-highly-suggest-playing])
- Default springs to no overshoot (100% damping), as for tap-triggered presentations; add a little bounce (about 80% damping) only when a gesture carried momentum, like swipe-to-dismiss, or to hint at a hidden gesture. Move remaining cards forward as the top card is swiped away. A tap has no momentum; rewarding a swipe's momentum feels satisfying and rigid swiping feels unnatural, while a bounce on tap hints something lies underneath. *Note: The bouncier hover pop-up spring in Easing and timing is a marketing flourish.* ([apple/designing-fluid-interfaces ¶so-we-recommend-starting], [jain/micro-animations 6:48], [jain/mobile-swipe-interactions 0:33], [saffer/microinteractions 15:10])
- Treat motion as one family: an object moves the same way whatever drives it, scroll friction stays consistent, and in Hearthstone different screens share physical traits like bounce and over-rotation. People learn by repetition, so one learned behavior transfers; players feel cohesion even unconsciously. *Note: In product UI, use one shared motion language (same curves, springs and directions) across all screens.* ([apple/designing-fluid-interfaces ¶its-important-that-you], [sakamoto/hearthstone-immersive-ui 10:04])
- Tune motion to conceptual weight: give lighter objects, like a photo or a playing card, less mass and less bounce. Motion should match how heavy the object feels conceptually. ([apple/designing-fluid-interfaces ¶theres-less-mass-on], [freiberg/invisible-details ¶exhibits-less-bounce-since])
- Animate scale and rotation, not just position: tween them on entrances and project gesture momentum onto them. *Note: In product UI, pair a subtle scale with position in transitions, and let pinch and rotate gestures carry momentum.* ([apple/designing-fluid-interfaces ¶you-can-also-use], [jonasson-purho/juice-it-or-lose-it 5:07])
- Hit 60fps by animating transform and opacity, not padding or margin; when the main thread is busy, use CSS or WAAPI, not requestAnimationFrame. Transform and opacity skip layout and paint; 60fps lets objects move faster without strobing. ([apple/designing-fluid-interfaces ¶if-we-move-it], [kowalski/great-animations ¶you-should-try-to])
- For fast movement, limit change between frames and encode motion with blur or stretching along velocity; games also wobble objects briefly on impact. Too much change between frames strobes even at a steady frame rate. *Note: In product UI, keep any stretch subtle, settle with at most a small wobble, and drop it under prefers-reduced-motion.* ([apple/designing-fluid-interfaces ¶its-not-just-about], [jonasson-purho/juice-it-or-lose-it 6:38])
- Make motion seamless and familiar: no sudden changes in velocity or direction, an imperceptible stop, and real-world behaviors like coasting, friction and elasticity. Believable motion matters most; it need not be a literal simulation. ([apple/designing-fluid-interfaces ¶the-line-is-completely])

## Hover and press feedback

- **Marketing:** Add small, simple hover responses to interactive elements, including product visuals and bento cards; don't go overboard. They keep simple pages from feeling bland. ([jain/boring-design-hacks 5:21], [jain/landing-page-levels 6:35], [jain/modern-layouts 5:02])
- **Marketing:** On marketing pages, give buttons a hover animation beyond a color shift, e.g. slide the label up to reveal a duplicate while a background fill expands. Looks polished without juggling many hover colors. ([jain/genius-designer 4:20], [jain/micro-animations 0:30], [jain/trendy-web-animations 2:46])
- **Marketing:** On card hover, zoom (and optionally blur) the image slightly; for fading in an arrow as the link cue on repeating cards, see also components-and-states.md. Adds a premium feel. ([jain/google-ai-redesign 4:41], [jain/tesla-wannabe-redesign 4:12])
- **Marketing:** Use mouse-follow effects sparingly (the best use is pulling a CTA toward the cursor), and give every pointer-driven effect a touch fallback. Mouse-follow can be very annoying, and it doesn't exist on touch devices. ([jain/trendy-web-animations 4:54])
- Shrink buttons slightly while pressed to confirm the click. ([jain/micro-animations 0:34])

## Transitions and overlays

- Make every transition interruptible: users can reverse a swipe mid-navigation or touch content while it animates in, never waiting for motion to finish. Thought and gesture then run in parallel; waiting for an animation feels unresponsive. *Note: In CSS, transitions retarget mid-flight while keyframe animations restart, so prefer transitions for interruptible state changes.* ([apple/designing-fluid-interfaces ¶we-want-to-allow], [freiberg/invisible-details ¶great-interactions-are-modeled], [kowalski/great-animations ¶it-allows-the-user])
- Animate a view out of the element that opened it, arranged the same way so it feels like an expansion, and exit the same way; use another direction only when sending the item somewhere. Skip origin motion when only one element could have launched the view. It mimics object permanence and shows where content came from; with a single possible origin, there's nothing to clarify. *Note: Under prefers-reduced-motion, use a short fade or an instant swap.* ([apple/design-foundations 9:27], [apple/designing-fluid-interfaces ¶it-should-have-a], [freiberg/invisible-details ¶through-motion-this-helps], [kowalski/you-dont-need-animations ¶because-it-comes-from], [ording/rubber-band ¶when-he-selected-a])
- **App UI:** Use motion direction to situate users: temporary actions slide up from the bottom, progress slides in from the side, and page transitions follow the swipe direction. Direction tells users where they are in the flow. ([freiberg/invisible-details ¶if-the-app-slides], [jain/captivating-sections 4:58], [jain/mobile-swipe-interactions 3:19])
- Animate menus and hover pop-ups in from a few pixels below their final position at 0% opacity, so they slide up while fading. Nicer than a plain fade. ([jain/animated-sidebar 3:08], [jain/micro-animations 2:59])
- **App UI:** As a bottom sheet or popover rises, scale the background down slightly and move it down; reverse on dismiss. Reinforces that the sheet sits above the page. ([jain/mobile-app-ui 5:26], [jain/mobile-swipe-interactions 5:03])
- **App UI:** Use a layer's entry direction to signal how it is dismissed: a layer sliding in from the right is dismissed by swiping back. Motion communicates the interface's stacked-layer structure. *Note: Also provide a visible back or close control for users who don't swipe.* ([freiberg/invisible-details ¶a-layer-slides-over])
- When items enter or exit a list, pair an opacity change with the height animation. ([kowalski/great-animations ¶the-opacity-change-in])
- **From games:** Animate removed items out in the direction of the user's action, and visually distinguish them from the items that remain. Direction ties the removal to the action, and contrast keeps leaving items from passing as live ones. Source principle: Make destroyed blocks fall away, pushed in the ball's direction and spinning, and darken them so they don't blend with live blocks. *Note: Under prefers-reduced-motion, fade removed items out instead.* ([jonasson-purho/juice-it-or-lose-it 10:39])
- **App UI:** For swipe-back transitions, offset the background screen about 35% left and slide it right as the top screen leaves. Makes the transition feel continuous. ([jain/mobile-app-ui 5:17])
- **Marketing:** On marketing pages and hero moments, transition by zooming a shared image into the next page's hero instead of sliding a new page in; app navigation follows the swipe direction instead. Creates continuity between screens. ([jain/mobile-swipe-interactions 4:03])
- **Marketing:** Add a brief blur to tab and section content transitions. A small change that makes switches feel much smoother. *Note: In CSS, filter: blur().* ([jain/landing-page-levels 8:36])

## Gestures and input timing

- **App UI:** Give continuous feedback during a gesture: track the input one-to-one and grow intermediate states toward the final state, not a threshold-only 0→1 jump. Threshold-only animations give no affordance; people predict trajectories and notice any lost tracking. ([apple/designing-fluid-interfaces ¶it-grows-from-the], [freiberg/invisible-details ¶feeling-the-scale-delta])
- **App UI:** Fire lightweight gesture actions mid-swipe once elements reach their final position; commit destructive actions and navigation only when the gesture ends. Users can peek and change their mind halfway without accidentally losing progress. ([freiberg/invisible-details ¶lightweight-actions-such-as])
- **App UI:** On release, carry the gesture's momentum and angle into the content, and pick snap targets from the momentum-projected position using the platform's scroll deceleration rate. A light flick then lands where expected, reusing people's intuition for how far scrolled content travels. *Note: On the web, keep native scrolling and CSS scroll-snap; apply this only to custom drag surfaces.* ([apple/designing-fluid-interfaces ¶you-want-to-take], [freiberg/invisible-details ¶notice-how-the-gesture])
- **App UI:** Reuse a few gesture metaphors and match each button's animation to its gesture equivalent, so learning one teaches the other. Knowledge compounds, and new gestures are discovered along the path of familiar ones. ([apple/designing-fluid-interfaces ¶because-you-can-discover], [freiberg/invisible-details ¶great-interaction-design-rewards])
- **App UI:** In consumer feed or content apps, make the primary interaction a single, decision-free gesture (e.g. swipe up), with auto-snapping and autoplay removing extra steps. Zero decisions per step keeps cognitive load minimal. *Note: Give autoplaying media a visible pause control, and a tap or button alternative to the gesture.* ([jain/tiktok-ux 1:46])
- **App UI:** When dragging to reorder, show the predicted drop location and auto-scroll faster the closer the pointer is to the edge. A gradient of speed beats a binary on/off. ([jain/software-must-lie 4:14])

## Loaders and entrances

- **Marketing:** On marketing pages, use an intro loader (screen reveal, expanding nav, text wipe) only to cover a real heavy-asset load, such as a large background video or 3D scene: hold until the asset is ready (the source holds ~1000ms), slide up over 0.8-1.3s on an exponential curve, then fade the nav in over 200-300ms. It gives the asset time to load; functional loaders otherwise stay short (see also components-and-states.md). *Note: Show only on first visit, skip under prefers-reduced-motion, and end as soon as the asset is ready.* ([jain/load-animations-code 6:02], [jain/load-animations-figma 0:01], [jain/trendy-web-animations 0:40])
- **Marketing:** When a loading screen slides away, offset page content slightly down and slide it up concurrently with the same duration and easing. Moving content with the loader makes the page feel fluid. ([jain/load-animations-code 6:58], [jain/load-animations-figma 1:17], [jain/trendy-web-animations 1:34])
- Stagger multiple entering elements slightly rather than animating them in lockstep, e.g. nav items one at a time after their container expands (the sources use about 0.2s stagger with 0.6s fades, or a small random delay per object). Staggered entrances look much better without changing anything else. *Note: In product UI, keep the total stagger short so content isn't held back.* ([jain/awful-to-amazing 6:44], [jain/load-animations-code 16:07], [jonasson-purho/juice-it-or-lose-it 5:19])
- **Marketing:** Give decorative elements and key headline words characterful entrances (rotate-pop, fly in, gentle bob, word animations) instead of none or a robotic fade. Text is most of a website and is otherwise neither fun nor interesting. ([jain/boring-design-hacks 3:15])

## Scroll and ambient motion

- **Marketing:** If important images auto-rotate on a timer, turn the active dot into a progress timer and add a slight zoom on hover; for pause, swipe and arrow controls, see the carousel rule in components-and-states.md. Encourages users to see every image. ([jain/crucial-ui-elements 10:25], [jain/vibe-coding-cant-fix 8:14])
- Use scrolljacking very sparingly, if ever; prefer a well-built hover animation that demonstrates the product over complex scroll animations. Complex scroll animation makes navigation harder and adds little. ([jain/captivating-sections 2:52], [jain/genius-designer 4:20])
- **Marketing:** Keep looping and ambient motion slow and simple: marquees slow enough to read, gentle photo zooms in or out; weigh the usability cost before adding them. Complicated or fast loops are distracting. ([jain/awful-to-amazing 5:32], [jain/trendy-web-animations 4:06])
- **Marketing:** Apply subtle parallax on scroll to elements placed in spacious margins. A lifelike depth effect without busy backgrounds. ([jain/boring-design-hacks 3:48])

[apple/design-foundations 9:27]: https://youtu.be/dGcqqA3Sl-o?t=567
[apple/designing-fluid-interfaces ¶because-you-can-discover]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=Because%20you%20can%20discover%20a%20new
[apple/designing-fluid-interfaces ¶if-we-move-it]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=If%20we%20move%20it%20up%20to
[apple/designing-fluid-interfaces ¶it-grows-from-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=it%20grows%20from%20the%20initial%20state
[apple/designing-fluid-interfaces ¶it-should-have-a]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=It%20should%20have%20a%20consistent%20offscreen
[apple/designing-fluid-interfaces ¶its-important-that-you]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=it%27s%20important%20that%20you%20treat%20behaviors
[apple/designing-fluid-interfaces ¶its-not-just-about]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=it%27s%20not%20just%20about%20framerate.%20It%27s
[apple/designing-fluid-interfaces ¶not-get-in-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=not%20get%20in%20the%20way%20with
[apple/designing-fluid-interfaces ¶so-we-recommend-starting]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=So%2C%20we%20recommend%20starting%20with%20100%25
[apple/designing-fluid-interfaces ¶the-content-uses-elasticity]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=the%20content%20uses%20elasticity%20to%20pull
[apple/designing-fluid-interfaces ¶the-line-is-completely]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=The%20line%20is%20completely%20unbroken%2C%20and
[apple/designing-fluid-interfaces ¶theres-less-mass-on]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=there%27s%20less%20mass%20on%20the%20photos%2C
[apple/designing-fluid-interfaces ¶we-want-to-allow]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=we%20want%20to%20allow%20for%20constant
[apple/designing-fluid-interfaces ¶you-can-also-use]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=you%20can%20also%20use%20it%20for
[apple/designing-fluid-interfaces ¶you-want-to-take]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=You%20want%20to%20take%20a%20small
[freiberg/invisible-details ¶a-layer-slides-over]: https://rauno.me/craft/interaction-design#:~:text=A%20layer%20slides%20over%20from%20the
[freiberg/invisible-details ¶exhibits-less-bounce-since]: https://rauno.me/craft/interaction-design#:~:text=exhibits%20less%20bounce%20since%20it%27s%20conceptually
[freiberg/invisible-details ¶feeling-the-scale-delta]: https://rauno.me/craft/interaction-design#:~:text=feeling%20the%20scale%20delta%20applying%20immediately%2C
[freiberg/invisible-details ¶great-interaction-design-rewards]: https://rauno.me/craft/interaction-design#:~:text=Great%20interaction%20design%20rewards%20learning%20by
[freiberg/invisible-details ¶great-interactions-are-modeled]: https://rauno.me/craft/interaction-design#:~:text=Great%20interactions%20are%20modeled%20after%20properties
[freiberg/invisible-details ¶if-the-app-slides]: https://rauno.me/craft/interaction-design#:~:text=if%20the%20app%20slides%20in%20from
[freiberg/invisible-details ¶it-doesnt-feel-like]: https://rauno.me/craft/interaction-design#:~:text=It%20doesn%27t%20feel%20like%20you%27re%20doing
[freiberg/invisible-details ¶lightweight-actions-such-as]: https://rauno.me/craft/interaction-design#:~:text=Lightweight%20actions%2C%20such%20as%20displaying%20overlays%2C
[freiberg/invisible-details ¶notice-how-the-gesture]: https://rauno.me/craft/interaction-design#:~:text=Notice%20how%20the%20gesture%20retains%20the
[freiberg/invisible-details ¶object-permanence-creating-a]: https://rauno.me/craft/interaction-design#:~:text=Object%20permanence%2C%20creating%20a%20focal%20point%2C
[freiberg/invisible-details ¶through-motion-this-helps]: https://rauno.me/craft/interaction-design#:~:text=Through%20motion%20this%20helps%20establish%20a
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
[jonasson-purho/juice-it-or-lose-it 10:39]: https://youtu.be/Fy0aCDmgnxg?t=639
[jonasson-purho/juice-it-or-lose-it 3:59]: https://youtu.be/Fy0aCDmgnxg?t=239
[jonasson-purho/juice-it-or-lose-it 4:33]: https://youtu.be/Fy0aCDmgnxg?t=273
[jonasson-purho/juice-it-or-lose-it 5:07]: https://youtu.be/Fy0aCDmgnxg?t=307
[jonasson-purho/juice-it-or-lose-it 5:19]: https://youtu.be/Fy0aCDmgnxg?t=319
[jonasson-purho/juice-it-or-lose-it 6:38]: https://youtu.be/Fy0aCDmgnxg?t=398
[kowalski/great-animations ¶before-you-add-an]: https://emilkowal.ski/ui/great-animations#:~:text=Before%20you%20add%20an%20animation%2C%20you
[kowalski/great-animations ¶changes-in-web-apps]: https://emilkowal.ski/ui/great-animations#:~:text=Changes%20in%20web%20apps%20often%20occur
[kowalski/great-animations ¶i-highly-suggest-playing]: https://emilkowal.ski/ui/great-animations#:~:text=I%20highly%20suggest%20playing%20around%20with
[kowalski/great-animations ¶it-allows-the-user]: https://emilkowal.ski/ui/great-animations#:~:text=It%20allows%20the%20user%20to%20change
[kowalski/great-animations ¶its-easy-to-start]: https://emilkowal.ski/ui/great-animations#:~:text=It%E2%80%99s%20easy%20to%20start%20adding%20animations
[kowalski/great-animations ¶the-opacity-change-in]: https://emilkowal.ski/ui/great-animations#:~:text=The%20opacity%20change%20in%20exiting%20and
[kowalski/great-animations ¶this-component-animates-opacity]: https://emilkowal.ski/ui/great-animations#:~:text=This%20component%20animates%20opacity%20only%20when
[kowalski/great-animations ¶uses-ease-as-the]: https://emilkowal.ski/ui/great-animations#:~:text=uses%20ease%20as%20the%20easing%20type
[kowalski/great-animations ¶you-should-try-to]: https://emilkowal.ski/ui/great-animations#:~:text=you%20should%20try%20to%20animate%20with
[kowalski/great-animations ¶your-animations-should-also]: https://emilkowal.ski/ui/great-animations#:~:text=Your%20animations%20should%20also%20usually%20be
[kowalski/you-dont-need-animations ¶because-it-comes-from]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Because%20it%20comes%20from%20and%20leaves
[kowalski/you-dont-need-animations ¶before-you-start-animating]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Before%20you%20start%20animating%2C%20ask%20yourself%3A
[kowalski/you-dont-need-animations ¶having-a-toast-suddenly]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Having%20a%20toast%20suddenly%20appear%20would
[kowalski/you-dont-need-animations ¶how-often-users-will]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=How%20often%20users%20will%20see%20an
[kowalski/you-dont-need-animations ¶unless-you-are-working]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Unless%20you%20are%20working%20on%20marketing
[nijman/art-of-screenshake 14:53]: https://youtu.be/AJdEqssNZ-U?t=893
[nijman/art-of-screenshake 32:19]: https://youtu.be/AJdEqssNZ-U?t=1939
[nijman/art-of-screenshake 32:27]: https://youtu.be/AJdEqssNZ-U?t=1947
[nngroup/theory-of-user-delight ¶combine-this-with-flashy]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=Combine%20this%20with%20flashy%20animations%20which
[ording/rubber-band ¶when-he-selected-a]: https://www.cultofmac.com/news/bas-ording-rubber-band-effect-iphone#:~:text=When%20he%20selected%20a%20name%2C%20it
[raroque/apps-feel-10x-better 0:52]: https://youtu.be/8mMH6Pq8qnE?t=52
[raroque/apps-feel-premium 1:29]: https://youtu.be/MXLF8b15GhQ?t=89
[saffer/microinteractions 15:10]: https://youtu.be/9CEtqnPdWoI?t=910
[saffer/microinteractions 31:21]: https://youtu.be/9CEtqnPdWoI?t=1881
[sakamoto/hearthstone-immersive-ui 10:04]: https://youtu.be/axkPXCNjOh8?t=604
