# Interaction feel

How individual actions feel: acknowledgement, speed, keyboard feedback, waits, proportional feedback, physicality and delight, and when to hold back.

- Keyboard and very frequent actions: a state change only, no motion.
- Routine clicks: one small cue.
- Completions users care about: a clear confirmation.
- Rare milestones: layered feedback is acceptable.
- Feedback never compensates for broken function; fix the function first.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a product-UI rule translated from the cited game-design Source principle, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Acknowledge every action · Speed and flow · Keyboard and power-user feedback · Waits, loading and progress · Proportional feedback · Physicality and touch · Delight and restraint

## Acknowledge every action

- Give every input an immediate visible response, including plain taps, clicks and keypresses: a pressed state, a progress label ('Processing your order') if it runs long, and a confirmation when done (a 'Done' label or a 'Copied' chip). Keyboard shortcuts need visible feedback too, without motion (see Keyboard and power-user feedback). Without a response the app seems to ignore the user, and a slow action looks like the click didn't register; games treat this acknowledgement as the core of fun. ([apple/designing-fluid-interfaces ¶its-important-for-an], [apple/touch-on-mac 10:56], [jain/beginner-mistakes 5:39], [jain/every-ui-concept 7:31], [jain/macos-apps 6:46], [jain/tiktok-ux 4:06], [jonasson-purho/juice-it-or-lose-it 0:53], [nijman/art-of-screenshake 12:15], [saffer/microinteractions 27:45], [valve/half-life-documentary 0:15:09], [vohra/beyond-gamification 8:29])
- **From games:** Give a click on a disabled control, an invalid input or an unsupported command a specific, friendly response rather than silence. Users learn the system's limits from its responses; silence reads as the app being broken. Source principle: Make misses and off-script attempts produce something: props break when shots miss, and text games reply in fun, unexpected ways to things players aren't supposed to try. *Note: On the web, prefer aria-disabled over disabled so the control can still receive the click and explain itself.* ([jonasson-purho/juice-it-or-lose-it 1:15], [nijman/art-of-screenshake 14:27])
- **App UI:** Don't let content change silently after an automated action; at minimum show a toast, ideally a distinct animation such as a brief highlight in the accent on the changed content. If users blink they miss it and can't feel the feature working. *Note: Announce the change through a polite live region too; the animation alone is invisible to screen-reader users.* ([raroque/apps-feel-premium 0:53])
- **App UI:** Communicate invisible rules through feedback as users act, escalating near a limit: MailChimp's chimp arm stretches, then pops off, as a newsletter grows too long. Rules are invisible; feedback is the only way users understand them. ([saffer/microinteractions 25:18])
- **From games:** Draw the eye just before an important change users might miss, and expose hidden system state such as syncing, processing or a failed save. Users, like players, miss changes outside their focus, and invisible state looks like nothing is happening. Source principle: Grab attention with a particle, sound or light before a scripted event, since players look in the wrong place; soldiers call out cover and grenades to broadcast hidden AI state. *Note: For accessibility, announce important status changes in a polite live region.* ([valve/half-life-documentary 0:14:14])
- **From games:** Reflect completed and cumulative work back to users through activity history and counts of items cleared; remove transient status messages once the work completes. Permanence shows users what they accomplished; acknowledging progress, not just the latest click, gives work impact. Source principle: Leave bodies, blood and shell casings in place so players see the aftermath, and respond to accumulated actions: after the player kills a bunch of marines, the rest run away. ([gmtk/game-feel-and-juice 4:21], [nijman/art-of-screenshake 13:07], [valve/half-life-documentary 0:16:36])

## Speed and flow

