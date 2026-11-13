# Components and states

Component behavior and UI states: feedback, empty/loading/error states, buttons, chips, icons, cards, carousels, overlays, destructive actions, forms and AI interfaces.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, **From games** = a product-UI rule translated from the cited game-design Source principle, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/source locator`, a timestamp or a ¶ quote anchor) link to that moment or passage; definitions are at the end of the file.

Contents: Feedback and states · Empty, loading and error states · Buttons, chips and icons · Cards and carousels · Overlays, destructive actions and saving · Forms and inputs · AI interfaces · Search, menus and tabs

## Feedback and states

- Define interaction states up front, derived from the base color: hover slightly lighter or brighter, pressed slightly darker, disabled desaturated with text that stays readable in each theme (source: a light-gray fill with white text, which often isn't readable). Don't make active buttons look disabled (gray). On mobile, which has no hover, a slightly darker press state is enough. Otherwise state colors get picked at random at the end; small shifts read as hover, press and disabled, and users read gray as inactive. *Note: Sources differ on hover direction: one darkens the button slightly on hover and switches to a hand cursor. Either works if hover, pressed and selected stay distinguishable. For acknowledging every action, see interaction-feel.md.* ([jain/color-mistakes 6:16], [jain/every-ui-concept 7:35], [jain/micro-animations 0:22], [nngroup/button-states 0:38], [nngroup/disabled-buttons 1:27])
- Apply changes optimistically: show deletes or sends as done immediately and run the request in the background; where undo matters, briefly delay execution (e.g. a 5s send delay). Avoids awkward pauses while leaving time to undo. *Note: If the request fails, roll back the change and show an error message.* ([jain/dashboard-ui 7:45], [jain/macos-apps 1:57], [jain/software-must-lie 5:57])
- Design the product's hidden components and states as carefully as visible UI: drawers, modals, every tab's content, and any new-feature announcements. Dense products get much of their functionality from parts you can't see at first; these are the most often missed. ([jain/beginner-mistakes 0:55], [jain/dashboard-flaws 5:00], [jain/modern-layouts 3:54])
- Keep off and default states visually quiet and reserve color for changed or active states; mark the selected toggle option with a background highlight and gray out inactive options and default values in settings. Color is the signal that something changed; non-default values should catch the eye. ([jain/every-ui-concept 0:18], [jain/weirdly-perfect-ui 6:07])
- Use toasts to confirm changes made in a modal and to surface warnings and errors without taking over the screen; give them loading and success states, not just a slide-up. Users can't see the page behind a modal, and warnings are frequently missed. ([jain/dashboard-ui 5:16], [jain/micro-animations 1:52])
- Show selected states with a brighter, heavier border plus a soft glow behind (the source blurs a duplicate shape by about 24px). *Note: In CSS, e.g. box-shadow: 0 0 24px in the accent at low opacity. Give keyboard focus a separate indicator that reaches 3:1 against adjacent colors and looks different from selected.* ([jain/animated-sidebar 6:08])
- Mark keyboard focus with a visually obvious stroke, such as a thick white outline around the button, not a color change alone. Users expect a focus state, and color alone may not be perceived by people with visual impairments. *Note: Make the focus indicator look different from hover and selected, and keep it at 3:1 against adjacent colors.* ([nngroup/button-states 1:14])
- Don't disable submit until the form validates; let users click and show what's wrong. Disable only for unavailable actions, duplicate-submission prevention or running processes. Disabled buttons give no feedback, and validation can fail and leave users stuck. *Note: WCAG exempts disabled controls from contrast rules, but that exemption doesn't make them good UX.* ([nngroup/disabled-buttons 1:02])
- When a button must be disabled, keep it keyboard-focusable and announced by screen readers, and explain why it's disabled and how to proceed. More inclusive, and users otherwise can't tell what blocks them. *Note: On the web, use aria-disabled="true" instead of the disabled attribute so the button stays in the tab order.* ([nngroup/disabled-buttons 3:22])

## Empty, loading and error states

- Don't leave a list, dashboard or new object blank: show a message and a CTA that starts the first task, ideally with a custom illustration. Users aren't left staring at a blank screen and know the next step; illustrations add personality. ([jain/dashboard-ui 3:18], [jain/macos-apps 3:31], [jain/think-like-product-designer 0:42], [raroque/apps-feel-10x-better 2:49])
- On error, keep the user's input in the field for editing and offer likely fixes selectable in one step (e.g. the matching zip code for a city). Input is precious; low-effort recovery returns users to their workflow, and efficiency takes the most effort to score high on. ([nngroup/error-message-rubric 2:26], [nngroup/error-messages 1:00])
- Detect likely mistakes and warn before they happen, e.g. an email that mentions an attachment but has none. The worst error messages are the ones that don't exist; prevention beats recovery. ([nngroup/error-messages 1:15], [saffer/microinteractions 22:18])
- Keep loading indicators short, looping and fluid, and keep any decorative preloader short too, so users aren't waiting to see content (see also motion.md). People are impatient and the product should feel fast. ([jain/ai-startup-components 1:37], [jain/trendy-web-animations 1:57])
- **App UI:** For long-running actions (builds, deploys, integrations), show an informative loading state, then report success or error immediately, and remove the status message once the work completes. Users are never left guessing, and a permanent status message is unnecessary once everything finishes. ([jain/think-like-product-designer 1:28], [schoger/transistor 13:04])
- Use skeleton placeholders with a shimmer that match the final layout so content slots into place; keep controls that can't work yet (switcher, sidebar, composer) disabled until the data arrives. The layout feels alive while loading, and there's no sense opening a switcher with nothing to switch to. ([jain/ai-startup-components 4:45], [slack/incremental-boot ¶we-enable-the-user])
- For no-results states, show imagery, say that nothing matched and show the current search text, suggest alternatives for likely typos, and offer an exit action. A blank view leaves people wondering if the search ran; echoing the query helps them catch typos. ([apple/intuitive-search 14:45], [jain/mobile-app-ui 6:52])
- Match feedback tone to the message: no cheerful smiley on an empty or negative state, and no self-deprecating jokes in place of help when something fails. Cheer on bad news reads as mocking; users need help, not therapy, when things go wrong. ([saffer/microinteractions 29:11], [slack/easter-eggs ¶replace-it-with-something])
- **App UI:** If a newly created object is useless without contents (e.g. a team without members), prompt the logical next step after creating it, with an option to skip. A container without its contents is useless. ([jain/think-like-product-designer 2:27])

## Buttons, chips and icons

- Keep identical components identical everywhere: same size, radius, spacing, type and colors (e.g. back and skip buttons, one button shape across the product), and make things that look the same behave the same. Builds familiarity and trust and lets people predict what happens; inconsistent versions of one element feel amateur. ([apple/principles-of-great-design 7:55], [jain/beginner-mistakes 2:55], [jain/think-like-product-designer 3:46], [kennedy/wodify-redesign 4:11], [schoger/dashboard-with-ai 0:28:20], [schoger/designing-with-claude-code 0:13:40])
- Label icons unless they are universally known; add tooltips to unlabeled icons, and don't make users wait on tooltips to decode an icon-only action bar. Recognizing an icon doesn't mean guessing its action; otherwise users guess until the tooltip appears. *Note: Show tooltips on keyboard focus too.* ([jain/animated-sidebar 4:52], [jain/dashboard-flaws 6:14], [jain/weirdly-perfect-ui 4:04], [nngroup/icon-recognizability 1:50])
- Use the platform's standard icons for common actions; don't repurpose the trash can, and mark items complete with a checkbox, not an X. Repurposed icons break recognition from other software; an X implies the item gets deleted. ([apple/design-foundations 6:42], [apple/principles-of-great-design 7:25], [schoger/resolute 4:32])
- Don't make non-interactive elements look clickable: remove button styling from labels and titles, and skip hover states on items and table rows that aren't clickable. Misleading clickability makes the interface hard to anticipate. ([nngroup/theory-of-user-delight ¶everything-looks-misleadingly-clickable], [schoger/dashboard-with-ai 0:42:54], [schoger/transistor 7:30])
- **App UI:** Delay the first tooltip (~1s of hover), then show tooltips on adjacent items instantly, with no animation. The delay prevents accidental activation; after one wait, assume the user wants information on nearby controls. ([jain/micro-animations 4:25], [jain/software-must-lie 3:36], [kowalski/you-dont-need-animations ¶tooltips-should-have-a])
- Buttons do something, links go somewhere: use the matching native element and styling, and mark links that leave the app with an external-link icon. Screen readers announce the element type and users expect matching behavior. ([nngroup/buttons-vs-links 0:44], [schoger/transistor 8:00])
- Remove duplicate controls that do the same thing (e.g. two search bars); merge similar actions into one button with options (e.g. share slide, chapter or all). Two buttons that look like they do the same thing confuse users. ([jain/finance-dashboard-redesign 1:23], [jain/spotify-wrapped-redesign 6:14])
- Use chips for breadcrumbs and categories; if users can change a tag, let them swap it inline from its chip instead of a hidden menu. Chips are recognizable and expose functionality otherwise buried in a menu. ([jain/crucial-ui-elements 9:02], [jain/weirdly-perfect-ui 4:19])
- **App UI:** Open menus and popovers on press, not release, so users can press, drag and release on an item in one motion; leave ordinary buttons to confirm on release so users can cancel by moving off. Press-to-open saves a click; release-triggering gives every other button a built-in cancel. *Note: On the web, click already fires on release by default.* ([apple/designing-fluid-interfaces ¶but-we-shouldnt-confirm], [jain/software-must-lie 7:46])
- Style by hierarchy before semantics: only the primary action is bright; a non-primary destructive action gets secondary or tertiary styling, placed at a distance from nearby links such as a title link. A secondary button outshining Save, or automatic red, muddles hierarchy; distance avoids accidental clicks. *Note: Exception: in an explicit delete confirmation, Delete is the primary red button (see the dialog rule in Overlays, destructive actions and saving).* ([nngroup/principles-stripe 1:29], [schoger/transistor 8:31])
- Style badges alike everywhere: subtle background, no border, regular weight, smaller text than the rest of the UI. Put changing statuses in badges so they don't blend with titles. Bordered badges look heavy, and badges already take more surface area than plain text. *Note: Keep badge text at 4.5:1 against the badge background.* ([schoger/dashboard-with-ai 0:46:44], [schoger/resolute 13:56])
- Reach button height through padding, not a fixed height: about 36-38px with 14px text for standard buttons; form inputs and their buttons can go to 40-48px. Larger buttons with bigger text look clunky; inputs need room proportional to their font size. *Note: Sources differ: 36-38px suits dense app UI, 40-48px suits forms with larger type. On touch, keep targets at least 44pt or 48dp.* ([schoger/designing-with-claude-code 0:12:57], [schoger/transistor 10:57])
- Give secondary buttons a soft gray fill and dark text, or a small shadow and faint dark ring (e.g. 10% opacity) instead of a border, at the same height as neighboring buttons. A ring gives a crisper edge than a border but can make one button 2px taller than its neighbor. *Note: In Tailwind, e.g. shadow-xs ring-1 ring-gray-950/10.* ([schoger/designing-with-claude-code 0:13:56], [schoger/transistor 12:24])
- Distinguish chips from buttons by height and shape: make chips shorter than buttons (always thinner vertically) with rounded edges, and almost never in the primary CTA color; set chip vertical padding to a half or a quarter of the horizontal (e.g. 20px horizontal with 10px or 5px vertical). Too little background looks wrong; too much turns the chip into a button. *Note: Editorial: e.g. chips about 24px tall and fully rounded, buttons about 36-40px; on a 4px grid, 16px horizontal with 8px or 4px vertical.* ([jain/crucial-ui-elements 9:18])
- Set button horizontal padding to about twice the vertical padding. *Note: Editorial example: 12px vertical, 24px horizontal.* ([jain/every-ui-concept 7:21])
- For pill-shaped buttons and inputs, set the corner radius to half the height and the horizontal padding equal to the radius (48px tall: 24px radius, 24px padding). ([kennedy/advanced-ui-tips 10:59])
- Use ghost buttons (no background until hover) for sidebar links and secondary actions beside a primary. ([jain/every-ui-concept 7:05])
- Size icons to the text's line height (e.g. 24px) and tighten the gap to the text next to them. Most icons are too large. ([jain/every-ui-concept 6:56])

## Cards and carousels

- Show carousel dots for count and position with arrows beside them, but make the carousel draggable or give it large nav buttons rather than relying on tiny dots to navigate; keep controls legible over any image (e.g. on a dark blurred backing or below the image). On touch, swiping can replace the arrows, but keep them available on pointer devices; give any autoplay a visible pause control. Dots show how many items there are and where you are, but users can't be expected to hit tiny circles, a new image can hide overlaid controls, and some people mind the motion. *Note: For accessibility (WCAG 2.2.2), keep the pause control visible even where tap-to-pause is familiar, also pause rotation on hover and keyboard focus, and show arrows on keyboard focus. For rotation timing cues, see the auto-rotate rule in motion.md.* ([jain/beginner-mistakes 5:05], [jain/crucial-ui-elements 10:04], [jain/finance-dashboard-redesign 5:38], [jain/micro-animations 4:10], [jain/mobile-swipe-interactions 1:09], [jain/website-layouts 4:38])
- Use a carousel when you want to show every card but lack room, for about 3-10 items. Beyond 10 it's tedious to click through; choose another format. ([jain/skincare-redesign 4:31], [jain/website-layouts 7:49])
- Show minor card details as a single row of icons with values instead of labeled fields. Icons add context at a glance; labels make users read more and browse slower. ([jain/beginner-mistakes 3:43], [jain/ui-cheat-codes 5:11])
- Keep card titles outside the image, not overlaid, when images vary; standard image-plus-text cards work with any image (for when text must sit on an image, see also depth-and-polish.md). Overlay text only works with some images and colors; standard cards always work. ([jain/crucial-ui-elements 4:23], [jain/tesla-wannabe-redesign 4:05])
- On repeating cards, make the whole card the link (fade in an arrow on hover as the cue) and drop per-card CTA buttons; keep an explicit button only for a specific action like 'Try it out'. With many repeated cards, the whole card is the link anyway. ([jain/crucial-ui-elements 3:41])
- Drop field labels the content already implies, but keep them where values could be confused, like check-in versus check-out dates. If the UI can't imply a label it isn't clear enough; confusable values still need one. ([jain/ui-cheat-codes 4:42])
- Group related card data: stack paired fields (name over location) and right-align the secondary pair (price over rating). Makes the card read as structured information, not a flat list. ([jain/ui-cheat-codes 4:47])
- Design for imperfect content: truncate long names, and put a backing circle behind icons that sit over images. Real data breaks layouts built around ideal content. ([jain/genius-designer 3:12])

## Overlays, destructive actions and saving

- **App UI:** Pick the surface by task: a popover for simple, non-blocking context (display settings, sharing); a modal for focused tasks tied to the current page, including create forms with only a few fields; a new page only for permanent or very large context, always with a back button or breadcrumb. Popovers can be dismissed without consequence; modals keep users in place; sparse flyouts waste space. ([jain/dashboard-flaws 2:40], [jain/dashboard-ui 4:50], [jain/saas-vibe-code-mistakes 2:06])
- Give the primary button in dialogs to the non-destructive action, except in an explicit delete confirmation: there Delete is the primary red button and Cancel has no fill (ghost or outline). Users learn to trust the primary button; once they chose to delete, Cancel shouldn't compete. ([jain/think-like-product-designer 3:38], [jain/web-design-hacks 4:24])
- **App UI:** Skip confirmation modals for routine deletes: delete immediately and show an undo toast. Keep warning modals for truly irreversible actions, like a bulk email to 10,000 recipients or sending money. Confirmations make 99% of users confirm intended actions to protect 1%; undo protects everyone. ([apple/principles-of-great-design 2:49], [jain/software-must-lie 5:35])
- Give every optional or intrusive feature an off switch, and tell users how to turn it off. Even an annoying feature shouldn't ignore good UX. ([jain/unhinged-ui-upgrades 2:39])
- **App UI:** If the product autosaves an editor or low-risk settings, drop the save/cancel buttons and pair autosave with version history or another way back. Autosave removes cancel, so users need another way back. *Note: Not for billing, permissions or validated forms; those need an explicit save.* ([jain/software-must-lie 6:16])

## Forms and inputs

- Style input fields with an off-white background and a softened stroke that still reaches 3:1 against the background (source: 40% opacity, which often falls short). ([jain/crucial-ui-elements 7:35])
- On white backgrounds, an off-white or gray fill can replace the input border, with a darker placeholder; on gray backgrounds, use white inputs without shadows. Borders look busy, and a gray input with a drop shadow looks muddy. *Note: Differs from the stroke rule above: without a stroke, the fill itself must reach 3:1 against the background to mark the field (WCAG 1.4.11), which subtle grays usually miss; keep a stroke when in doubt.* ([schoger/bad-about 10:35], [schoger/tuple 7:31], [schoger/wp-pusher-checkout 2:07])
- On longer forms, put labels outside the inputs and use placeholders only for example values; size each input to the expected length of its content. Placeholder labels confuse users moving quickly through long forms; input length sets expectations before typing. *Note: Placeholder-as-label is tolerable only on tiny forms like sign-in, and still disappears on typing; keep a visible label for accessibility.* ([schoger/resolute 1:05], [schoger/wp-pusher-checkout 0:57])
- Put the add action inline at the end of short lists, dimmed until hover (e.g. 50% opacity) so it isn't mistaken for a list item. Users glance at the bottom of a short list to add, and scan it for duplicates first. *Note: Keep the dimmed label at 4.5:1 contrast and show the full state on keyboard focus.* ([kennedy/timezones-redesign 1:59], [schoger/resolute 6:06])
- Make hit areas larger than the visible control: add margin around tap targets and make checkbox labels clickable. Taps get more comfortable, fewer cancel when the touch moves, and users needn't aim for a tiny box. *Note: On the web, wrap the checkbox in its <label> or use for/id.* ([apple/designing-fluid-interfaces ¶the-next-thing-to], [nngroup/checkbox-design 0:33])
- Let short sliders and small steppers expand in place when touched, without changing the value on that tap; don't cancel a drag when the finger slides off. Short sliders lose accuracy, and small controls disappear under the finger. *Note: On the web, use setPointerCapture so a drag keeps tracking outside the element.* ([apple/touch-on-mac 14:05], [freiberg/invisible-details ¶ensure-that-the-dragging])
- **App UI:** Pair fixed date-range presets with a custom picker; show the chosen dates in a human-readable format rather than the word 'Custom', and let presets update them. ([kennedy/timezones-redesign 6:43], [schoger/dashboard-with-ai 0:15:40])
- Give inputs a warning state, distinct from the error state, for optional or non-blocking issues. Inputs need feedback even more than buttons do. ([jain/every-ui-concept 7:44])
- Make checkboxes square (not circles), list options vertically, word labels positively, and leave promotional or legal checkboxes unchecked by default. Circles read as radio buttons, negative labels add mental work, and consent must be explicit. ([nngroup/checkbox-design 0:20])
- Put form submit buttons in the same position on every form, left-aligned directly below the fields. Testing showed position mattered less than consistency; right-aligned buttons posed accessibility issues. *Note: Screen magnifier users can miss a right-aligned button far from the fields.* ([schoger/transistor 14:56])
- Don't start forms from zero: infer what you can, e.g. detect the card type from the number and guess the name from the email address. There's almost always something known about the user; every card type has a unique number prefix. ([saffer/microinteractions 15:34])

## AI interfaces

- **App UI:** If the product generates AI output, don't make users wait without feedback: stream responses word by word and show the work (steps taken, documents retrieved, sources cited), fading steps in one by one. Turns delay into anticipation and makes the AI feel like a collaborator, not a black box. ([jain/ai-startup-components 3:51])
- **App UI:** If the product is a prompt-based AI tool, lead with a large prompt box above the fold. Gets users trying the tool immediately. ([jain/ai-startup-components 0:20])
- **App UI:** If the product has an AI prompt box, preview attached PDFs and images inside it, and collapse large pastes such as code into compact, expandable blocks. Large inputs shouldn't take over the chat. ([jain/ai-startup-components 0:51])
- **App UI:** If the AI has broad use cases, let users switch modes with context chips (brainstorm, data, email); if it integrates with other tools, add buttons to attach context from sources like Google Drive or GitHub. Gives confidence the AI knows what is wanted and gets better answers. ([jain/ai-startup-components 1:03])
- **App UI:** If the product generates text with AI, support inline editing of the output: let users highlight part of a response and type the change, with a few quick selectors and keyboard shortcuts. Feels like revision rather than regeneration. ([jain/ai-startup-components 2:47])
- **App UI:** If the AI has persistent memory, expose it outside settings, e.g. in a dedicated panel, with whichever controls the product supports, such as storage usage, bulk delete and add-fact. Users must be able to see and control what is remembered. ([jain/ai-startup-components 2:26])
- **App UI:** If the model returns a real confidence score, show it on AI output as a pill label (e.g. 'High confidence', 'Unverified') that reveals the numeric score on click. AI output sounds confident even when it isn't. ([jain/ai-startup-components 5:12])
- **App UI:** If the product generates content with AI, anticipate unexpected or inaccurate output and add safeguards such as previews, confirmations and disclaimers. Model output can cause real-world harm. ([apple/principles-of-great-design 5:18])

## Search, menus and tabs

- Give in-page tabs a default selection marked prominently (e.g. a heavy colored underline); keep unselected tabs neutral with a hover style, not color-coded. A rainbow of tab colors hides which tab is selected; hover hints that tabs are clickable. ([nngroup/better-tabs 2:12], [nngroup/tabs-humble-powerful 1:05], [schoger/resolute 10:12], [schoger/wss 7:02])
- **App UI:** In bottom tab bars, split the width evenly; show inactive tabs at 60-70% opacity with outline icons, the active tab in the theme color with a filled icon. Below that range inactive tabs look disabled; changing icon weight adds depth beyond color. *Note: Check that dimmed labels still reach 4.5:1 contrast against the bar.* ([kennedy/spendweek-redesign 6:35], [raroque/apps-feel-10x-better 8:13])
- If every user must open a dropdown or type in search next, skip that step: show the options directly or put focus in the search field on arrival. Saves every user a click. *Note: Moving focus on load can disorient screen reader users; do it only where search is the screen's main purpose.* ([kennedy/wodify-redesign 3:51])
- Don't dead-end search: return a sensible default for an empty query, and broaden the parameters automatically when nothing matches. Avoids a 404-like page that just says nothing was found. *Note: Complements the no-results rule in Empty, loading and error states; say when results were broadened.* ([saffer/microinteractions 23:03])
- Keep a search field's core parts: a leading magnifying-glass icon, placeholder text saying what to search, and a clear button once text is entered; custom icons should resemble the standard ones. The magnifying glass is universally recognized as search. *Note: On iOS, also show Cancel while focused to exit search and dismiss the keyboard.* ([apple/intuitive-search 1:50])
- On focus, show a selective list of recent searches users can remove individually or clear all; keep predictive suggestions few, styling typed text differently from the predicted part. Recents get people back to results without typing; few suggestions keep results front and center. ([apple/intuitive-search 10:56])
- Show only filters relevant to the current search; use a scope bar for lightweight filtering, and offer search tokens alongside visible filters, not instead of them. Irrelevant filters overwhelm, and tokens are less discoverable. ([apple/intuitive-search 12:53])
- Let the pointer move diagonally to a submenu: keep it open while the pointer crosses a triangle between the cursor and the submenu, based on pointer position and speed. Otherwise the submenu closes before users reach it, forcing a slower upside-down L path. ([eldh/invisible-details ¶it-feels-more-natural], [jain/software-must-lie 3:02])

[apple/design-foundations 6:42]: https://youtu.be/dGcqqA3Sl-o?t=402
[apple/designing-fluid-interfaces ¶but-we-shouldnt-confirm]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=But%2C%20we%20shouldn%27t%20confirm%20the%20tap
[apple/designing-fluid-interfaces ¶the-next-thing-to]: https://developer.apple.com/videos/play/wwdc2018/803/#:~:text=The%20next%20thing%20to%20remember%20is
[apple/intuitive-search 10:56]: https://youtu.be/lx45sKEnZkU?t=656
[apple/intuitive-search 12:53]: https://youtu.be/lx45sKEnZkU?t=773
[apple/intuitive-search 14:45]: https://youtu.be/lx45sKEnZkU?t=885
[apple/intuitive-search 1:50]: https://youtu.be/lx45sKEnZkU?t=110
[apple/principles-of-great-design 2:49]: https://youtu.be/Xa9L2yx_QH8?t=169
[apple/principles-of-great-design 5:18]: https://youtu.be/Xa9L2yx_QH8?t=318
[apple/principles-of-great-design 7:25]: https://youtu.be/Xa9L2yx_QH8?t=445
[apple/principles-of-great-design 7:55]: https://youtu.be/Xa9L2yx_QH8?t=475
[apple/touch-on-mac 14:05]: https://youtu.be/2cq3ytwLrLk?t=845
[eldh/invisible-details ¶it-feels-more-natural]: https://linear.app/now/invisible-details#:~:text=It%20feels%20more%20natural%20to%20move
[freiberg/invisible-details ¶ensure-that-the-dragging]: https://rauno.me/craft/interaction-design#:~:text=ensure%20that%20the%20dragging%20gesture%20does
[jain/ai-startup-components 0:20]: https://youtu.be/If7iCPDy2vk?t=20
[jain/ai-startup-components 0:51]: https://youtu.be/If7iCPDy2vk?t=51
[jain/ai-startup-components 1:03]: https://youtu.be/If7iCPDy2vk?t=63
[jain/ai-startup-components 1:37]: https://youtu.be/If7iCPDy2vk?t=97
[jain/ai-startup-components 2:26]: https://youtu.be/If7iCPDy2vk?t=146
[jain/ai-startup-components 2:47]: https://youtu.be/If7iCPDy2vk?t=167
[jain/ai-startup-components 3:51]: https://youtu.be/If7iCPDy2vk?t=231
[jain/ai-startup-components 4:45]: https://youtu.be/If7iCPDy2vk?t=285
[jain/ai-startup-components 5:12]: https://youtu.be/If7iCPDy2vk?t=312
[jain/animated-sidebar 4:52]: https://youtu.be/NtZeYmTMuo4?t=292
[jain/animated-sidebar 6:08]: https://youtu.be/NtZeYmTMuo4?t=368
[jain/beginner-mistakes 0:55]: https://youtu.be/AH_ugxmLeUM?t=55
[jain/beginner-mistakes 2:55]: https://youtu.be/AH_ugxmLeUM?t=175
[jain/beginner-mistakes 3:43]: https://youtu.be/AH_ugxmLeUM?t=223
[jain/beginner-mistakes 5:05]: https://youtu.be/AH_ugxmLeUM?t=305
[jain/color-mistakes 6:16]: https://youtu.be/EOcY3hPMQkk?t=376
[jain/crucial-ui-elements 10:04]: https://youtu.be/gKM6b2EnW1k?t=604
[jain/crucial-ui-elements 3:41]: https://youtu.be/gKM6b2EnW1k?t=221
[jain/crucial-ui-elements 4:23]: https://youtu.be/gKM6b2EnW1k?t=263
[jain/crucial-ui-elements 7:35]: https://youtu.be/gKM6b2EnW1k?t=455
[jain/crucial-ui-elements 9:02]: https://youtu.be/gKM6b2EnW1k?t=542
[jain/crucial-ui-elements 9:18]: https://youtu.be/gKM6b2EnW1k?t=558
[jain/dashboard-flaws 2:40]: https://youtu.be/Ksx9C2-3yMo?t=160
[jain/dashboard-flaws 5:00]: https://youtu.be/Ksx9C2-3yMo?t=300
[jain/dashboard-flaws 6:14]: https://youtu.be/Ksx9C2-3yMo?t=374
[jain/dashboard-ui 3:18]: https://youtu.be/B7k5rOgmOGY?t=198
[jain/dashboard-ui 4:50]: https://youtu.be/B7k5rOgmOGY?t=290
[jain/dashboard-ui 5:16]: https://youtu.be/B7k5rOgmOGY?t=316
[jain/dashboard-ui 7:45]: https://youtu.be/B7k5rOgmOGY?t=465
[jain/every-ui-concept 0:18]: https://youtu.be/EcbgbKtOELY?t=18
[jain/every-ui-concept 6:56]: https://youtu.be/EcbgbKtOELY?t=416
[jain/every-ui-concept 7:05]: https://youtu.be/EcbgbKtOELY?t=425
[jain/every-ui-concept 7:21]: https://youtu.be/EcbgbKtOELY?t=441
[jain/every-ui-concept 7:35]: https://youtu.be/EcbgbKtOELY?t=455
[jain/every-ui-concept 7:44]: https://youtu.be/EcbgbKtOELY?t=464
[jain/finance-dashboard-redesign 1:23]: https://youtu.be/Yr2uIcFZDDQ?t=83
[jain/finance-dashboard-redesign 5:38]: https://youtu.be/Yr2uIcFZDDQ?t=338
[jain/genius-designer 3:12]: https://youtu.be/HE4rLEQpiXY?t=192
[jain/macos-apps 1:57]: https://youtu.be/Vy0KKvZJRH8?t=117
[jain/macos-apps 3:31]: https://youtu.be/Vy0KKvZJRH8?t=211
[jain/micro-animations 0:22]: https://youtu.be/ld1zhQMXxXU?t=22
[jain/micro-animations 1:52]: https://youtu.be/ld1zhQMXxXU?t=112
[jain/micro-animations 4:10]: https://youtu.be/ld1zhQMXxXU?t=250
[jain/micro-animations 4:25]: https://youtu.be/ld1zhQMXxXU?t=265
[jain/mobile-app-ui 6:52]: https://youtu.be/Gfsd8NNuD9g?t=412
[jain/mobile-swipe-interactions 1:09]: https://youtu.be/14h1VnkQvIc?t=69
[jain/modern-layouts 3:54]: https://youtu.be/VPeTgU7la34?t=234
[jain/saas-vibe-code-mistakes 2:06]: https://youtu.be/PDcQJOPby1k?t=126
[jain/skincare-redesign 4:31]: https://youtu.be/BvbFPzLjWcU?t=271
[jain/software-must-lie 3:02]: https://youtu.be/S8DcTJm8pYM?t=182
[jain/software-must-lie 3:36]: https://youtu.be/S8DcTJm8pYM?t=216
[jain/software-must-lie 5:35]: https://youtu.be/S8DcTJm8pYM?t=335
[jain/software-must-lie 5:57]: https://youtu.be/S8DcTJm8pYM?t=357
[jain/software-must-lie 6:16]: https://youtu.be/S8DcTJm8pYM?t=376
[jain/software-must-lie 7:46]: https://youtu.be/S8DcTJm8pYM?t=466
[jain/spotify-wrapped-redesign 6:14]: https://youtu.be/goWOAFqJHpA?t=374
[jain/tesla-wannabe-redesign 4:05]: https://youtu.be/V3Omp1hm0Sg?t=245
[jain/think-like-product-designer 0:42]: https://youtu.be/ADaQuZS04Rc?t=42
[jain/think-like-product-designer 1:28]: https://youtu.be/ADaQuZS04Rc?t=88
[jain/think-like-product-designer 2:27]: https://youtu.be/ADaQuZS04Rc?t=147
[jain/think-like-product-designer 3:38]: https://youtu.be/ADaQuZS04Rc?t=218
[jain/think-like-product-designer 3:46]: https://youtu.be/ADaQuZS04Rc?t=226
[jain/trendy-web-animations 1:57]: https://youtu.be/ZsP20PN14O0?t=117
[jain/ui-cheat-codes 4:42]: https://youtu.be/c1TvOcKdBVE?t=282
[jain/ui-cheat-codes 4:47]: https://youtu.be/c1TvOcKdBVE?t=287
[jain/ui-cheat-codes 5:11]: https://youtu.be/c1TvOcKdBVE?t=311
[jain/unhinged-ui-upgrades 2:39]: https://youtu.be/BUDipdbKK7Y?t=159
[jain/web-design-hacks 4:24]: https://youtu.be/Lp6ey4AyDzA?t=264
[jain/website-layouts 4:38]: https://youtu.be/P2ksReDwWkE?t=278
[jain/website-layouts 7:49]: https://youtu.be/P2ksReDwWkE?t=469
[jain/weirdly-perfect-ui 4:04]: https://youtu.be/neE6wOuBIP8?t=244
[jain/weirdly-perfect-ui 4:19]: https://youtu.be/neE6wOuBIP8?t=259
[jain/weirdly-perfect-ui 6:07]: https://youtu.be/neE6wOuBIP8?t=367
[kennedy/advanced-ui-tips 10:59]: https://youtu.be/-2vzMH8iqsg?t=659
[kennedy/spendweek-redesign 6:35]: https://youtu.be/LHs6vx4QEE4?t=395
[kennedy/timezones-redesign 1:59]: https://youtu.be/B4XHaboNMOI?t=119
[kennedy/timezones-redesign 6:43]: https://youtu.be/B4XHaboNMOI?t=403
[kennedy/wodify-redesign 3:51]: https://youtu.be/OdS7fOS7bTk?t=231
[kennedy/wodify-redesign 4:11]: https://youtu.be/OdS7fOS7bTk?t=251
[kowalski/you-dont-need-animations ¶tooltips-should-have-a]: https://emilkowal.ski/ui/you-dont-need-animations#:~:text=tooltips%20should%20have%20a%20slight%20delay
[nngroup/better-tabs 2:12]: https://youtu.be/hPxrudx1iXg?t=132
[nngroup/button-states 0:38]: https://youtu.be/3xfagjg5iRA?t=38
[nngroup/button-states 1:14]: https://youtu.be/3xfagjg5iRA?t=74
[nngroup/buttons-vs-links 0:44]: https://youtu.be/hb_QYE2itO4?t=44
[nngroup/checkbox-design 0:20]: https://youtu.be/fQz4lYns21Q?t=20
[nngroup/checkbox-design 0:33]: https://youtu.be/fQz4lYns21Q?t=33
[nngroup/disabled-buttons 1:02]: https://youtu.be/uEjidraxhAw?t=62
[nngroup/disabled-buttons 1:27]: https://youtu.be/uEjidraxhAw?t=87
[nngroup/disabled-buttons 3:22]: https://youtu.be/uEjidraxhAw?t=202
[nngroup/error-message-rubric 2:26]: https://youtu.be/ulA4Mbm6cJs?t=146
[nngroup/error-messages 1:00]: https://youtu.be/eOD2vbrNffc?t=60
[nngroup/error-messages 1:15]: https://youtu.be/eOD2vbrNffc?t=75
[nngroup/icon-recognizability 1:50]: https://youtu.be/B_EVgNHBalY?t=110
[nngroup/principles-stripe 1:29]: https://youtu.be/qooOXNmdCH4?t=89
[nngroup/tabs-humble-powerful 1:05]: https://youtu.be/7ntSojFW5Jg?t=65
[nngroup/theory-of-user-delight ¶everything-looks-misleadingly-clickable]: https://www.nngroup.com/articles/theory-user-delight/#:~:text=Everything%20looks%20misleadingly%20clickable%2C%20and%20the
[raroque/apps-feel-10x-better 2:49]: https://youtu.be/8mMH6Pq8qnE?t=169
[raroque/apps-feel-10x-better 8:13]: https://youtu.be/8mMH6Pq8qnE?t=493
[saffer/microinteractions 15:34]: https://youtu.be/9CEtqnPdWoI?t=934
[saffer/microinteractions 22:18]: https://youtu.be/9CEtqnPdWoI?t=1338
[saffer/microinteractions 23:03]: https://youtu.be/9CEtqnPdWoI?t=1383
[saffer/microinteractions 29:11]: https://youtu.be/9CEtqnPdWoI?t=1751
[schoger/bad-about 10:35]: https://youtu.be/S6-q5BheEYU?t=635
[schoger/dashboard-with-ai 0:15:40]: https://youtu.be/lQCWuOT5ENQ?t=940
[schoger/dashboard-with-ai 0:28:20]: https://youtu.be/lQCWuOT5ENQ?t=1700
[schoger/dashboard-with-ai 0:42:54]: https://youtu.be/lQCWuOT5ENQ?t=2574
[schoger/dashboard-with-ai 0:46:44]: https://youtu.be/lQCWuOT5ENQ?t=2804
[schoger/designing-with-claude-code 0:12:57]: https://youtu.be/lkKGQVHrXzE?t=777
[schoger/designing-with-claude-code 0:13:40]: https://youtu.be/lkKGQVHrXzE?t=820
[schoger/designing-with-claude-code 0:13:56]: https://youtu.be/lkKGQVHrXzE?t=836
[schoger/resolute 10:12]: https://youtu.be/BMHUKij1yUE?t=612
[schoger/resolute 13:56]: https://youtu.be/BMHUKij1yUE?t=836
[schoger/resolute 1:05]: https://youtu.be/BMHUKij1yUE?t=65
[schoger/resolute 4:32]: https://youtu.be/BMHUKij1yUE?t=272
[schoger/resolute 6:06]: https://youtu.be/BMHUKij1yUE?t=366
[schoger/transistor 10:57]: https://youtu.be/ZT4WRRhacWk?t=657
[schoger/transistor 12:24]: https://youtu.be/ZT4WRRhacWk?t=744
[schoger/transistor 13:04]: https://youtu.be/ZT4WRRhacWk?t=784
[schoger/transistor 14:56]: https://youtu.be/ZT4WRRhacWk?t=896
[schoger/transistor 7:30]: https://youtu.be/ZT4WRRhacWk?t=450
[schoger/transistor 8:00]: https://youtu.be/ZT4WRRhacWk?t=480
[schoger/transistor 8:31]: https://youtu.be/ZT4WRRhacWk?t=511
[schoger/tuple 7:31]: https://youtu.be/RC9cYdbQ-_c?t=451
[schoger/wp-pusher-checkout 0:57]: https://youtu.be/5gdYHlYAKDY?t=57
[schoger/wp-pusher-checkout 2:07]: https://youtu.be/5gdYHlYAKDY?t=127
[schoger/wss 7:02]: https://youtu.be/ZJj7uNdzPpM?t=422
[slack/easter-eggs ¶replace-it-with-something]: https://www.slackstory.com/p/easter-eggs-in-slack#:~:text=replace%20it%20with%20something%20more%20helpful
[slack/incremental-boot ¶we-enable-the-user]: https://slack.engineering/getting-to-slack-faster-with-incremental-boot/#:~:text=we%20enable%20the%20user%20interface%2C%20connect
