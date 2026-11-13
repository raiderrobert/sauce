# Mobile and desktop apps

Platform-specific rules for mobile apps (thumb reach, navigation, layout, gestures, contextual actions) and native-feeling desktop apps.

Practitioner heuristics, not standards: accessibility requirements (WCAG contrast, keyboard access, `prefers-reduced-motion`) and the product's own design system take precedence. Within a section, rules backed by more videos come first, and a base rule comes before its exceptions. **App UI** marks rules for product screens only, **Marketing** for landing pages and websites only; untagged rules apply to both. *Note:* text is an uncited editorial caveat. Each citation (`author/video timestamp`) links to that moment in the source; the link definitions at the end of the file can be skipped, and full entries are in `references/bibliography.md`.

Contents: Thumb reach · Mobile navigation · Mobile screen layout · Gestures and feedback · Contextual mobile actions · Native-feeling desktop apps

## Thumb reach

- Place important controls and frequent actions at the bottom and along the right side, inside the thumb zone; make the most frequent action's target as large and close to the thumb as possible. Speed depends on target size and distance; the right side serves the 70-80% who are right-handed. ([jain/spotify-wrapped-redesign 1:40], [jain/tiktok-ux 4:57])

## Mobile navigation

- Use a bottom tab bar (often floating) when navigation fits a few key icons: five links at most, three or four ideally. Keeps every tap target above 44px. ([jain/mobile-app-ui 0:27])
- Don't make the tab bar's add button stick up in a circle; keep it inline with the other tabs unless it is truly the main action. Users tap other tabs far more than add. ([jain/crucial-ui-elements 0:34], [jain/mobile-app-ui 0:27])
- Give the active tab a distinct state (e.g. swap to a filled icon), and keep inactive tab icons clearly visible rather than dimmed to near-invisibility. The active indicator already shows the selection. ([jain/crucial-ui-elements 1:04])
- When there are too many important nav items for a bottom bar, turn the sidebar into a home page of links, balanced with recent items on top, counts on the right, and a big search bar or primary button at the bottom. A lopsided list feels unfinished. ([jain/mobile-app-ui 0:59])
- Use bottom sheets for secondary tasks, such as picking a template, to keep the user in context. Keeps context and is easy to dismiss with a gesture. ([jain/mobile-app-ui 4:06])

## Mobile screen layout

- Lay out each mobile section in one direction: stack vertically or scroll horizontally, never both. Use horizontal scrollers for browsable sets of similar cards; stack content users must read in full. Desktop can use two directions; mobile can't. ([jain/mobile-app-ui 2:28], [jain/mobile-swipe-interactions 0:28])
- Don't shrink type and spacing to cram content on mobile; keep them similar to desktop or larger (base text ~17px on iOS versus ~13px on macOS). Text actually gets larger on smaller screens. ([jain/mobile-app-ui 1:32])
- Make each mobile screen do one thing with one primary content block (home excepted); add a page rather than a new layout. Mobile is too space-constrained for more. ([jain/mobile-app-ui 2:03])
- Build mobile screens from four blocks (cards, text/links, images, inputs), using cards to group content. Cards group content where mobile lacks room for white space. ([jain/mobile-app-ui 2:49])

## Gestures and feedback

- On touch devices, remove buttons that duplicate a gesture users already know (carousel arrows, tap-to-pause); for less familiar swipe actions, also offer a visible button or a long-press menu. Duplicate controls are clutter, but uninitiated users need a visible path. *Note: Keep a single-pointer alternative, e.g. arrows on keyboard focus and a pause control for autoplay.* ([jain/beginner-mistakes 5:05], [jain/mobile-swipe-interactions 1:50], [jain/spotify-wrapped-redesign 2:04])
- Use swipes to replace buttons, reveal context or trigger actions (e.g. swipe up to search), and teach users the swipe exists. Once learned, swiping is faster. *Note: Keep a tap-based alternative (button or menu) for each swipe action.* ([jain/mobile-app-ui 5:32], [jain/mobile-swipe-interactions 4:14])
- Reveal useful secondary actions on swipe left or right while keeping the primary action visible. ([jain/dashboard-flaws 3:38])
- Use swipe-to-confirm sliders for high-impact or irreversible actions like sending money or purchasing. It's far easier to tap a button by accident than to slide a slider across. *Note: Offer a single-pointer alternative, e.g. a press-and-hold or tap-then-confirm button.* ([jain/mobile-swipe-interactions 5:11])
- Make gestures show progress toward commit and stay reversible until release, as in pull-to-refresh and swipe-to-delete. Users can back out at any point. ([jain/software-must-lie 8:38])
- On long press, blur the rest of the screen, slightly enlarge the element, and show its actions or a preview. Long press is mobile's right-click. ([jain/mobile-app-ui 5:45])

