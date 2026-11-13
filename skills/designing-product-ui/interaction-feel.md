# Interaction feel

How individual actions feel: acknowledgement, feedback, responsiveness, waits, physicality and delight, and when to hold back.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a game-design principle whose *Note* translates it to product UI, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Acknowledge every action · Speed and flow · Layered, proportional feedback · Motion that explains · Keyboard and power-user feedback · Waits, loading and progress · Physicality and limits · Delight, fun and restraint

## Acknowledge every action

- Respond to every input, including plain taps and clicks; never ignore a touch, click or keypress. Responding to every interaction makes the interface feel alive and connected to the user. ([apple/designing-fluid-interfaces ¶its-important-for-an], [apple/touch-on-mac 10:56], [vohra/beyond-gamification 8:29])
- **From games:** Make the game acknowledge every player action: shot walls get decals, characters react. A wall that shows nothing when shot feels like a narcissistic injury. Fun is the degree to which the game recognizes and responds to the player's choices and actions. *Note: In product UI, never leave a click, tap or keypress without a visible response; silence reads as the app ignoring the user. Even a no-op should show something.* ([jonasson-purho/juice-it-or-lose-it 0:53], [nijman/art-of-screenshake 12:15], [valve/half-life-documentary 0:15:09])
- **From games:** Leave bodies, blood and shell casings in place instead of clearing them, so players see the aftermath of what they did. Permanence shows where the player has been and makes battles feel hard won. *Note: In product UI, leave visible traces of completed work (done states, checked items, activity history) so users can see what they accomplished.* ([gmtk/game-feel-and-juice 4:21], [nijman/art-of-screenshake 13:07])
- **From games:** Make misses and off-script attempts produce something: props break when shots miss, and text games give fun, unexpected replies to things players aren't supposed to try. Even a miss should cause something to happen; text games without visual effects get their juice this way. *Note: In product UI, a click on a disabled control, an invalid input or an unsupported command should get a specific, friendly response rather than silence.* ([jonasson-purho/juice-it-or-lose-it 1:15], [nijman/art-of-screenshake 14:27])
- **From games:** Respond to accumulated actions, not just single ones: after the player kills a bunch of marines, the rest run away. Without acknowledging choices and progress, the game loses any sort of impact. *Note: In product UI, reflect cumulative progress back to users (items cleared, counts, history), not only the latest click.* ([valve/half-life-documentary 0:16:36])
- **App UI:** Don't let content change silently after an automated action; at minimum show a toast, ideally a distinct animation such as a purple-orange gradient for AI changes. If users blink they miss it and can't feel the feature working. *Note: Announce the change through a polite live region too; the animation alone is invisible to screen-reader users.* ([raroque/apps-feel-premium 0:53])
- **App UI:** Communicate invisible rules through feedback as users act, escalating near a limit: MailChimp's chimp arm stretches, then pops off, as a newsletter grows too long. Rules are invisible; feedback is the only way users understand them. ([saffer/microinteractions 25:18])
- **From games:** As the player moves forward, make something happen every three to five seconds; a sign or sound is enough. Stay quiet while they stand still. If players are active, the world needs to play back and do something. *Note: In product UI, give small, frequent feedback while the user actively works and stay quiet while they are idle; routine feedback can be tiny.* ([valve/half-life-documentary 0:11:12])
- **From games:** Grab attention with a particle, sound or light before a scripted event, and use sound to broadcast hidden AI state, like soldiers calling out cover or grenades. Players move fast and look in the wrong place, and AI state is otherwise hidden. *Note: In product UI, draw the eye just before an important change users might miss, and expose hidden system state such as syncing, processing or a failed save.* ([valve/half-life-documentary 0:14:14])

## Speed and flow

- **App UI:** Respond to every action within 100 ms, the threshold where actions feel instant, then keep pushing; Superhuman renders an email in under 32 ms. Slower responses invite distraction and give users time to break flow. ([vohra/acquired-feel-like-a-game ¶superhuman-browser-app-is], [vohra/designing-for-flow ¶milliseconds-matter-they-may])
- Respond the instant an interaction starts: highlight a button on touch down, and remove latencies and timers that crept in during design. People are very sensitive to latency; waiting to see that a button worked feels disconnected and fragile. ([apple/designing-fluid-interfaces ¶its-not-just-swipes], [apple/principles-of-great-design 14:08])
- **App UI:** Optimize high-frequency interactions even by fractions of a second; loading one second faster saved Slack users 49½ days of waiting every day. Users take hundreds of interactions a day, so small delays add up along with frustration. ([eldh/invisible-details ¶some-product-and-engineering], [slack/incremental-boot ¶loading-one-second-faster])
- **App UI:** Show search results as soon as typing starts: query local cache and server at once, merge live, and stage inserts to avoid pop-in. A separate 'search the server' step pushes users to switch tasks while waiting. *Note: Announce result counts politely to screen readers and don't move focus as results merge.* ([apple/intuitive-search 11:50], [vohra/acquired-feel-like-a-game ¶it-is-also-simultaneously])
- **App UI:** For flow, make the next action obvious; after a user finishes an item, e.g. archives an email, show the next one instead of returning to the list. Hesitation kills flow; returning to the list forces a decision every time. ([vohra/beyond-gamification 11:38], [vohra/designing-for-flow ¶their-next-action-should])
- **App UI:** Avoid double-tap gestures where possible; supporting one delays every single tap by about half a second. The system must wait to see whether a second tap follows. *Note: The same applies to double-click handlers on elements that also act on a single click.* ([apple/designing-fluid-interfaces ¶tapping-to-show-the])
- **App UI:** Keep a complete local data model on the client so switching views is instant and the app stays usable on poor connections. Users aren't stuck waiting for API calls, and service interruptions hurt less. ([slack/incremental-boot ¶slack-has-all-of])