- **App UI:** Respond to every action within 100 ms, the threshold where actions feel instant, then keep pushing; Superhuman renders an email in under 32 ms. Slower responses invite distraction and give users time to break flow. ([vohra/acquired-feel-like-a-game ¶superhuman-browser-app-is], [vohra/designing-for-flow ¶milliseconds-matter-they-may])
- Respond the instant an interaction starts: highlight a button on touch down, and remove latencies and timers that crept in during design. People are very sensitive to latency; waiting to see that a button worked feels disconnected and fragile. ([apple/designing-fluid-interfaces ¶its-not-just-swipes], [apple/principles-of-great-design 14:08])
- **App UI:** Optimize high-frequency interactions even by fractions of a second; loading one second faster saved Slack users 49½ days of waiting every day. Users take hundreds of interactions a day, so small delays add up along with frustration. ([eldh/invisible-details ¶some-product-and-engineering], [slack/incremental-boot ¶loading-one-second-faster])
- **App UI:** Show search results as soon as typing starts: query local cache and server at once, merge live, and stage inserts to avoid pop-in. A separate 'search the server' step pushes users to switch tasks while waiting. *Note: Announce result counts politely to screen readers and don't move focus as results merge.* ([apple/intuitive-search 11:50], [vohra/acquired-feel-like-a-game ¶it-is-also-simultaneously])
- **App UI:** For flow, make the next action obvious; after a user finishes an item, e.g. archives an email, show the next one instead of returning to the list. Hesitation kills flow; returning to the list forces a decision every time. ([vohra/beyond-gamification 11:38], [vohra/designing-for-flow ¶their-next-action-should])
- **App UI:** Pair a double-tap or double-click with a single action only when the single action is harmless and immediate, like select (single selects, double opens); otherwise avoid double actions. A competing single action must wait about half a second to see whether a second tap follows; a selection is correct either way. ([apple/designing-fluid-interfaces ¶tapping-to-show-the], [apple/touch-on-mac 3:10], [jain/software-must-lie 1:11])
- **App UI:** Render the user's current view first and load the rest of the data in the background. Slack cut time to visible content from about 7 s to under 5 s, and later view switches need no wait. ([slack/incremental-boot ¶slack-has-all-of])

## Keyboard and power-user feedback

- **App UI:** Give keyboard-initiated actions and overlays opened hundreds of times a day (command menus, app switchers, context menus, arrow-key highlights) feedback but no motion: change state instantly instead of animating it. At that frequency even snappy motion feels slow and disconnected; mouse and keyboard interactions can often skip motion without feeling jarring. *Note: Feedback yes, motion no: a shortcut still needs a visible result (see Acknowledge every action). For animation frequency in general, see the frequency rule in motion.md.* ([freiberg/invisible-details ¶if-we-for-a], [kowalski/great-animations ¶a-good-tip-here], [kowalski/you-dont-need-animations ¶if-it-animated-every])
- **App UI:** Make nearly every action keyboard-reachable, with single-key shortcuts for frequent ones and a Cmd/Ctrl+K command menu where users type to find any action and see its shortcut. Users knew what they wanted but forgot how; the palette teaches the shortcut for next time. *Note: Don't let single-key shortcuts fire while typing in a field, and let users turn off or remap them (WCAG 2.1.4).* ([eldh/invisible-details ¶you-can-take-almost], [vohra/acquired-feel-like-a-game ¶hundred-milliseconds-response-times], [vohra/beyond-gamification 13:10])
- **App UI:** Never drop or misroute fast input: buffer keystrokes so text typed straight after a shortcut, like C then a name, lands in the new field. Ignored inputs feel like a fighting game ignoring half your moves. ([vohra/beyond-gamification 8:02])
- **App UI:** On menu selection, briefly blink the chosen item in the accent color, then subtly fade the menu out. The blink assures the selection succeeded; the fade is more graceful than vanishing. *Note: Keep it to a single short blink, well under three flashes per second.* ([freiberg/invisible-details ¶the-selected-item-briefly])
- **App UI:** If a shortcut chord completes quickly, act immediately and skip the intermediate overlay. A quick Cmd-Tab focuses the previous window without ever showing the switcher. ([freiberg/invisible-details ¶the-previously-active-window])
- **App UI:** Make inputs forgiving: accept loose text like '3d' or '8am in Tokyo' and do your best to interpret it. Forgiving inputs invite playful exploration and pleasant surprise. *Note: Echo the interpreted value (e.g. the resolved date) so users can confirm it.* ([vohra/beyond-gamification 9:07])

## Waits, loading and progress

