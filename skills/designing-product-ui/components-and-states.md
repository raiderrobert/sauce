# Components and states

Component behavior and UI states: feedback, empty/loading/error states, buttons, chips, icons, cards, carousels, overlays, destructive actions, forms and AI interfaces.

Practitioner heuristics; the user's scope, accessibility and the product's design system take precedence. **App UI** = product screens only, **Marketing** = landing pages and websites only, untagged = both. *Note:* = uncited editorial caveat; follow it where it corrects a source number. Citations (`author/video timestamp`) link to that moment; definitions are at the end of the file.

Contents: Feedback and states · Empty, loading and error states · Buttons, chips and icons · Cards and carousels · Overlays, destructive actions and saving · Forms and inputs · AI interfaces

## Feedback and states

- Give every action an immediate visible response: a pressed state on click, a spinner if it runs long, and a confirmation when done (e.g. a 'Copied' chip sliding up after copy). Keyboard shortcuts need visible feedback too. Without feedback, a slow action looks like the click didn't register. ([jain/beginner-mistakes 5:39], [jain/every-ui-concept 7:31], [jain/macos-apps 6:46], [jain/tiktok-ux 4:06])
- Apply changes optimistically: show deletes or sends as done immediately and run the request in the background; where undo matters, briefly delay execution (e.g. a 5s send delay). Avoids awkward pauses while leaving time to undo. *Note: If the request fails, roll back the change and show an error message.* ([jain/dashboard-ui 7:45], [jain/macos-apps 1:57], [jain/software-must-lie 5:57])
- Design the product's hidden components and states as carefully as visible UI: drawers, modals, every tab's content, and any new-feature announcements. Dense products get much of their functionality from parts you can't see at first; these are the most often missed. ([jain/beginner-mistakes 0:55], [jain/dashboard-flaws 5:00], [jain/modern-layouts 3:54])
- Define interaction states up front, derived from the base color: hover slightly lighter or brighter, pressed slightly darker, disabled desaturated with text that stays readable in each theme (source: a light-gray fill with white text, which often isn't readable). On mobile, which has no hover, a slightly darker press state is enough. Otherwise state colors get picked at random at the end; small shifts in the base color are enough to read as hover, press and disabled. ([jain/color-mistakes 6:16], [jain/every-ui-concept 7:35], [jain/micro-animations 0:22])
- Keep off and default states visually quiet and reserve color for changed or active states; mark the selected toggle option with a background highlight and gray out inactive options and default values in settings. Color is the signal that something changed; non-default values should catch the eye. ([jain/every-ui-concept 0:18], [jain/weirdly-perfect-ui 6:07])
- Use toasts to confirm changes made in a modal and to surface warnings and errors without taking over the screen; give them loading and success states, not just a slide-up. Users can't see the page behind a modal, and warnings are frequently missed. ([jain/dashboard-ui 5:16], [jain/micro-animations 1:52])
- Show selected states with a brighter, heavier border plus a soft glow behind (the source blurs a duplicate shape by about 24px). *Note: In CSS, e.g. box-shadow: 0 0 24px in the accent at low opacity. Give keyboard focus a separate indicator that reaches 3:1 against adjacent colors and looks different from selected.* ([jain/animated-sidebar 6:08])

## Empty, loading and error states

- Never show a blank list, dashboard or new object: show a message and a CTA that starts the first task. Users aren't left staring at a blank screen and know the next step. ([jain/dashboard-ui 3:18], [jain/macos-apps 3:31], [jain/think-like-product-designer 0:42])
- Keep loading indicators short, looping and fluid, and keep any decorative preloader short too, so users aren't waiting to see content (see also motion.md). People are impatient and the product should feel fast. ([jain/ai-startup-components 1:37], [jain/trendy-web-animations 1:57])
- **App UI:** For long-running actions (builds, deploys, integrations), show an informative loading state, then report success or error immediately. Users are never left guessing. ([jain/think-like-product-designer 1:28])
- Use skeleton placeholders with a shimmer that match the final layout so content slots into place. The layout feels alive while loading. ([jain/ai-startup-components 4:45])
- For no-results states, show imagery, say that nothing matched, suggest alternatives for likely typos, and offer an exit action. ([jain/mobile-app-ui 6:52])
- **App UI:** If a newly created object is useless without contents (e.g. a team without members), prompt the logical next step after creating it, with an option to skip. A container without its contents is useless. ([jain/think-like-product-designer 2:27])

## Buttons, chips and icons

- Label icons unless they are universally known; add tooltips to unlabeled icons, and don't make users wait on tooltips to decode an icon-only action bar. Assume users won't recognize every icon; otherwise they guess until the tooltip appears. *Note: Show tooltips on keyboard focus too.* ([jain/animated-sidebar 4:52], [jain/dashboard-flaws 6:14], [jain/weirdly-perfect-ui 4:04])
- Keep identical components identical everywhere: same size, radius, spacing, type and colors (e.g. back and skip buttons). Builds familiarity and trust; inconsistent versions of one element feel amateur. ([jain/beginner-mistakes 2:55], [jain/think-like-product-designer 3:46])
- Remove duplicate controls that do the same thing (e.g. two search bars); merge similar actions into one button with options (e.g. share slide, chapter or all). Two buttons that look like they do the same thing confuse users. ([jain/finance-dashboard-redesign 1:23], [jain/spotify-wrapped-redesign 6:14])
- Use chips for breadcrumbs and categories; if users can change a tag, let them swap it inline from its chip instead of a hidden menu. Chips are recognizable and expose functionality otherwise buried in a menu. ([jain/crucial-ui-elements 9:02], [jain/weirdly-perfect-ui 4:19])
- **App UI:** Delay the first tooltip (~1s of hover), then show tooltips on adjacent items instantly. After one wait, assume the user wants information on nearby controls. ([jain/micro-animations 4:25], [jain/software-must-lie 3:36])
- Distinguish chips from buttons by height and shape: make chips shorter than buttons (always thinner vertically) with rounded edges, and almost never in the primary CTA color; set chip vertical padding to a half or a quarter of the horizontal (e.g. 20px horizontal with 10px or 5px vertical). Too little background looks wrong; too much turns the chip into a button. *Note: Editorial: e.g. chips about 24px tall and fully rounded, buttons about 36-40px; on a 4px grid, 16px horizontal with 8px or 4px vertical.* ([jain/crucial-ui-elements 9:18])
- Set button horizontal padding to about twice the vertical padding. *Note: Editorial example: 12px vertical, 24px horizontal.* ([jain/every-ui-concept 7:21])
- Use ghost buttons (no background until hover) for sidebar links and secondary actions beside a primary. ([jain/every-ui-concept 7:05])
- **App UI:** Open menus and popovers on press, not release, so users can press, drag and release on an item in one motion; leave ordinary buttons on release (the browser's click default) so users can cancel by moving off. Press-to-open saves a click; release-triggering gives every other button a built-in cancel. ([jain/software-must-lie 7:46])
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
- Give every optional or intrusive feature an off switch, and tell users how to turn it off. Even an annoying feature shouldn't ignore good UX. ([jain/unhinged-ui-upgrades 2:39])
- **App UI:** Skip confirmation modals for routine deletes: delete immediately and show an undo toast. Keep warning modals for truly irreversible actions, like a bulk email to 10,000 recipients or sending money. Confirmations make 99% of users confirm intended actions to protect 1%; undo protects everyone. ([jain/software-must-lie 5:35])
- **App UI:** If the product autosaves an editor or low-risk settings, drop the save/cancel buttons and pair autosave with version history or another way back. Autosave removes cancel, so users need another way back. *Note: Not for billing, permissions or validated forms; those need an explicit save.* ([jain/software-must-lie 6:16])

## Forms and inputs

- Give inputs a warning state, distinct from the error state, for optional or non-blocking issues. Inputs need feedback even more than buttons do. ([jain/every-ui-concept 7:44])
- Style input fields with an off-white background and a softened stroke that still reaches 3:1 against the background (source: 40% opacity, which often falls short). ([jain/crucial-ui-elements 7:35])

## AI interfaces

- **App UI:** If the product generates AI output, don't make users wait without feedback: stream responses word by word and show the work (steps taken, documents retrieved, sources cited), fading steps in one by one. Turns delay into anticipation and makes the AI feel like a collaborator, not a black box. ([jain/ai-startup-components 3:51])
- **App UI:** If the product is a prompt-based AI tool, lead with a large prompt box above the fold. Gets users trying the tool immediately. ([jain/ai-startup-components 0:20])
- **App UI:** If the product has an AI prompt box, preview attached PDFs and images inside it, and collapse large pastes such as code into compact, expandable blocks. Large inputs shouldn't take over the chat. ([jain/ai-startup-components 0:51])
- **App UI:** If the AI has broad use cases, let users switch modes with context chips (brainstorm, data, email); if it integrates with other tools, add buttons to attach context from sources like Google Drive or GitHub. Gives confidence the AI knows what is wanted and gets better answers. ([jain/ai-startup-components 1:03])
- **App UI:** If the product generates text with AI, support inline editing of the output: let users highlight part of a response and type the change, with a few quick selectors and keyboard shortcuts. Feels like revision rather than regeneration. ([jain/ai-startup-components 2:47])
- **App UI:** If the AI has persistent memory, expose it outside settings, e.g. in a dedicated panel, with whichever controls the product supports, such as storage usage, bulk delete and add-fact. Users must be able to see and control what is remembered. ([jain/ai-startup-components 2:26])
- **App UI:** If the model returns a real confidence score, show it on AI output as a pill label (e.g. 'High confidence', 'Unverified') that reveals the numeric score on click. AI output sounds confident even when it isn't. ([jain/ai-startup-components 5:12])

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
[jain/beginner-mistakes 5:39]: https://youtu.be/AH_ugxmLeUM?t=339
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
[jain/every-ui-concept 7:31]: https://youtu.be/EcbgbKtOELY?t=451
[jain/every-ui-concept 7:35]: https://youtu.be/EcbgbKtOELY?t=455
[jain/every-ui-concept 7:44]: https://youtu.be/EcbgbKtOELY?t=464
[jain/finance-dashboard-redesign 1:23]: https://youtu.be/Yr2uIcFZDDQ?t=83
[jain/finance-dashboard-redesign 5:38]: https://youtu.be/Yr2uIcFZDDQ?t=338
[jain/genius-designer 3:12]: https://youtu.be/HE4rLEQpiXY?t=192
[jain/macos-apps 1:57]: https://youtu.be/Vy0KKvZJRH8?t=117
[jain/macos-apps 3:31]: https://youtu.be/Vy0KKvZJRH8?t=211
[jain/macos-apps 6:46]: https://youtu.be/Vy0KKvZJRH8?t=406
[jain/micro-animations 0:22]: https://youtu.be/ld1zhQMXxXU?t=22
[jain/micro-animations 1:52]: https://youtu.be/ld1zhQMXxXU?t=112
[jain/micro-animations 4:10]: https://youtu.be/ld1zhQMXxXU?t=250
[jain/micro-animations 4:25]: https://youtu.be/ld1zhQMXxXU?t=265
[jain/mobile-app-ui 6:52]: https://youtu.be/Gfsd8NNuD9g?t=412
[jain/mobile-swipe-interactions 1:09]: https://youtu.be/14h1VnkQvIc?t=69
[jain/modern-layouts 3:54]: https://youtu.be/VPeTgU7la34?t=234
[jain/saas-vibe-code-mistakes 2:06]: https://youtu.be/PDcQJOPby1k?t=126
[jain/skincare-redesign 4:31]: https://youtu.be/BvbFPzLjWcU?t=271
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
[jain/tiktok-ux 4:06]: https://youtu.be/ixUq4HM4FNg?t=246
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