## Layered, proportional feedback

- **From games:** Make hits unmistakable by layering feedback: impact effect, white flash, small knockback, nearby blocks reacting and sound. Aim for maximum output for minimum input. Feedback shows players the change their input made; cascading response is what juice is about. *Note: In product UI, briefly flash the affected element and fade it back, and let one click trigger a few coordinated responses (press, highlight, count update).* ([gmtk/game-feel-and-juice 3:10], [jonasson-purho/juice-it-or-lose-it 1:24], [nijman/art-of-screenshake 11:43])
- **From games:** Make sound effects bassy and loud; a 12 dB bass boost turned an unpopular gun popular. Sound even changes how motion is perceived. Sound is the most cost-effective juice and is often ignored. *Note: In product UI, sound suits mobile, games and rare celebrations: give it body, keep it optional, and time it exactly to the moment of contact or completion.* ([gmtk/game-feel-and-juice 3:32], [jonasson-purho/juice-it-or-lose-it 7:50], [nijman/art-of-screenshake 8:43])
- **From games:** Add screen shake on impacts, carefully; beyond random shake, also kick the camera opposite the firing direction. It gives instant feedback that the player touched the world, for very little effort. *Note: In product UI, reserve shake for rare, meaningful moments such as a rejected password, keep it to a few pixels on one element, and disable it under prefers-reduced-motion.* ([gmtk/game-feel-and-juice 2:40], [jonasson-purho/juice-it-or-lose-it 12:03], [nijman/art-of-screenshake 16:45])
- **From games:** Make effects big, fast and cheap: chest-sized fast bullets, huge explosions that are just flashing circles; skip costly effects like shatter that no one can tell. Size sells impact and simple tricks work; complicated effects nobody notices are a trap. *Note: In product UI, make feedback for key outcomes large enough to see, build it from simple flashes and scale pulses, and scale it to the moment's importance.* ([gmtk/game-feel-and-juice 4:10], [jonasson-purho/juice-it-or-lose-it 11:26], [nijman/art-of-screenshake 10:25])
- **From games:** Polish the core input-to-response loop first; it should still feel fun with points, story, graphics and music stripped out. Game feel is the most important thing; everything else facilitates it. *Note: In product UI, polish the most frequent core action (create, complete, send) before decoration; it should feel good in a plain build.* ([gmtk/game-feel-and-juice 1:01], [nijman/art-of-screenshake 5:39])
- **App UI:** Compose key interactions from layered sub-animations (send button rotates into a check, background expands, text springs in); repeated across the app, they add up to premium. Premium is felt more than seen; some of the best craft is invisible to most users. *Note: Respect prefers-reduced-motion, and keep layered effects short so they never delay the next action. Use them for occasional key moments; keyboard-initiated and very frequent actions follow the no-animation rules below.* ([raroque/apps-feel-10x-better 1:31], [raroque/apps-feel-premium 13:31])
- **From games:** Fill games with tiny details players don't consciously notice but feel; adding juiciness makes a game better every time. Players won't say why, but without it they say the game sucks. *Note: In product UI, users won't credit good feedback but judge the product worse without it. Productivity tools need far less juice than games: see the restraint rules on frequency and keyboard actions.* ([jonasson-purho/juice-it-or-lose-it 1:56], [nijman/art-of-screenshake 15:07])
- **App UI:** On mobile, consider haptics on most button taps, scaled to the action: light for rapid repeated input like entering a transaction, heavier for switching tabs. Physical feedback makes tapping fun, but only feels satisfying when placed deliberately. *Note: Use platform haptic presets so system settings are respected, and never make haptics the only signal.* ([raroque/app-design-process 9:29], [raroque/apps-feel-10x-better 5:20])
- **App UI:** Pair motion with matching sound and haptics; tones that signal start, the sweet zone and done can guide users through a task. Results that are seen, heard and felt feel tactile; surgeons knew exactly when to act from the tone. *Note: Most web productivity apps should keep sound off by default; never rely on sound alone.* ([apple/designing-fluid-interfaces ¶by-combining-dynamic-behaviors], [saffer/microinteractions 12:30])
- **From games:** Pause the game for about 20 ms (hitstop) on impacts and kills. The brain gets time to process the impact without noticing the pause. *Note: In product UI, a brief hold of tens of milliseconds on a commit, such as a check settling before a row leaves, lets the result register; never block input meanwhile.* ([gmtk/game-feel-and-juice 2:54], [nijman/art-of-screenshake 18:20])
- **From games:** Use juice to double down on what the game is about; in a jumping game, keep the camera still so players can land jumps. Every bit of polish should speak to what the game is really about. *Note: In product UI, put feedback where it serves the core task and hold back where it would hurt precision, e.g. no shake or bounce during dense data entry.* ([gmtk/game-feel-and-juice 4:34])
- **From games:** For a pivotal moment, throw every channel at it at once: take the camera away, turn the lights off, add sounds. It turns a key beat into something cinematic. *Note: In product UI, reserve layered, multi-channel feedback for rare, important moments such as a first publish; routine actions get one small cue.* ([valve/half-life-documentary 0:34:30])

