# Mobile and Desktop Apps

Platform-specific heuristics for mobile apps (thumb reach, navigation, layout, gestures) and native-feeling desktop apps.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Thumb reach and touch targets

- Place important controls and frequent action icons at the bottom and along the right side, inside the comfortable thumb zone. Easier to reach; right side serves the 70-80% who are right-handed. Top-placed controls only look good. ([jain/spotify-wrapped-redesign 1:40](https://youtu.be/goWOAFqJHpA?t=100), [jain/tiktok-ux 5:18](https://youtu.be/ixUq4HM4FNg?t=318))
- Keep mobile touch targets at least 44px; spread tab bar icons out to enlarge each one's tap area. People have fat fingers. ([jain/crucial-ui-elements 1:29](https://youtu.be/gKM6b2EnW1k?t=89), [jain/mobile-app-ui 0:45](https://youtu.be/Gfsd8NNuD9g?t=45))
- Make the most frequent action's target as large and as close to the thumb as possible. Action speed depends on target size and distance. ([jain/tiktok-ux 4:57](https://youtu.be/ixUq4HM4FNg?t=297))

## Mobile navigation

- Don't make the tab bar's add button stick up in a circle; put it inline with other tabs unless it's truly the main action. Users tap other tabs far more than add; breaking out only suits a dominant main action. ([jain/crucial-ui-elements 0:34](https://youtu.be/gKM6b2EnW1k?t=34), [jain/mobile-app-ui 0:27](https://youtu.be/Gfsd8NNuD9g?t=27))
- Use a bottom tab bar (often floating) when navigation consolidates to a few key icons; cap it at 5 links, 3 or 4 ideal. Keeps every tap target above 44px. ([jain/mobile-app-ui 0:27](https://youtu.be/Gfsd8NNuD9g?t=27))
- When too many important nav items exist for a bottom bar, turn the sidebar into a full home page. Too many items to fit in a bottom bar. ([jain/mobile-app-ui 0:59](https://youtu.be/Gfsd8NNuD9g?t=59))
- Balance a nav-list home page: recent items on top, counts/actions on the right, a big search bar or primary button at the bottom. So it doesn't feel lopsided. ([jain/mobile-app-ui 1:10](https://youtu.be/Gfsd8NNuD9g?t=70))
- Use bottom sheets for secondary tasks, such as picking a template, to keep the user in context. Keeps context and is easy to navigate with gestures. ([jain/mobile-app-ui 4:06](https://youtu.be/Gfsd8NNuD9g?t=246))

## Mobile screen layout

- Lay out each mobile section in one direction only: stack vertically or scroll horizontally off-page, never both; prefer horizontally scrolling cards over vertical stacks. Desktop can use two directions; mobile can't. ([jain/mobile-app-ui 2:28](https://youtu.be/Gfsd8NNuD9g?t=148), [jain/mobile-swipe-interactions 0:28](https://youtu.be/14h1VnkQvIc?t=28))
- Make each mobile screen do one thing with one primary content block (home excepted); add a new page rather than a new layout. Mobile is so space-constrained; avoid clutter. ([jain/mobile-app-ui 2:03](https://youtu.be/Gfsd8NNuD9g?t=123))
- Don't shrink type and spacing to cram content on mobile; keep them similar to desktop or larger. Normal apps keep type scale and spacing similar, even larger. ([jain/mobile-app-ui 1:32](https://youtu.be/Gfsd8NNuD9g?t=92))
- Add page indicators below swipeable card carousels. ([jain/mobile-swipe-interactions 1:09](https://youtu.be/14h1VnkQvIc?t=69))
- Treat the phone's edge as a horizon that shrinks items approaching it, signalling a swipeable spool of data. ([jain/mobile-swipe-interactions 1:25](https://youtu.be/14h1VnkQvIc?t=85))
- Use scrolling instead of tap-to-advance for story-style content. Scrolling makes way more sense. ([jain/spotify-wrapped-redesign 1:20](https://youtu.be/goWOAFqJHpA?t=80))

## Gestures and feedback

- Remove buttons that duplicate a gesture your audience already knows, like carousel arrows or tap-to-pause buttons. Visual clutter when the gesture is an established convention; keep buttons where the gesture isn't obvious. ([jain/beginner-mistakes 5:05](https://youtu.be/AH_ugxmLeUM?t=305), [jain/spotify-wrapped-redesign 2:04](https://youtu.be/goWOAFqJHpA?t=124))
- Use swipes to replace buttons, reveal context or trigger actions like swipe-up-to-search, and teach users they exist. Once learned, swiping is faster and more seamless; swipes are everywhere in modern apps. ([jain/mobile-app-ui 5:32](https://youtu.be/Gfsd8NNuD9g?t=332), [jain/mobile-swipe-interactions 4:14](https://youtu.be/14h1VnkQvIc?t=254))
- Pair swipe-only actions with a visible button or a long-press menu for the same action. Swipes are intuitive, but the uninitiated need other options. ([jain/mobile-swipe-interactions 1:50](https://youtu.be/14h1VnkQvIc?t=110))
- Let users swipe to dismiss popovers, bottom sheets and pages, with buttons as a fallback. Quick and intuitive; buttons cover cases where it isn't obvious. ([jain/mobile-swipe-interactions 4:46](https://youtu.be/14h1VnkQvIc?t=286))
- Reveal useful secondary actions on swipe left/right while keeping the primary action visible. ([jain/dashboard-flaws 3:38](https://youtu.be/Ksx9C2-3yMo?t=218))
- Use swipe-to-confirm sliders for high-impact or irreversible actions like sending or purchasing. It's much easier to accidentally click a button than slide a slider across. ([jain/mobile-swipe-interactions 5:11](https://youtu.be/14h1VnkQvIc?t=311))
- Make gestures show progress toward commit and stay reversible until release, as in pull-to-refresh and swipe-to-delete. Users can reverse their decision at any point. ([jain/software-must-lie 8:38](https://youtu.be/S8DcTJm8pYM?t=518))
- On long press, blur the rest of the screen, slightly zoom the element, and show its actions or a preview. Long press is the mobile equivalent of right click. ([jain/mobile-app-ui 5:45](https://youtu.be/Gfsd8NNuD9g?t=345))
- Skip hover states on mobile; add press states instead, such as a slightly darker gray on press. No hover on mobile; press feedback feels like pressing into something. ([jain/color-mistakes 6:40](https://youtu.be/EOcY3hPMQkk?t=400))

## Contextual mobile actions

- Show actions only when needed: hide the nav bar in editors, reveal task-specific actions, and reduce selection sheets to a confirm button and an X. Limited space means actions can't always be persistent. ([jain/mobile-app-ui 6:03](https://youtu.be/Gfsd8NNuD9g?t=363))
- Keep the product's core action, such as share, immediately and always visible. That action is the reason the product succeeds. ([jain/spotify-wrapped-redesign 1:31](https://youtu.be/goWOAFqJHpA?t=91))
- Make the plus button open a small menu or an input where users can immediately start typing. ([jain/mobile-app-ui 4:25](https://youtu.be/Gfsd8NNuD9g?t=265))

## Native-feeling desktop apps

- Make a desktop app a system available where you need it, not a destination; design popovers, extra windows and notifications too. The best UX feels like it belongs on your computer, beyond the main window. ([jain/macos-apps 0:24](https://youtu.be/Vy0KKvZJRH8?t=24))
- Open quick-capture panels with a global keyboard shortcut; have them appear on demand and get out of the way, like Spotlight or Raycast. Users are mid-task in other apps. ([jain/macos-apps 1:02](https://youtu.be/Vy0KKvZJRH8?t=62))
- Keep utility windows minimal: drop the traffic lights; include only a drop area, an input and a few buttons. The window should stay out of the way. ([jain/macos-apps 1:27](https://youtu.be/Vy0KKvZJRH8?t=87))
- Show keyboard shortcut hints on buttons. ([jain/macos-apps 1:37](https://youtu.be/Vy0KKvZJRH8?t=97))
- Use the standard layout: top bar for global actions, sidebar for navigation, main content in the center. Apple's utility apps all share this layout. ([jain/macos-apps 2:42](https://youtu.be/Vy0KKvZJRH8?t=162))
- Integrate the window traffic lights into the top bar or sidebar, and keep the top ~50px of a Mac window uncluttered. That area is used for window dragging and lets the UI breathe. ([jain/macos-apps 2:54](https://youtu.be/Vy0KKvZJRH8?t=174))
- Design apps as containers for user content, not like landing pages with fixed content. Apps hold information users add and manipulate. ([jain/macos-apps 2:23](https://youtu.be/Vy0KKvZJRH8?t=143))
- Keep utility apps simple and focused on doing one thing well. The UI can stay hyperfocused. ([jain/macos-apps 2:48](https://youtu.be/Vy0KKvZJRH8?t=168))
- Support drag and drop of content both into and out of the app. Makes the experience feel effortless. ([jain/macos-apps 7:24](https://youtu.be/Vy0KKvZJRH8?t=444))
- Provide a floating action bar or share button for common item actions like copy, find and delete. Keeps frequent actions easy to access. ([jain/macos-apps 7:52](https://youtu.be/Vy0KKvZJRH8?t=472))