- **App UI:** Fill unavoidable waits with loading messages or a little humor instead of a blank screen, as a stopgap, and still minimize time spent on them. It eases idle time, but getting users back to their work matters most. ([buell-norton/labor-illusion ¶p2], [saffer/microinteractions 9:23], [slack/easter-eggs ¶the-custom-loading-messages], [slack/incremental-boot ¶seeing-these-messages-is])
- **App UI:** Make progress indicators carry real information: keep a bar for remaining time, show task counts on the trigger like Chrome downloads, match spinner segments to running processes. Reliable information about the wait reduces its cost, and users don't have to go look. ([buell-norton/labor-illusion ¶p3], [saffer/microinteractions 19:19])
- Use what's already on screen for feedback: turn the pressed submit button into the progress indicator and disable it until the action completes. It confirms the click, avoids adding a progress bar and prevents repeated attempts. *Note: Prefer aria-disabled plus aria-busy so focus isn't lost, and announce completion.* ([nngroup/disabled-buttons 2:31], [saffer/microinteractions 27:09])
- Use a faster-spinning spinner to make loading feel faster. The app seems to load faster even though load time is the same. *Note: Pair the spinner with text or a live-region status for screen readers.* ([kowalski/great-animations ¶fast-animations-improve-the], [kowalski/you-dont-need-animations ¶a-fasterspinning-spinner-makes])
- **App UI:** For operations users value for the effort, such as search aggregation, AI generation or analysis, show the work as it happens: each source searched, each criterion matched, results as found. Everywhere else, speed wins: never add delay to show effort. Seeing the work raises the perceived value of the result; hiding all of it undercommunicates value. *Note: Put the tally in a polite, throttled live region so screen readers aren't flooded.* ([buell-norton/labor-illusion ¶p2])
- **App UI:** Keep these transparent waits short and cut long ones: the benefit of showing work declined after ~30 s for flight search and ~15 s for dating search. Value drops as waits lengthen, and delays that look avoidable cause uncertainty and anger. *Note: Calibrate to what users expect from comparable services.* ([buell-norton/labor-illusion ¶p14])
- **App UI:** Prefer showing real operations over fabricated busywork, and don't spotlight effort when the result is likely poor. Visible effort followed by a bad result scored worst of all, as users blame the service; faking labor nears an ethical line and backfires if users notice. ([buell-norton/labor-illusion ¶p12])
- **From games:** Make unavoidable long waits feel alive with real activity or product-themed loaders rather than a raw elapsed-time counter. Real activity makes a wait feel alive rather than stalled. Source principle: Don't show a bare matchmaking counter; show a living world of others battling, and theme loading screens in the core metaphor without going over the top. *Note: Keep loader animation subtle and skip it under prefers-reduced-motion.* ([sakamoto/hearthstone-immersive-ui 2:55])

## Proportional feedback