## Motion that explains

- Make every transition interruptible: users can reverse a swipe mid-navigation or touch content while it animates in, never waiting for motion to finish. Thought and gesture then run in parallel; waiting for an animation feels unresponsive. *Note: In CSS, transitions retarget mid-flight while keyframe animations restart, so prefer transitions for interruptible state changes.* ([apple/designing-fluid-interfaces ¶we-want-to-allow], [freiberg/invisible-details ¶great-interactions-are-modeled], [kowalski/great-animations ¶it-allows-the-user])
- Animate a view out of the element that opened it and exit the same way; use another direction only when sending the item somewhere. It mimics object permanence and shows where content came from. *Note: Under prefers-reduced-motion, use a short fade only.* ([apple/designing-fluid-interfaces ¶it-should-have-a], [freiberg/invisible-details ¶through-motion-this-helps], [kowalski/you-dont-need-animations ¶because-it-comes-from])
- **App UI:** On release, carry the gesture's momentum and angle into the content, and pick snap targets from the momentum-projected position using the platform's scroll deceleration rate. A light flick then lands where expected, reusing people's intuition for how far scrolled content travels. ([apple/designing-fluid-interfaces ¶you-want-to-take], [freiberg/invisible-details ¶notice-how-the-gesture])
- **App UI:** Give continuous feedback during a gesture: track the input one-to-one and grow intermediate states toward the final state, not a threshold-only 0→1 jump. Threshold-only animations give no affordance; people predict trajectories and notice any lost tracking. ([apple/designing-fluid-interfaces ¶it-grows-from-the], [freiberg/invisible-details ¶feeling-the-scale-delta])
- **App UI:** Use bounce only with purpose: overshoot when the driving gesture had momentum, or bounce a surface on tap to hint at a hidden gesture. Rewarding momentum feels satisfying; a bounce hints there's something under the surface. ([apple/designing-fluid-interfaces ¶if-the-gesture-thats], [saffer/microinteractions 15:10])
- **App UI:** Reuse a few gesture metaphors and match each button's animation to its gesture equivalent, so learning one teaches the other. Knowledge compounds, and new gestures are discovered along the path of familiar ones. ([apple/designing-fluid-interfaces ¶because-you-can-discover], [freiberg/invisible-details ¶great-interaction-design-rewards])
- **App UI:** Fire lightweight gesture actions mid-swipe once elements reach their final position; commit destructive actions and navigation only when the gesture ends. Users can peek and change their mind halfway without accidentally losing progress. ([freiberg/invisible-details ¶lightweight-actions-such-as])
- **From games:** Join levels seamlessly with transitions of a second or two, and never take players out of their role. The world feels connected and immersion stays unbroken. *Note: In product UI, keep screen-to-screen transitions short and context-preserving (most well under a second) and avoid modals or context switches that pull users out of their task.* ([valve/half-life-documentary 0:09:08])

## Keyboard and power-user feedback

- **App UI:** Never animate keyboard-initiated actions, and don't animate the appearance of overlays opened hundreds of times a day: command menus, app switchers, context menus, arrow-key highlights. At that frequency even snappy motion feels slow and disconnected; mouse and keyboard interactions can often skip motion without feeling jarring. ([freiberg/invisible-details ¶if-we-for-a], [kowalski/great-animations ¶a-good-tip-here], [kowalski/you-dont-need-animations ¶if-it-animated-every])
- **App UI:** Make nearly every action keyboard-reachable, with single-key shortcuts for frequent ones and a Cmd+K palette that runs anything and shows its shortcut. Users knew what they wanted but forgot how; the palette teaches the shortcut for next time. *Note: Don't let single-key shortcuts fire while typing in a field, and let users turn off or remap them (WCAG 2.1.4).* ([eldh/invisible-details ¶you-can-take-almost], [vohra/acquired-feel-like-a-game ¶hundred-milliseconds-response-times], [vohra/beyond-gamification 13:10])
- **App UI:** Never drop or misroute fast input: buffer keystrokes so text typed straight after a shortcut, like C then a name, lands in the new field. Ignored inputs feel like a fighting game ignoring half your moves. ([vohra/beyond-gamification 8:02])
- **App UI:** On menu selection, briefly blink the chosen item in the accent color, then subtly fade the menu out. The blink assures the selection succeeded; the fade is more graceful than vanishing. *Note: Keep it to a single short blink, well under three flashes per second.* ([freiberg/invisible-details ¶the-selected-item-briefly])
- **App UI:** If a shortcut chord completes quickly, act immediately and skip the intermediate overlay. A quick Cmd-Tab focuses the previous window without ever showing the switcher. ([freiberg/invisible-details ¶the-previously-active-window])
- **App UI:** Make inputs forgiving: accept loose text like '3d' or '8am in Tokyo' and do your best to interpret it. Forgiving inputs invite playful exploration and pleasant surprise. *Note: Echo the interpreted value (e.g. the resolved date) so users can confirm it.* ([vohra/beyond-gamification 9:07])

## Waits, loading and progress