## Contextual mobile actions

- Show actions only when needed: hide the nav bar in editors, reveal task-specific actions, and reduce selection sheets to a confirm button and an X. Limited space means actions can't all be persistent. ([jain/mobile-app-ui 6:03])
- Keep the product's core action (e.g. share) immediately and always visible. That action is why the product succeeds. ([jain/spotify-wrapped-redesign 1:31])

## Native-feeling desktop apps

- Make a desktop app a system available where it's needed, not a destination: design its popovers, extra windows and notifications too, keep utility apps focused on one job, and treat the app as a container for user content rather than a fixed-content page. The best desktop UX feels like it belongs on the computer, beyond the main window. ([jain/macos-apps 0:24])
- Open quick-capture panels with a global keyboard shortcut (like Spotlight or Raycast) and keep utility windows minimal: no traffic lights, just a drop area, an input and a few buttons. Users are mid-task in other apps; the window should get out of the way. ([jain/macos-apps 1:02])
- Integrate the window traffic lights into the top bar or sidebar, and keep the top ~50px of a Mac window uncluttered. That strip is used for dragging the window. ([jain/macos-apps 2:54])
- Show keyboard shortcut hints on buttons. ([jain/macos-apps 1:37])
- Support drag and drop of content both into and out of the app. Makes the app feel native. ([jain/macos-apps 7:24])

[jain/beginner-mistakes 5:05]: https://youtu.be/AH_ugxmLeUM?t=305
[jain/crucial-ui-elements 0:34]: https://youtu.be/gKM6b2EnW1k?t=34
[jain/crucial-ui-elements 1:04]: https://youtu.be/gKM6b2EnW1k?t=64
[jain/dashboard-flaws 3:38]: https://youtu.be/Ksx9C2-3yMo?t=218
[jain/macos-apps 0:24]: https://youtu.be/Vy0KKvZJRH8?t=24
[jain/macos-apps 1:02]: https://youtu.be/Vy0KKvZJRH8?t=62
[jain/macos-apps 1:37]: https://youtu.be/Vy0KKvZJRH8?t=97
[jain/macos-apps 2:54]: https://youtu.be/Vy0KKvZJRH8?t=174
[jain/macos-apps 7:24]: https://youtu.be/Vy0KKvZJRH8?t=444
[jain/mobile-app-ui 0:27]: https://youtu.be/Gfsd8NNuD9g?t=27
[jain/mobile-app-ui 0:59]: https://youtu.be/Gfsd8NNuD9g?t=59
[jain/mobile-app-ui 1:32]: https://youtu.be/Gfsd8NNuD9g?t=92
[jain/mobile-app-ui 2:03]: https://youtu.be/Gfsd8NNuD9g?t=123
[jain/mobile-app-ui 2:28]: https://youtu.be/Gfsd8NNuD9g?t=148
[jain/mobile-app-ui 2:49]: https://youtu.be/Gfsd8NNuD9g?t=169
[jain/mobile-app-ui 4:06]: https://youtu.be/Gfsd8NNuD9g?t=246
[jain/mobile-app-ui 5:32]: https://youtu.be/Gfsd8NNuD9g?t=332
[jain/mobile-app-ui 5:45]: https://youtu.be/Gfsd8NNuD9g?t=345
[jain/mobile-app-ui 6:03]: https://youtu.be/Gfsd8NNuD9g?t=363
[jain/mobile-swipe-interactions 0:28]: https://youtu.be/14h1VnkQvIc?t=28
[jain/mobile-swipe-interactions 1:50]: https://youtu.be/14h1VnkQvIc?t=110
[jain/mobile-swipe-interactions 4:14]: https://youtu.be/14h1VnkQvIc?t=254
[jain/mobile-swipe-interactions 5:11]: https://youtu.be/14h1VnkQvIc?t=311
[jain/software-must-lie 8:38]: https://youtu.be/S8DcTJm8pYM?t=518
[jain/spotify-wrapped-redesign 1:31]: https://youtu.be/goWOAFqJHpA?t=91
[jain/spotify-wrapped-redesign 1:40]: https://youtu.be/goWOAFqJHpA?t=100
[jain/spotify-wrapped-redesign 2:04]: https://youtu.be/goWOAFqJHpA?t=124
[jain/tiktok-ux 4:57]: https://youtu.be/ixUq4HM4FNg?t=297