- **From games:** Polish the most frequent core action (create, complete, send) before adding decoration; it should feel good in a plain build. Users repeat the core action constantly; decoration can't rescue it if it feels bad. Source principle: Polish the core input-to-response loop first; it should still feel fun with points, story, graphics and music stripped out, because game feel matters most. ([gmtk/game-feel-and-juice 1:01], [nijman/art-of-screenshake 5:39])
- **From games:** Put feedback where it serves the core task and hold back where it would hurt precision, e.g. no shake or bounce during dense data entry. Feedback that distracts from the task costs more than it adds. Source principle: Use juice to double down on what the game is about; in a jumping game, keep the camera still so players can land jumps. ([gmtk/game-feel-and-juice 4:34])
- **From games:** Reserve layered, multi-channel feedback for rare, important moments such as a first publish; routine actions get one small cue. Layering is memorable only when rare; on routine actions it becomes noise. Source principle: For a pivotal moment, throw every channel at it at once: take the camera away, turn the lights off, add sounds, turning a key beat cinematic. *Note: Respect prefers-reduced-motion, and keep any sound optional.* ([valve/half-life-documentary 0:34:30])
- **From games:** Show a click's result on the affected element itself, e.g. a brief flash or pulse that fades back, so the change is unmistakable. Feedback shows the change an input made; in product UI one clear cue on the right element usually suffices. Source principle: Make hits unmistakable by layering feedback: impact effect, white flash, small knockback, nearby blocks reacting and sound, aiming for maximum output for minimum input. *Note: Keep it to one short pulse, well under three flashes per second.* ([gmtk/game-feel-and-juice 3:10], [jonasson-purho/juice-it-or-lose-it 1:24], [nijman/art-of-screenshake 11:43])
- **App UI:** For occasional key interactions, compose layered sub-animations (send button rotates into a check, background expands, text springs in); repeated across the app, they add up to premium. Premium is felt more than seen; some of the best craft is invisible to most users. *Note: Respect prefers-reduced-motion, and keep layered effects short so they never delay the next action.* ([raroque/apps-feel-10x-better 1:31], [raroque/apps-feel-premium 13:31])
- **From games:** Make feedback for key outcomes large enough to see, build it from simple flashes and scale pulses, and scale it to the moment's importance. Simple, visible cues register; elaborate effects cost effort users never notice. Source principle: Make effects big, fast and cheap: chest-sized bullets, huge explosions that are just flashing circles; skip costly effects like shatter that nobody notices. ([gmtk/game-feel-and-juice 4:10], [jonasson-purho/juice-it-or-lose-it 11:26], [nijman/art-of-screenshake 10:25])
- **From games:** Polish small feedback details users won't consciously notice; they rarely credit good feedback but judge the product worse without it. Perceived quality comes from accumulated small responses, in software as in games. Source principle: Fill games with tiny details players don't consciously notice but feel; players won't say why, but without them they say the game sucks. ([jonasson-purho/juice-it-or-lose-it 1:56], [nijman/art-of-screenshake 15:07])
- **From games:** Keep sound off by default in productivity apps; where sound fits (mobile, rare celebrations), give it body, make it optional and time it to completion. Well-made sound adds weight cheaply where users expect it. Source principle: Make sound effects bassy and loud; a 12 dB bass boost turned an unpopular gun popular. Sound is the most cost-effective juice and is often ignored. *Note: Never rely on sound alone; pair it with a visual cue.* ([gmtk/game-feel-and-juice 3:32], [jonasson-purho/juice-it-or-lose-it 7:50], [nijman/art-of-screenshake 8:43])
- **App UI:** Pair motion with matching sound and haptics; tones that signal start, the sweet zone and done can guide users through a task. Results that are seen, heard and felt feel tactile; surgeons knew exactly when to act from the tone. *Note: Never rely on sound alone.* ([apple/designing-fluid-interfaces ¶by-combining-dynamic-behaviors], [saffer/microinteractions 12:30])
- **App UI:** On mobile, reserve haptics for confirmations, selection changes (e.g. switching tabs, picking a search result) and errors, light or heavy to match the action. Haptics feel satisfying only in the right places; overused, they annoy. *Note: Use platform haptic presets so system settings are respected, and never make haptics the only signal. iOS Safari has no Vibration API, so web apps can't rely on haptics.* ([raroque/app-design-process 9:29], [raroque/apps-feel-10x-better 5:20])
- **From games:** Reserve shake for rare, meaningful rejections such as a wrong password: a few pixels on one element, never the whole screen. A small shake reads instantly as 'that didn't take', for little effort. Source principle: Add screen shake on impacts, carefully; beyond random shake, kick the camera opposite the firing direction. It shows instantly that the player touched the world. *Note: Disable it under prefers-reduced-motion, and pair it with a text error message.* ([gmtk/game-feel-and-juice 2:40], [jonasson-purho/juice-it-or-lose-it 12:03], [nijman/art-of-screenshake 16:45])

## Physicality and touch

- **From games:** Let controls depress and spring back when triggered, and let dragged items tilt or lag slightly; keep amplitudes small. Small physical reactions make on-screen objects feel real and responsive. Source principle: Give objects physical reactions: guns kick back, landings kick up dust, a hit ball scales up and eases back, dragged cards tilt and swoosh. *Note: Honor prefers-reduced-motion.* ([gmtk/game-feel-and-juice 3:24], [jonasson-purho/juice-it-or-lose-it 5:58], [nijman/art-of-screenshake 19:54], [sakamoto/hearthstone-immersive-ui 10:33])
- **App UI:** Make touch feel attached: drag with the touch offset preserved, scale up on hold, scale down subtly on press, and cancel a tap dragged outside. Touch and content should move together, and users can change their mind mid-press. *Note: Re-highlight the control if the pointer moves back inside before release.* ([apple/designing-fluid-interfaces ¶we-should-respect-the], [apple/touch-on-mac 1:26], [kowalski/you-dont-need-animations ¶another-purposeful-animation-is])
- **App UI:** Rubber-band at scroll limits: past the edge, move content slower than the finger, then snap back on release; don't hard-stop or pad static space. A hard stop is indistinguishable from a frozen device. *Note: On the web, keep native scrolling and CSS scroll-snap; apply this only to custom drag surfaces.* ([apple/designing-fluid-interfaces ¶you-actually-wouldnt-know], [ording/rubber-band ¶when-he-got-to])