- **App UI:** Fill unavoidable waits with loading messages or a little humor instead of a blank screen, as a stopgap, and still minimize time spent on them. It occupies idle time, but getting users back to their work matters most. *Note: Slack's loading messages are the example; when admins could customize them, pranks confused users and Slack got blamed.* ([buell-norton/labor-illusion ¶the-feeling-of-progress], [saffer/microinteractions 9:23], [slack/easter-eggs ¶the-custom-loading-messages], [slack/incremental-boot ¶seeing-these-messages-is])
- **App UI:** Make progress indicators carry real information: keep a bar for remaining time, show task counts on the trigger like Chrome downloads, match spinner segments to running processes. Reliable information about the wait reduces its cost, and users don't have to go look. ([buell-norton/labor-illusion ¶individuals-with-reliable-information], [saffer/microinteractions 19:19])
- Use what's already on screen for feedback: turn the pressed submit button into the progress indicator and disable it until the action completes. It confirms the click, avoids adding a progress bar and prevents repeated attempts. *Note: Prefer aria-disabled plus aria-busy so focus isn't lost, and announce completion.* ([nngroup/disabled-buttons 2:31], [saffer/microinteractions 27:09])
- Use a faster-spinning spinner to make loading feel faster. The app seems to load faster even though load time is the same. *Note: Pair the spinner with text or a live-region status for screen readers.* ([kowalski/great-animations ¶fast-animations-improve-the], [kowalski/you-dont-need-animations ¶a-faster-spinning-spinner])
- **App UI:** Supplement blind progress bars with a live tally of the work: each source searched, each user criterion matched, results accumulating as found. Most users chose a 30–60 s transparent wait over instant identical results; visible effort raises perceived value. *Note: Put the tally in a polite, throttled live region so screen readers aren't flooded.* ([buell-norton/labor-illusion ¶with-interfaces-that-provide])
- **App UI:** Boot incrementally: render the user's current view first, fetch the full model in parallel, and prioritize time-to-content-visible over fully-loaded time. Slack cut time to content visible from about 7 s to under 5 s, ideally without users noticing the staging. ([slack/incremental-boot ¶we-start-by-fetching])
- **App UI:** Keep transparent waits short and cut long ones: the benefit of showing work declined after ~30 s for flight search and ~15 s for dating search. Value drops as waits lengthen, and delays that look avoidable cause uncertainty and anger. *Note: Calibrate to what users expect from comparable services.* ([buell-norton/labor-illusion ¶tive-bene-ts-of])
- **App UI:** When results are already fast, reveal the process rather than shaving more time; where users expect sub-second results, don't add delay. Hiding all the work undercommunicates value; transparency still helps when a wait is unavoidable. *Note: Complements cutting long waits: transparency helps short or unavoidable waits, but don't pad a fast action to display effort.* ([buell-norton/labor-illusion ¶if-google-told-them])
- **App UI:** Prefer showing real operations over fabricated busywork, and don't spotlight effort when the result is likely poor. Visible effort followed by a bad result scored worst of all, as users blame the service; faking labor nears an ethical line and backfires if users notice. ([buell-norton/labor-illusion ¶people-blame-the-service])
- **From games:** Don't show a bare matchmaking counter; show a living world of others battling and theme loading screens in the core metaphor, without going over the top. It makes the wait feel alive, with other people there with you. *Note: In product UI, make long waits feel alive with real activity or product-themed loaders rather than a raw elapsed-time counter.* ([sakamoto/hearthstone-immersive-ui 2:55])

## Physicality and limits

- **From games:** Give objects physical reactions: guns kick back, landings kick up dust, a hit ball scales up and eases back, dragged cards tilt and swoosh. Small reactions make characters and objects feel part of the world. *Note: In product UI, let triggering controls depress and spring back, and dragged items tilt or lag slightly; keep amplitudes small and honor prefers-reduced-motion.* ([gmtk/game-feel-and-juice 3:24], [jonasson-purho/juice-it-or-lose-it 5:58], [nijman/art-of-screenshake 19:54], [sakamoto/hearthstone-immersive-ui 10:33])
- **App UI:** Make touch feel attached: drag with the touch offset preserved, scale up on hold, scale down subtly on press, and cancel a tap dragged outside. Touch and content should move together, and users can change their mind mid-press. *Note: Re-highlight the control if the pointer moves back inside before release.* ([apple/designing-fluid-interfaces ¶we-should-respect-the], [apple/touch-on-mac 1:26], [kowalski/you-dont-need-animations ¶another-purposeful-animation-is])
- Rubber-band at scroll limits: past the edge, move content slower than the finger, then snap back on release; don't hard-stop or pad static space. A hard stop is indistinguishable from a frozen device. ([apple/designing-fluid-interfaces ¶you-actually-wouldnt-know], [ording/rubber-band ¶when-he-got-to])
- **From games:** Fill the world with toys: board clickables to fidget with, a microwave button that blows up the soup, walls that react to a crowbar. Smacking walls felt profoundly satisfying, and quotidian details made the world exciting. *Note: In product UI, small harmless interactive details in idle areas can reward exploration; keep them out of the core task path.* ([sakamoto/hearthstone-immersive-ui 11:44], [valve/half-life-documentary 0:32:46])
- **App UI:** Make some interactions fun to fiddle with even without a goal, then combine those toys into goals. The best games are fun at the level of both the toy and the game. ([freiberg/invisible-details ¶fidgeting-does-regardless-feel], [vohra/beyond-gamification 10:20])

