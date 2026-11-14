# Mobile and desktop apps

Platform-specific rules for mobile apps (thumb reach, navigation, layout, gestures, contextual actions), native-feeling desktop apps, touch on Mac, and adapting layouts across devices.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a product-UI rule translated from a game-design principle (the principle is in the links file), untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. *(Editorial.)* = a rule with no source. Citations are `author/source locator` (a timestamp, a ¶ passage anchor, or ¶p and a PDF page); their links are in `references/links/mobile-and-desktop.md`.

Contents: Thumb reach · Mobile navigation · Mobile screen layout · Gestures and feedback · Contextual mobile actions · Native-feeling desktop apps · Touch on Mac · Across screen sizes

## Thumb reach

- In mobile apps, place important controls and frequent actions at the bottom and along the right side, inside the thumb zone; make the most frequent action's target as large and close to the thumb as possible. Speed depends on target size and distance; the right side suits right-handed users, the majority. ([jain/spotify-wrapped-redesign 1:40], [jain/tiktok-ux 4:57])

## Mobile navigation

- Use a bottom tab bar (often floating, as of 2026) when navigation fits a few key icons: five links at most, three or four ideally. Keeps every tap target above 44px. ([jain/mobile-app-ui 0:27])
- Give the active tab a distinct state (e.g. the theme color with a filled icon), and keep inactive tab icons clearly visible, at about 60-70% opacity with outline icons, rather than dimmed to near-invisibility (see also navigation-and-disclosure.md § Tabs). The active indicator already shows the selection; below that range inactive tabs look disabled. *Note: Check that dimmed labels still reach 4.5:1 contrast against the bar.* ([jain/crucial-ui-elements 1:04], [kennedy/spendweek-redesign 6:35], [raroque/apps-feel-10x-better 8:13])
- Don't make the tab bar's add button stick up in a circle; keep it inline with the other tabs unless it is truly the main action. Users tap other tabs far more than add. ([jain/crucial-ui-elements 0:34], [jain/mobile-app-ui 0:27])
- When there are too many important nav items for a bottom bar, turn the sidebar into a home page of links, balanced with recent items on top, counts on the right, and a big search bar or primary button at the bottom; it is a titled home screen, not a menu (see also navigation-and-disclosure.md § Page structure and wayfinding). A lopsided list feels unfinished. ([jain/mobile-app-ui 0:59])
- **App UI:** On iOS, prefer putting search in the bottom toolbar (use the top toolbar when the bottom is occupied, e.g. by a sheet); for when a search screen opens the keyboard, see also navigation-and-disclosure.md § Search. In the bottom toolbar the field animates up over the keyboard, optimizing for reachability and keyboard input. ([apple/intuitive-search 3:22])
- Use bottom sheets for secondary tasks, such as picking a template, to keep the user in context. Keeps context and is easy to dismiss with a gesture. ([jain/mobile-app-ui 4:06])
- On mobile, keep the header condensed: move low-priority links (about, social) to the bottom, collapse page navigation into an expand/collapse menu, and for long sectioned content consider accordions over a dropdown. Users come for core details; a dropdown is compact, but with long content it means repeatedly scrolling back to the top. ([schoger/wss 11:35])

## Mobile screen layout

- Lay out each mobile section in one direction: stack vertically or scroll horizontally, never both. Desktop can use two directions; mobile can't. *Note: Editorial: horizontal scrollers suit browsable sets of similar cards; stack content users must read in full.* ([jain/mobile-app-ui 2:28], [jain/mobile-swipe-interactions 0:28])
- Make each mobile screen do one thing with one primary content block (home excepted); show subtasks on sub-screens, adding a page rather than a new layout. Mobile is too space-constrained for more. ([jain/mobile-app-ui 2:03], [kennedy/wodify-redesign 1:37])
- Don't shrink type and spacing to cram content on mobile; keep them similar to desktop or larger (base text ~17px on iOS versus ~13px on macOS). Text actually gets larger on smaller screens. ([jain/mobile-app-ui 1:32])
- Build mobile screens from four blocks (cards, text/links, images, inputs), using cards to group content. Cards group content where mobile lacks room for white space. ([jain/mobile-app-ui 2:49])
- On mobile, make buttons and almost all form controls full width minus about a 16px side margin, with buttons 44px tall. 44px is the smallest default iOS tap target; full width gives big, easy targets. ([kennedy/wodify-redesign 2:09])
- When a wide table has too much detail to fit on mobile, consider letting it scroll horizontally instead of stacking every column; hint the scroll by fading the content or cutting it off at the edge, and avoid view tabs that would interfere with existing tabs. Everything can't fit in one view; stacking every column can cause excessive scrolling, and a second tab set can be confusing. *Note: The table scrolls on one axis inside a vertically stacked page, consistent with the one-direction rule.* ([schoger/wss 12:30])
- **App UI:** Blur app contents in the app switcher when they may be sensitive, like medical records or bank statements. Conceals possibly sensitive data. ([freiberg/invisible-details ¶its-a-deliberate-attempt])

## Gestures and feedback