## Delight and restraint

- Make the product functional, reliable and usable before adding delight; confetti or snarky copy on a flawed product feels gimmicky. Deep delight comes from streamlined workflows and flow. ([apple/principles-of-great-design 16:05], [nngroup/theory-of-user-delight ¶only-when-a-product])
- Keep personality brief and attached to the task ('Howdy partner, ready to schedule your cookout?') and trustworthy; skip humor for serious brands. Personality differentiates, as Slack's did, but overbearing or gimmicky tone feels untrustworthy. ([nngroup/theory-of-user-delight ¶attempts-at-humor-animation], [slack/easter-eggs ¶while-also-being-trustworthy], [walter/designing-for-emotion 0:45:26])
- **App UI:** Use context as implicit input: offer a tracking code found on the clipboard, raise brightness for a scannable pass, quiet the fans during dictation. Inferring intent without asking feels magical and pleasantly surprises users. *Note: Make suggestions easy to cancel or change, and ask before reading the clipboard where the platform requires it.* ([freiberg/invisible-details ¶when-an-interface-makes], [raroque/apps-feel-premium 11:43], [saffer/microinteractions 9:39])
- **App UI:** Amplify moments of natural accomplishment lightly: after an effortful, irreversible action like sending a campaign, show a short message and a high-five animation. Matching the emotion of the moment, especially near a journey's end, is what people remember. *Note: Contrast with tacked-on confetti: celebrate rare, real milestones, not routine actions.* ([nngroup/theory-of-user-delight ¶subtle-animations-help-to], [vohra/acquired-feel-like-a-game ¶find-the-lighttouch-ways], [walter/designing-for-emotion 0:52:22])
- **App UI:** Don't bolt points, badges or levels onto the product; add streaks or achievements only atop a working experience, as celebrations for those who earn them. Extrinsic rewards undermine intrinsic motivation; in one study rewards halved drawing time from 17% to 8%. *Note: This is about bolted-on points and badges. Leaderboards and badges suit products that already have a progress loop users care about; see the gamification rules in navigation-and-disclosure.md.* ([vohra/acquired-feel-like-a-game ¶game-design-is-not], [vohra/beyond-gamification 1:11])
- **App UI:** Give users concrete, achievable, rewarding goals like inbox zero, and reward completion with imagery chosen for specific emotions such as serenity or awe. It widens the emotional range beyond joy into love and surprise. ([vohra/acquired-feel-like-a-game ¶we-do-this-specifically], [vohra/beyond-gamification 5:00])
- **App UI:** Reward exploration with pleasant surprises: easter eggs behind a slash-command menu, or a 'Surprise me!' setting that plays a brief animation. Fun is a pleasant surprise; pleasure alone is not fun. ([slack/easter-eggs ¶you-found-a-whole], [vohra/acquired-feel-like-a-game ¶a-good-toy-is])
- **App UI:** When users enter painful information, acknowledge it with one empathetic sentence, e.g. 'We're sorry to hear about your loss.'. Acknowledging the moment makes people feel seen. ([walter/designing-for-emotion 0:48:53])