## Delight, fun and restraint

- **App UI:** Decide whether to animate by how often it's seen: use delight-only motion for rare interactions, and plan how each feels by the thousandth use. A pleasant surprise once becomes irritating and slow when seen daily. ([apple/designing-fluid-interfaces ¶not-get-in-the], [freiberg/invisible-details ¶it-doesnt-feel-like], [kowalski/great-animations ¶before-you-add-an], [kowalski/you-dont-need-animations ¶how-often-users-will], [saffer/microinteractions 31:21])
- Make the product functional, reliable and usable before adding delight; confetti or snarky copy on a flawed product feels gimmicky. Deep delight comes from streamlined workflows and flow; delight is the sum of consideration. ([apple/principles-of-great-design 16:05], [nngroup/theory-of-user-delight ¶only-when-a-product])
- Keep personality brief and attached to the task ('Howdy partner, ready to schedule your cookout?') and trustworthy; skip humor for serious brands. Personality differentiates, as Slack's did, but overbearing or gimmicky tone feels untrustworthy. ([nngroup/theory-of-user-delight ¶attempts-at-humor-animation], [slack/easter-eggs ¶while-also-being-trustworthy], [walter/designing-for-emotion 0:45:26])
- **App UI:** Use context as implicit input: offer a tracking code found on the clipboard, raise brightness for a scannable pass, quiet the fans during dictation. Inferring intent without asking feels magical and pleasantly surprises users. *Note: Make suggestions easy to cancel or change, and ask before reading the clipboard where the platform requires it.* ([freiberg/invisible-details ¶when-an-interface-makes], [raroque/apps-feel-premium 11:43], [saffer/microinteractions 9:39])
- **App UI:** Amplify moments of natural accomplishment lightly: after an effortful, irreversible action like sending a campaign, show a short message and a high-five animation. Matching the emotion of the moment, especially near a journey's end, is what people remember. *Note: Contrast with tacked-on confetti: celebrate rare, real milestones, not routine actions.* ([nngroup/theory-of-user-delight ¶subtle-animations-help-to], [vohra/acquired-feel-like-a-game ¶find-the-light-touch], [walter/designing-for-emotion 0:52:22])
- **App UI:** Don't bolt points, badges or levels onto the product; add streaks or achievements only atop a working experience, as celebrations for those who earn them. Extrinsic rewards undermine intrinsic motivation; in one study rewards halved drawing time from 17% to 8%. ([vohra/acquired-feel-like-a-game ¶game-design-is-not], [vohra/beyond-gamification 1:11])
- **App UI:** Give users concrete, achievable, rewarding goals like inbox zero, and reward completion with imagery chosen for specific emotions such as serenity or awe. It widens the emotional range beyond joy into love and surprise. ([vohra/acquired-feel-like-a-game ¶we-do-this-specifically], [vohra/beyond-gamification 5:00])
- **App UI:** Reward exploration with pleasant surprises: easter eggs behind a slash-command menu, or a 'Surprise me!' setting that plays a brief animation. Fun is a pleasant surprise; pleasure alone is not fun. ([slack/easter-eggs ¶you-found-a-whole], [vohra/acquired-feel-like-a-game ¶a-good-toy-is])
- Name the emotions users should feel (relaxed, confident, excited) and those to remove (anxious, guilty), then design to reinforce them throughout. Delight comes from identifying and reinforcing the emotions you want people to feel, not from tacked-on flourishes. ([apple/principles-of-great-design 16:13], [vohra/beyond-gamification 7:00])
- **App UI:** Balance challenge with skill; for skilled users with easy tasks, add a harder goal like reaching inbox zero without touching the mouse. Skill above challenge bores, challenge above skill causes anxiety; flow needs both high. ([vohra/beyond-gamification 14:36], [vohra/designing-for-flow ¶users-must-perceive-high])
- **App UI:** Polish the microinteractions around big features, like login and settings, and invest in a few that can become signature moments, like the Like button. Bad microinteractions undermine great features; signature moments increase loyalty and adoption. ([saffer/microinteractions 4:51])
- **App UI:** When users enter painful information or feel uncertain, acknowledge it with one empathetic sentence, e.g. 'We're sorry to hear about your loss.'. Acknowledging the moment makes people feel seen; one sentence moved customers deeply. ([walter/designing-for-emotion 0:48:53])