- Use swipes to replace buttons, reveal context or trigger actions (e.g. swipe up to search), teach users the swipe exists, and duplicate each gesture's action elsewhere, e.g. in a menu (for less familiar swipes, make that alternative visible; see the next rule). Once learned, swiping is faster. *Note: Keep a tap-based alternative (button or menu) for each swipe action.* ([apple/touch-on-mac 7:37], [jain/mobile-app-ui 5:32], [jain/mobile-swipe-interactions 4:14])
- For less familiar swipe actions, also offer a visible button or a long-press menu (for carousels, see also components-and-states.md § Cards and carousels). The uninitiated need a visible path, though swiping is faster once learned. ([jain/mobile-swipe-interactions 1:50])
- **App UI:** On touch screens, establish the pinch-zoom anchor where the fingers start (starting with fingers together picks it precisely), and apply zoom and rotate to the object under the fingers or cursor. Zooming is an act of precision; an anchor is easier and more precise to pick with fingers pinched together. ([apple/touch-on-mac 4:47], [freiberg/invisible-details ¶the-interface-needs-to])
- Reveal useful secondary actions on swipe left or right while keeping the primary action visible. ([jain/dashboard-flaws 3:38])
- On touch screens, use swipe-to-confirm sliders as the confirmation for high-impact or irreversible actions like sending money or purchasing (see also components-and-states.md § Overlays, destructive actions and saving). It's far easier to tap a button by accident than to slide a slider across. *Note: Offer a single-pointer alternative, e.g. a press-and-hold or tap-then-confirm button.* ([jain/mobile-swipe-interactions 5:11])
- Make gestures that commit an action, such as a delete or navigation, show progress toward commit and stay reversible until release, as in pull-to-refresh and swipe-to-delete (lightweight actions may fire mid-swipe; see also motion.md § Gestures and input timing). Users can back out at any point. *Note: For haptics on confirmations and errors, see also interaction-feel.md § Proportional feedback.* ([jain/software-must-lie 8:38])
- On long press, blur the rest of the screen, slightly enlarge the element, and show its actions or a preview. Long press is mobile's right-click. ([jain/mobile-app-ui 5:45])

## Contextual mobile actions

- Show actions only when needed: hide the nav bar in editors, reveal task-specific actions, and reduce selection sheets to a confirm button and an X. Limited space means actions can't all be persistent. ([jain/mobile-app-ui 6:03])
- Keep the product's core action (e.g. share) immediately and always visible. That action is why the product succeeds. ([jain/spotify-wrapped-redesign 1:31])

## Native-feeling desktop apps

- Make a desktop app a system available where it's needed, not a destination: design its popovers, extra windows and notifications too, keep utility apps focused on one job, and treat the app as a container for user content rather than a fixed-content page. The best desktop UX feels like it belongs on the computer, beyond the main window. ([jain/macos-apps 0:24])
- If the app has quick-capture panels, open them with a global keyboard shortcut (like Spotlight or Raycast) and keep utility windows minimal: no traffic lights, just a drop area, an input and a few buttons. Users are mid-task in other apps; the window should get out of the way. ([jain/macos-apps 1:02])
- Integrate the window traffic lights into the top bar or sidebar, and keep the top ~50px of a Mac window uncluttered. That strip is used for dragging the window. ([jain/macos-apps 2:54])
- If the app holds user content, support dragging it both into and out of the app. Makes the app feel native. ([jain/macos-apps 7:24])

## Touch on Mac

- **App UI:** Don't redesign a Mac app or drastically change its layout for touch; keep keyboard and mouse primary, and make it look identical on touch and non-touch Macs. Touch is secondary; a little touch polish still makes a big difference. ([apple/touch-on-mac 7:14])
- **App UI:** Allow modeless selection by click and tap, and on tap-and-hold show the context menu beside the item, dismissed once dragging starts. Tapping matches clicking, so users switch easily between trackpad and touch. *Note: For pairing a double tap with a single tap, see also interaction-feel.md § Speed and flow.* ([apple/touch-on-mac 2:42])
- **App UI:** Make custom gestures work with touch and trackpad (and possibly Magic Mouse) rather than touch only, using a modifier key where gestures conflict; support keyboard modifiers during touch drags, and don't rely on system gestures. Easily switching inputs on Mac is sometimes more important than parity with iOS; system gestures are controlled by macOS and unavailable to apps. ([apple/touch-on-mac 4:13])
- **App UI:** On touch-screen Macs, put dense, precise controls like inspectors and navigation sidebars at the window's left and right sides; reserve the center for coarse gestures like pan and pinch. Hands anchor on the display edge for precision but hang unsupported mid-screen. ([apple/touch-on-mac 6:29])
- **App UI:** Use 36pt touch targets on macOS (physically equal to 44pt on iOS) and FormStyle, whose rows default to 36pt, for list- and settings-based views; for non-framework controls, consider enlarging the invisible touch area rather than the control. Framework controls' touch targets are invisible, so layouts needn't change; very dense apps may keep small or mini controls as long as touch works. ([apple/touch-on-mac 9:17])
- **App UI:** Adapt to the invoking input: show slightly larger menu rows when opened by touch, keep hover affordances like carousel scroll arrows hidden where touch can already do the action, and don't require informational hover like tooltips to work with touch. Larger rows ease touch selection; hover actions that purely show information aren't required to work with touch. *Note: For accessibility, keep essential information out of hover-only tooltips so touch and keyboard users can still reach it.* ([apple/touch-on-mac 11:23])

## Across screen sizes

- Keep tablet and desktop experiences closely aligned, but give phones their own design for quick touch interactions; don't just scale mobile-first layouts up to desktop, and keep spacious, dispersed sections to a few. Each device deserves a solution that uses what makes it unique, and dispersed desktop content raises interaction cost and cognitive load. *Note: In product UI, plan a dedicated phone layout, splitting some screens, rather than shrinking the desktop or tablet layout.* ([apple/intuitive-search 7:57], [apple/principles-of-great-design 9:46], [nngroup/content-dispersion-mobile 1:02])
- **App UI:** Collapse the dashboard sidebar (e.g. behind a hamburger button) once it no longer fits, typically below 1024px; on phones, consider turning range toggles into dropdowns, stacking stat rows earlier, and keeping chart height while showing fewer x-axis items. A sidebar stops fitting at smaller widths; the AI-generated dashboard came out squishy with no responsive navigation. ([schoger/dashboard-with-ai 0:04:25])