[apple/designing-fluid-interfaces ¶by-combining-dynamic-behaviors]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=By%20combining%20dynamic%20behaviors%20for%20motion
[apple/designing-fluid-interfaces ¶its-important-for-an]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=It%27s%20important%20for%20an%20interface%20to
[apple/designing-fluid-interfaces ¶its-not-just-swipes]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=It%27s%20not%20just%20swipes.%20It%27s%20taps%2C
[apple/designing-fluid-interfaces ¶tapping-to-show-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=tapping%20to%20show%20the%20app%20menu
[apple/designing-fluid-interfaces ¶we-should-respect-the]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=We%20should%20respect%20the%20relative%20position%2C
[apple/designing-fluid-interfaces ¶you-actually-wouldnt-know]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=you%20actually%20wouldn%27t%20know%20the%20difference
[apple/intuitive-search 11:50]: https://youtu.be/lx45sKEnZkU?t=710
[apple/principles-of-great-design 14:08]: https://youtu.be/Xa9L2yx_QH8?t=848
[apple/principles-of-great-design 16:05]: https://youtu.be/Xa9L2yx_QH8?t=965
[apple/touch-on-mac 10:56]: https://youtu.be/2cq3ytwLrLk?t=656
[apple/touch-on-mac 1:26]: https://youtu.be/2cq3ytwLrLk?t=86
[apple/touch-on-mac 3:10]: https://youtu.be/2cq3ytwLrLk?t=190
[buell-norton/labor-illusion ¶p12]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#page=12
[buell-norton/labor-illusion ¶p14]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#page=14
[buell-norton/labor-illusion ¶p2]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#page=2
[buell-norton/labor-illusion ¶p3]: https://www.hbs.edu/ris/Publication%20Files/Norton_Michael_The%20labor%20illusion%20How%20operational_f4269b70-3732-4fc4-8113-72d0c47533e0.pdf#page=3
[eldh/invisible-details ¶some-product-and-engineering]: https://linear.app/now/invisible-details#:~:text=Some%20product%20and%20engineering%20managers%20take
[eldh/invisible-details ¶you-can-take-almost]: https://linear.app/now/invisible-details#:~:text=You%20can%20take%20almost%20every%20action
[freiberg/invisible-details ¶if-we-for-a]: https://rauno.me/craft/interaction-design#:~:text=if%20we%20for%20a%20moment%20consider
[freiberg/invisible-details ¶the-previously-active-window]: https://rauno.me/craft/interaction-design#:~:text=the%20previously%20active%20window%20receives%20focus
[freiberg/invisible-details ¶the-selected-item-briefly]: https://rauno.me/craft/interaction-design#:~:text=the%20selected%20item%20briefly%20blinks%20the
[freiberg/invisible-details ¶when-an-interface-makes]: https://rauno.me/craft/interaction-design#:~:text=When%20an%20interface%20makes%20use%20of
[gmtk/game-feel-and-juice 1:01]: https://youtu.be/216_5nu4aVQ?t=61
[gmtk/game-feel-and-juice 2:40]: https://youtu.be/216_5nu4aVQ?t=160
[gmtk/game-feel-and-juice 3:10]: https://youtu.be/216_5nu4aVQ?t=190
[gmtk/game-feel-and-juice 3:24]: https://youtu.be/216_5nu4aVQ?t=204
[gmtk/game-feel-and-juice 3:32]: https://youtu.be/216_5nu4aVQ?t=212
[gmtk/game-feel-and-juice 4:10]: https://youtu.be/216_5nu4aVQ?t=250
[gmtk/game-feel-and-juice 4:21]: https://youtu.be/216_5nu4aVQ?t=261
[gmtk/game-feel-and-juice 4:34]: https://youtu.be/216_5nu4aVQ?t=274
[jain/beginner-mistakes 5:39]: https://youtu.be/AH_ugxmLeUM?t=339
[jain/every-ui-concept 7:31]: https://youtu.be/EcbgbKtOELY?t=451
[jain/macos-apps 6:46]: https://youtu.be/Vy0KKvZJRH8?t=406
[jain/software-must-lie 1:11]: https://youtu.be/S8DcTJm8pYM?t=71
[jain/tiktok-ux 4:06]: https://youtu.be/ixUq4HM4FNg?t=246
[jonasson-purho/juice-it-or-lose-it 0:53]: https://youtu.be/Fy0aCDmgnxg?t=53
[jonasson-purho/juice-it-or-lose-it 11:26]: https://youtu.be/Fy0aCDmgnxg?t=686
[jonasson-purho/juice-it-or-lose-it 12:03]: https://youtu.be/Fy0aCDmgnxg?t=723
[jonasson-purho/juice-it-or-lose-it 1:15]: https://youtu.be/Fy0aCDmgnxg?t=75
[jonasson-purho/juice-it-or-lose-it 1:24]: https://youtu.be/Fy0aCDmgnxg?t=84
[jonasson-purho/juice-it-or-lose-it 1:56]: https://youtu.be/Fy0aCDmgnxg?t=116
[jonasson-purho/juice-it-or-lose-it 5:58]: https://youtu.be/Fy0aCDmgnxg?t=358
[jonasson-purho/juice-it-or-lose-it 7:50]: https://youtu.be/Fy0aCDmgnxg?t=470
[kowalski/great-animations ¶a-good-tip-here]: https://emilkowal.ski/ui/great-animations#:~:text=A%20good%20tip%20here%20is%20to
[kowalski/great-animations ¶fast-animations-improve-the]: https://emilkowal.ski/ui/great-animations#:~:text=Fast%20animations%20improve%20the%20perceived%20performance.
[kowalski/you-dont-need-animations ¶a-fasterspinning-spinner-makes]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=a%20faster%2Dspinning%20spinner%20makes%20the%20app
[kowalski/you-dont-need-animations ¶another-purposeful-animation-is]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=Another%20purposeful%20animation%20is%20this%20subtle
[kowalski/you-dont-need-animations ¶if-it-animated-every]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=If%20it%20animated%20every%20time%20I
[nijman/art-of-screenshake 10:25]: https://youtu.be/AJdEqssNZ-U?t=625
[nijman/art-of-screenshake 11:43]: https://youtu.be/AJdEqssNZ-U?t=703
[nijman/art-of-screenshake 12:15]: https://youtu.be/AJdEqssNZ-U?t=735
[nijman/art-of-screenshake 13:07]: https://youtu.be/AJdEqssNZ-U?t=787
[nijman/art-of-screenshake 14:27]: https://youtu.be/AJdEqssNZ-U?t=867
[nijman/art-of-screenshake 15:07]: https://youtu.be/AJdEqssNZ-U?t=907
[nijman/art-of-screenshake 16:45]: https://youtu.be/AJdEqssNZ-U?t=1005
[nijman/art-of-screenshake 19:54]: https://youtu.be/AJdEqssNZ-U?t=1194
[nijman/art-of-screenshake 5:39]: https://youtu.be/AJdEqssNZ-U?t=339
[nijman/art-of-screenshake 8:43]: https://youtu.be/AJdEqssNZ-U?t=523
[nngroup/disabled-buttons 2:31]: https://youtu.be/uEjidraxhAw?t=151
[nngroup/theory-of-user-delight ¶attempts-at-humor-animation]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=attempts%20at%20humor%2C%20animation%20or%20other
[nngroup/theory-of-user-delight ¶only-when-a-product]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=Only%20when%20a%20product%20is%20functional%2C
[nngroup/theory-of-user-delight ¶subtle-animations-help-to]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=subtle%20animations%20help%20to%20reassure%20the
[ording/rubber-band ¶when-he-got-to]: https://www.cultofmac.com/news/bas-ording-rubber-band-effect-iphone#:~:text=when%20he%20got%20to%20the%20bottom
[raroque/app-design-process 9:29]: https://youtu.be/H0czeRyXPxA?t=569
[raroque/apps-feel-10x-better 1:31]: https://youtu.be/8mMH6Pq8qnE?t=91
[raroque/apps-feel-10x-better 5:20]: https://youtu.be/8mMH6Pq8qnE?t=320
[raroque/apps-feel-premium 0:53]: https://youtu.be/MXLF8b15GhQ?t=53
[raroque/apps-feel-premium 11:43]: https://youtu.be/MXLF8b15GhQ?t=703
[raroque/apps-feel-premium 13:31]: https://youtu.be/MXLF8b15GhQ?t=811
[saffer/microinteractions 12:30]: https://youtu.be/9CEtqnPdWoI?t=750
[saffer/microinteractions 19:19]: https://youtu.be/9CEtqnPdWoI?t=1159
[saffer/microinteractions 25:18]: https://youtu.be/9CEtqnPdWoI?t=1518
[saffer/microinteractions 27:09]: https://youtu.be/9CEtqnPdWoI?t=1629
[saffer/microinteractions 27:45]: https://youtu.be/9CEtqnPdWoI?t=1665
[saffer/microinteractions 9:23]: https://youtu.be/9CEtqnPdWoI?t=563
[saffer/microinteractions 9:39]: https://youtu.be/9CEtqnPdWoI?t=579
[sakamoto/hearthstone-immersive-ui 10:33]: https://youtu.be/axkPXCNjOh8?t=633
[sakamoto/hearthstone-immersive-ui 2:55]: https://youtu.be/axkPXCNjOh8?t=175
[slack/easter-eggs ¶the-custom-loading-messages]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=The%20custom%20loading%20messages%20also%20existed
[slack/easter-eggs ¶while-also-being-trustworthy]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=while%20also%20being%20trustworthy%20and%20feeling
[slack/easter-eggs ¶you-found-a-whole]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=you%20found%20a%20whole%20treasure%20chest
[slack/incremental-boot ¶loading-one-second-faster]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=Loading%20one%20second%20faster%20may%20not
[slack/incremental-boot ¶seeing-these-messages-is]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=Seeing%20these%20messages%20is%20certainly%20better
[slack/incremental-boot ¶slack-has-all-of]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=Slack%20has%20all%20of%20the%20data
[valve/half-life-documentary 0:14:14]: https://youtu.be/TbZ3HzvFEto?t=854
[valve/half-life-documentary 0:15:09]: https://youtu.be/TbZ3HzvFEto?t=909
[valve/half-life-documentary 0:16:36]: https://youtu.be/TbZ3HzvFEto?t=996
[valve/half-life-documentary 0:34:30]: https://youtu.be/TbZ3HzvFEto?t=2070
[vohra/acquired-feel-like-a-game ¶a-good-toy-is]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=A%20good%20toy%20is%20an%20object
[vohra/acquired-feel-like-a-game ¶find-the-lighttouch-ways]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=find%20the%20light%2Dtouch%20ways%20to%20just
[vohra/acquired-feel-like-a-game ¶game-design-is-not]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=Game%20design%20is%20not%20gamification.%20It
[vohra/acquired-feel-like-a-game ¶hundred-milliseconds-response-times]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=hundred%20milliseconds%20response%20times%2C%20instantaneous%20search%2C
[vohra/acquired-feel-like-a-game ¶it-is-also-simultaneously]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=it%20is%20also%20simultaneously%20searching%20in
[vohra/acquired-feel-like-a-game ¶superhuman-browser-app-is]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=Superhuman%20browser%20app%20is%20faster%20than
[vohra/acquired-feel-like-a-game ¶we-do-this-specifically]: https://www.acquired.fm/episodes/special-superhuman-part-ii-designing-software-to-feel-like-a-game-with-rahul-vohra#:~:text=We%20do%20this%20specifically%20to%20widen
[vohra/beyond-gamification 11:38]: https://youtu.be/zaxAdRlyZQ8?t=698
[vohra/beyond-gamification 13:10]: https://youtu.be/zaxAdRlyZQ8?t=790
[vohra/beyond-gamification 1:11]: https://youtu.be/zaxAdRlyZQ8?t=71
[vohra/beyond-gamification 5:00]: https://youtu.be/zaxAdRlyZQ8?t=300
[vohra/beyond-gamification 8:02]: https://youtu.be/zaxAdRlyZQ8?t=482
[vohra/beyond-gamification 8:29]: https://youtu.be/zaxAdRlyZQ8?t=509
[vohra/beyond-gamification 9:07]: https://youtu.be/zaxAdRlyZQ8?t=547
[vohra/designing-for-flow ¶milliseconds-matter-they-may]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=Milliseconds%20matter.%20They%20may%20not%20seem
[vohra/designing-for-flow ¶their-next-action-should]: https://blog.superhuman.com/how-to-design-for-flow/#:~:text=their%20next%20action%20should%20always%20be
[walter/designing-for-emotion 0:45:26]: https://youtu.be/2umE6CHfHYc?t=2726
[walter/designing-for-emotion 0:48:53]: https://youtu.be/2umE6CHfHYc?t=2933
[walter/designing-for-emotion 0:52:22]: https://youtu.be/2umE6CHfHYc?t=3142