[apple/designing-fluid-interfaces ¶because-you-can-discover]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=Because%20you%20can%20discover%20a%20new
[apple/designing-fluid-interfaces ¶by-combining-dynamic-behaviors]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=By%20combining%20dynamic%20behaviors%20for%20motion
[apple/designing-fluid-interfaces ¶if-the-gesture-thats]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=if%20the%20gesture%20that%27s%20driving%20the
[apple/designing-fluid-interfaces ¶it-grows-from-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=it%20grows%20from%20the%20initial%20state
[apple/designing-fluid-interfaces ¶it-should-have-a]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=It%20should%20have%20a%20consistent%20offscreen
[apple/designing-fluid-interfaces ¶its-important-for-an]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=It%27s%20important%20for%20an%20interface%20to
[apple/designing-fluid-interfaces ¶its-not-just-swipes]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=It%27s%20not%20just%20swipes%20It%27s%20taps
[apple/designing-fluid-interfaces ¶not-get-in-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=not%20get%20in%20the%20way%20with
[apple/designing-fluid-interfaces ¶tapping-to-show-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=tapping%20to%20show%20the%20app%20menu
[apple/designing-fluid-interfaces ¶we-should-respect-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=We%20should%20respect%20the%20relative%20position
[apple/designing-fluid-interfaces ¶we-want-to-allow]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=we%20want%20to%20allow%20for%20constant
[apple/designing-fluid-interfaces ¶you-actually-wouldnt-know]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=you%20actually%20wouldn%27t%20know%20the%20difference
[apple/designing-fluid-interfaces ¶you-want-to-take]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=You%20want%20to%20take%20a%20small
[apple/intuitive-search 11:50]: https://youtu.be/lx45sKEnZkU?t=710
[apple/principles-of-great-design 14:08]: https://youtu.be/Xa9L2yx_QH8?t=848
[apple/principles-of-great-design 16:05]: https://youtu.be/Xa9L2yx_QH8?t=965
[apple/principles-of-great-design 16:13]: https://youtu.be/Xa9L2yx_QH8?t=973
[apple/touch-on-mac 10:56]: https://youtu.be/2cq3ytwLrLk?t=656
[apple/touch-on-mac 1:26]: https://youtu.be/2cq3ytwLrLk?t=86
[buell-norton/labor-illusion ¶if-google-told-them]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#:~:text=if%20Google%20told%20them%20exactly%20what
[buell-norton/labor-illusion ¶individuals-with-reliable-information]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#:~:text=individuals%20with%20reliable%20information%20about%20the
[buell-norton/labor-illusion ¶people-blame-the-service]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#:~:text=people%20blame%20the%20service%20for%20this
[buell-norton/labor-illusion ¶the-feeling-of-progress]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#:~:text=the%20feeling%20of%20progress%20Soman%20and
[buell-norton/labor-illusion ¶tive-bene-ts-of]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#:~:text=tive%20bene%20ts%20of%20transparency%20began
[buell-norton/labor-illusion ¶with-interfaces-that-provide]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#:~:text=with%20interfaces%20that%20provide%20a%20running
[eldh/invisible-details ¶some-product-and-engineering]: https://linear.app/now/invisible-details#:~:text=Some%20product%20and%20engineering%20managers%20take
[eldh/invisible-details ¶you-can-take-almost]: https://linear.app/now/invisible-details#:~:text=You%20can%20take%20almost%20every%20action
[freiberg/invisible-details ¶feeling-the-scale-delta]: https://rauno.me/craft/interaction-design#:~:text=feeling%20the%20scale%20delta%20applying%20immediately
[freiberg/invisible-details ¶fidgeting-does-regardless-feel]: https://rauno.me/craft/interaction-design#:~:text=fidgeting%20does%20regardless%20feel%20like%20a
[freiberg/invisible-details ¶great-interaction-design-rewards]: https://rauno.me/craft/interaction-design#:~:text=Great%20interaction%20design%20rewards%20learning%20by
[freiberg/invisible-details ¶great-interactions-are-modeled]: https://rauno.me/craft/interaction-design#:~:text=Great%20interactions%20are%20modeled%20after%20properties
[freiberg/invisible-details ¶if-we-for-a]: https://rauno.me/craft/interaction-design#:~:text=if%20we%20for%20a%20moment%20consider
[freiberg/invisible-details ¶it-doesnt-feel-like]: https://rauno.me/craft/interaction-design#:~:text=It%20doesn%27t%20feel%20like%20you%27re%20doing
[freiberg/invisible-details ¶lightweight-actions-such-as]: https://rauno.me/craft/interaction-design#:~:text=Lightweight%20actions%20such%20as%20displaying%20overlays
[freiberg/invisible-details ¶notice-how-the-gesture]: https://rauno.me/craft/interaction-design#:~:text=Notice%20how%20the%20gesture%20retains%20the
[freiberg/invisible-details ¶the-previously-active-window]: https://rauno.me/craft/interaction-design#:~:text=the%20previously%20active%20window%20receives%20focus
[freiberg/invisible-details ¶the-selected-item-briefly]: https://rauno.me/craft/interaction-design#:~:text=the%20selected%20item%20briefly%20blinks%20the
[freiberg/invisible-details ¶through-motion-this-helps]: https://rauno.me/craft/interaction-design#:~:text=Through%20motion%20this%20helps%20establish%20a
[freiberg/invisible-details ¶when-an-interface-makes]: https://rauno.me/craft/interaction-design#:~:text=When%20an%20interface%20makes%20use%20of
[gmtk/game-feel-and-juice 1:01]: https://youtu.be/216_5nu4aVQ?t=61
[gmtk/game-feel-and-juice 2:40]: https://youtu.be/216_5nu4aVQ?t=160
[gmtk/game-feel-and-juice 2:54]: https://youtu.be/216_5nu4aVQ?t=174
[gmtk/game-feel-and-juice 3:10]: https://youtu.be/216_5nu4aVQ?t=190
[gmtk/game-feel-and-juice 3:24]: https://youtu.be/216_5nu4aVQ?t=204
[gmtk/game-feel-and-juice 3:32]: https://youtu.be/216_5nu4aVQ?t=212
[gmtk/game-feel-and-juice 4:10]: https://youtu.be/216_5nu4aVQ?t=250
[gmtk/game-feel-and-juice 4:21]: https://youtu.be/216_5nu4aVQ?t=261
[gmtk/game-feel-and-juice 4:34]: https://youtu.be/216_5nu4aVQ?t=274
[jonasson-purho/juice-it-or-lose-it 0:53]: https://youtu.be/Fy0aCDmgnxg?t=53
[jonasson-purho/juice-it-or-lose-it 11:26]: https://youtu.be/Fy0aCDmgnxg?t=686
[jonasson-purho/juice-it-or-lose-it 12:03]: https://youtu.be/Fy0aCDmgnxg?t=723
[jonasson-purho/juice-it-or-lose-it 1:15]: https://youtu.be/Fy0aCDmgnxg?t=75
[jonasson-purho/juice-it-or-lose-it 1:24]: https://youtu.be/Fy0aCDmgnxg?t=84
[jonasson-purho/juice-it-or-lose-it 1:56]: https://youtu.be/Fy0aCDmgnxg?t=116
[jonasson-purho/juice-it-or-lose-it 5:58]: https://youtu.be/Fy0aCDmgnxg?t=358
[jonasson-purho/juice-it-or-lose-it 7:50]: https://youtu.be/Fy0aCDmgnxg?t=470
[kowalski/great-animations ¶a-good-tip-here]: https://emilkowal.ski/ui/great-animations#:~:text=A%20good%20tip%20here%20is%20to
[kowalski/great-animations ¶before-you-add-an]: https://emilkowal.ski/ui/great-animations#:~:text=Before%20you%20add%20an%20animation%20you
[kowalski/great-animations ¶fast-animations-improve-the]: https://emilkowal.ski/ui/great-animations#:~:text=Fast%20animations%20improve%20the%20perceived%20performance
[kowalski/great-animations ¶it-allows-the-user]: https://emilkowal.ski/ui/great-animations#:~:text=It%20allows%20the%20user%20to%20change
[kowalski/you-dont-need-animations ¶a-faster-spinning-spinner]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=a%20faster%20spinning%20spinner%20makes%20the
[kowalski/you-dont-need-animations ¶another-purposeful-animation-is]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Another%20purposeful%20animation%20is%20this%20subtle
[kowalski/you-dont-need-animations ¶because-it-comes-from]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Because%20it%20comes%20from%20and%20leaves
[kowalski/you-dont-need-animations ¶how-often-users-will]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=How%20often%20users%20will%20see%20an
[kowalski/you-dont-need-animations ¶if-it-animated-every]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=If%20it%20animated%20every%20time%20I
[nijman/art-of-screenshake 10:25]: https://youtu.be/AJdEqssNZ-U?t=625
[nijman/art-of-screenshake 11:43]: https://youtu.be/AJdEqssNZ-U?t=703
[nijman/art-of-screenshake 12:15]: https://youtu.be/AJdEqssNZ-U?t=735
[nijman/art-of-screenshake 13:07]: https://youtu.be/AJdEqssNZ-U?t=787
[nijman/art-of-screenshake 14:27]: https://youtu.be/AJdEqssNZ-U?t=867
[nijman/art-of-screenshake 15:07]: https://youtu.be/AJdEqssNZ-U?t=907
[nijman/art-of-screenshake 16:45]: https://youtu.be/AJdEqssNZ-U?t=1005
[nijman/art-of-screenshake 18:20]: https://youtu.be/AJdEqssNZ-U?t=1100
[nijman/art-of-screenshake 19:54]: https://youtu.be/AJdEqssNZ-U?t=1194
[nijman/art-of-screenshake 5:39]: https://youtu.be/AJdEqssNZ-U?t=339
[nijman/art-of-screenshake 8:43]: https://youtu.be/AJdEqssNZ-U?t=523
[nngroup/disabled-buttons 2:31]: https://youtu.be/uEjidraxhAw?t=151
[nngroup/theory-of-user-delight ¶attempts-at-humor-animation]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=attempts%20at%20humor%20animation%20or%20other
[nngroup/theory-of-user-delight ¶only-when-a-product]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=Only%20when%20a%20product%20is%20functional
[nngroup/theory-of-user-delight ¶subtle-animations-help-to]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=subtle%20animations%20help%20to%20reassure%20the
[ording/rubber-band ¶when-he-got-to]: https://www.cultofmac.com/news/bas-ording-rubber-band-effect-iphone#:~:text=when%20he%20got%20to%20the%20bottom
[raroque/app-design-process 9:29]: https://youtu.be/H0czeRyXPxA?t=569
[raroque/apps-feel-10x-better 1:31]: https://youtu.be/8mMH6Pq8qnE?t=91
[raroque/apps-feel-10x-better 5:20]: https://youtu.be/8mMH6Pq8qnE?t=320
[raroque/apps-feel-premium 0:53]: https://youtu.be/MXLF8b15GhQ?t=53
[raroque/apps-feel-premium 11:43]: https://youtu.be/MXLF8b15GhQ?t=703
[raroque/apps-feel-premium 13:31]: https://youtu.be/MXLF8b15GhQ?t=811
[saffer/microinteractions 12:30]: https://youtu.be/9CEtqnPdWoI?t=750
[saffer/microinteractions 15:10]: https://youtu.be/9CEtqnPdWoI?t=910
[saffer/microinteractions 19:19]: https://youtu.be/9CEtqnPdWoI?t=1159
[saffer/microinteractions 25:18]: https://youtu.be/9CEtqnPdWoI?t=1518
[saffer/microinteractions 27:09]: https://youtu.be/9CEtqnPdWoI?t=1629
[saffer/microinteractions 31:21]: https://youtu.be/9CEtqnPdWoI?t=1881
[saffer/microinteractions 4:51]: https://youtu.be/9CEtqnPdWoI?t=291
[saffer/microinteractions 9:23]: https://youtu.be/9CEtqnPdWoI?t=563
[saffer/microinteractions 9:39]: https://youtu.be/9CEtqnPdWoI?t=579
[sakamoto/hearthstone-immersive-ui 10:33]: https://youtu.be/axkPXCNjOh8?t=633
[sakamoto/hearthstone-immersive-ui 11:44]: https://youtu.be/axkPXCNjOh8?t=704
[sakamoto/hearthstone-immersive-ui 2:55]: https://youtu.be/axkPXCNjOh8?t=175
[slack/easter-eggs ¶the-custom-loading-messages]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=The%20custom%20loading%20messages%20also%20existed
[slack/easter-eggs ¶while-also-being-trustworthy]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=while%20also%20being%20trustworthy%20and%20feeling
[slack/easter-eggs ¶you-found-a-whole]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=you%20found%20a%20whole%20treasure%20chest
[slack/incremental-boot ¶loading-one-second-faster]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=Loading%20one%20second%20faster%20may%20not
[slack/incremental-boot ¶seeing-these-messages-is]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=Seeing%20these%20messages%20is%20certainly%20better
[slack/incremental-boot ¶slack-has-all-of]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=Slack%20has%20all%20of%20the%20data
[slack/incremental-boot ¶we-start-by-fetching]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=We%20start%20by%20fetching%20only%20the
[valve/half-life-documentary 0:09:08]: https://youtu.be/TbZ3HzvFEto?t=548
[valve/half-life-documentary 0:11:12]: https://youtu.be/TbZ3HzvFEto?t=672
[valve/half-life-documentary 0:14:14]: https://youtu.be/TbZ3HzvFEto?t=854
[valve/half-life-documentary 0:15:09]: https://youtu.be/TbZ3HzvFEto?t=909
[valve/half-life-documentary 0:16:36]: https://youtu.be/TbZ3HzvFEto?t=996
[valve/half-life-documentary 0:32:46]: https://youtu.be/TbZ3HzvFEto?t=1966
[valve/half-life-documentary 0:34:30]: https://youtu.be/TbZ3HzvFEto?t=2070
[vohra/acquired-feel-like-a-game ¶a-good-toy-is]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=A%20good%20toy%20is%20an%20object
[vohra/acquired-feel-like-a-game ¶find-the-light-touch]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=find%20the%20light%20touch%20ways%20to
[vohra/acquired-feel-like-a-game ¶game-design-is-not]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=Game%20design%20is%20not%20gamification%20It
[vohra/acquired-feel-like-a-game ¶hundred-milliseconds-response-times]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=hundred%20milliseconds%20response%20times%20instantaneous%20search
[vohra/acquired-feel-like-a-game ¶it-is-also-simultaneously]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=it%20is%20also%20simultaneously%20searching%20in
[vohra/acquired-feel-like-a-game ¶superhuman-browser-app-is]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=Superhuman%20browser%20app%20is%20faster%20than
[vohra/acquired-feel-like-a-game ¶we-do-this-specifically]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=We%20do%20this%20specifically%20to%20widen
[vohra/beyond-gamification 10:20]: https://youtu.be/zaxAdRlyZQ8?t=620
[vohra/beyond-gamification 11:38]: https://youtu.be/zaxAdRlyZQ8?t=698
[vohra/beyond-gamification 13:10]: https://youtu.be/zaxAdRlyZQ8?t=790
[vohra/beyond-gamification 14:36]: https://youtu.be/zaxAdRlyZQ8?t=876
[vohra/beyond-gamification 1:11]: https://youtu.be/zaxAdRlyZQ8?t=71
[vohra/beyond-gamification 5:00]: https://youtu.be/zaxAdRlyZQ8?t=300
[vohra/beyond-gamification 7:00]: https://youtu.be/zaxAdRlyZQ8?t=420
[vohra/beyond-gamification 8:02]: https://youtu.be/zaxAdRlyZQ8?t=482
[vohra/beyond-gamification 8:29]: https://youtu.be/zaxAdRlyZQ8?t=509
[vohra/beyond-gamification 9:07]: https://youtu.be/zaxAdRlyZQ8?t=547
[vohra/designing-for-flow ¶milliseconds-matter-they-may]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=Milliseconds%20matter%20They%20may%20not%20seem
[vohra/designing-for-flow ¶their-next-action-should]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=their%20next%20action%20should%20always%20be
[vohra/designing-for-flow ¶users-must-perceive-high]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=users%20must%20perceive%20high%20challenge%20and
[walter/designing-for-emotion 0:45:26]: https://youtu.be/2umE6CHfHYc?t=2726
[walter/designing-for-emotion 0:48:53]: https://youtu.be/2umE6CHfHYc?t=2933
[walter/designing-for-emotion 0:52:22]: https://youtu.be/2umE6CHfHYc?t=3142
