# Components and States

Covers how to design component behavior and UI states: feedback, empty/loading/error states, buttons, chips, icons, cards, carousels, overlays, forms, destructive actions and AI interfaces.

Each rule cites its source as `author/video timestamp`; the link opens the video at that moment. Full source details are in `references/bibliography.md`.

## Interaction feedback and states

- Give every user action an immediate visible response: a pressed state on click, a spinner if loading runs long, a success message when done. Without feedback, a slow load looks like the click didn't register. ([jain/beginner-mistakes 5:39](https://youtu.be/AH_ugxmLeUM?t=339), [jain/every-ui-concept 7:31](https://youtu.be/EcbgbKtOELY?t=451), [jain/tiktok-ux 4:06](https://youtu.be/ixUq4HM4FNg?t=246))
- Design at least four button states up front: default, hover, active/pressed, disabled; add a loading state with spinner when needed. Otherwise you end up picking random colors at the end. ([jain/every-ui-concept 7:35](https://youtu.be/EcbgbKtOELY?t=455), [jain/micro-animations 0:22](https://youtu.be/ld1zhQMXxXU?t=22))
- Use optimistic UI: apply changes like deletes instantly and show success while the server request runs in the background. Avoids awkward pauses; users want a snappy dashboard, like Mail trashing email before the server confirms. ([jain/dashboard-ui 7:45](https://youtu.be/B7k5rOgmOGY?t=465), [jain/macos-apps 1:57](https://youtu.be/Vy0KKvZJRH8?t=117))
- Derive states from the base color: hover slightly lighter/brighter, pressed slightly darker, disabled desaturated, e.g. light gray background with white text. Light gray disabled buttons read as disabled without other cues and work in dark mode. ([jain/color-mistakes 6:16](https://youtu.be/EOcY3hPMQkk?t=376))
- Use signifiers (press states, active nav highlights, hover states, tooltips) so the UI shows what it affords. UI should signify how it works without written instructions. ([jain/every-ui-concept 0:33](https://youtu.be/EcbgbKtOELY?t=33))
- Mark the selected toggle option with a container/background highlight and gray out the text of inactive options. ([jain/every-ui-concept 0:18](https://youtu.be/EcbgbKtOELY?t=18))
- Keep off/default states visually quiet and reserve color for changed or active states; gray out default values in settings. Color is the whole signal that something changed; non-default values should catch the eye. ([jain/weirdly-perfect-ui 6:07](https://youtu.be/neE6wOuBIP8?t=367))
- Give every tab, including the add tab, a distinct active state, e.g. swap to a filled icon. ([jain/crucial-ui-elements 1:12](https://youtu.be/gKM6b2EnW1k?t=72))
- Show selected/focus states with a bright, heavier stroke plus a soft blurred glow behind (about 24px layer blur). ([jain/animated-sidebar 6:08](https://youtu.be/NtZeYmTMuo4?t=368))
- When saving an item, fill the save icon and add a badge dot on the destination tab. Makes clear something new was added to the saved tab. ([jain/beginner-mistakes 5:58](https://youtu.be/AH_ugxmLeUM?t=358))
- Give visible feedback (micro-animation or state change) for every keyboard shortcut. Without a visible change, users assume something went wrong. ([jain/macos-apps 6:46](https://youtu.be/Vy0KKvZJRH8?t=406))
- Use toasts to confirm changes made in a modal and to surface warnings and errors without taking over the screen. Users can't see the page behind a modal, and warning/error states frequently get missed. ([jain/dashboard-ui 5:16](https://youtu.be/B7k5rOgmOGY?t=316))
- Make toasts interactive, with loading states and celebratory success animations, not just a slide-up. ([jain/micro-animations 1:52](https://youtu.be/ld1zhQMXxXU?t=112))
- Design hidden components and states (drawers, modals, hover reveals on small elements) as carefully as visible UI. Dense designs need extra functionality to come from parts you can't see. ([jain/dashboard-flaws 5:00](https://youtu.be/Ksx9C2-3yMo?t=300))
- For gamification, center on one currency (XP, Karma) that shows progress and unlocks features, and tie rewards to users' real goals. Progress and unlocks keep users going; no one cares about meaningless rewards. ([jain/gamifying-apps 0:57](https://youtu.be/jSxxAFxjxbU?t=57))
- Show users what they've accomplished and how much is left, e.g. percent of a course completed. Gives visibility over progress and what remains. ([jain/gamifying-apps 1:08](https://youtu.be/jSxxAFxjxbU?t=68))
- Add social elements like leaderboards and public badges so users can compare with friends. Seeing how you stack up against friends motivates. ([jain/gamifying-apps 1:22](https://youtu.be/jSxxAFxjxbU?t=82))

## Empty, loading and error states

- Never show a blank list, dashboard or new object; show an empty state with a message, optional animation, and a CTA that starts the first task. Doesn't leave users staring at a blank screen; guides them to the next step. ([jain/dashboard-ui 3:18](https://youtu.be/B7k5rOgmOGY?t=198), [jain/macos-apps 3:31](https://youtu.be/Vy0KKvZJRH8?t=211), [jain/think-like-product-designer 0:42](https://youtu.be/ADaQuZS04Rc?t=42))
- Design beyond the happy path: empty, loading, success and error states for every screen. Real apps must handle the states users actually experience. ([jain/think-like-product-designer 1:03](https://youtu.be/ADaQuZS04Rc?t=63))
- For long-running actions (builds, deploys, integrations), show an informative loading state, then notify success or error immediately. Users are never left guessing; keeps them informed and in control. ([jain/think-like-product-designer 1:28](https://youtu.be/ADaQuZS04Rc?t=88))
- Use skeleton placeholders with shimmer that match the final layout so content slots into place. Makes the layout feel alive while loading. ([jain/ai-startup-components 4:45](https://youtu.be/If7iCPDy2vk?t=285))
- Keep loading indicators short, looping and fluid. The product should feel fast. ([jain/ai-startup-components 1:37](https://youtu.be/If7iCPDy2vk?t=97))
- For no-results states, show imagery, acknowledge nothing matched, suggest alternatives for typos, and offer an exit action. ([jain/mobile-app-ui 6:52](https://youtu.be/Gfsd8NNuD9g?t=412))
- Make 404 pages quirky and fun. The user literally doesn't belong there, so it's the ultimate time for fun. ([jain/boring-design-hacks 5:57](https://youtu.be/SfX43uIubj4?t=357))

## Buttons, chips and icons

- Keep identical components identical everywhere: same size, corner radius, spacing, type scale and colors (e.g. back and skip buttons). Builds familiarity and trust; inconsistent versions of one element feel amateur. ([jain/beginner-mistakes 2:55](https://youtu.be/AH_ugxmLeUM?t=175), [jain/think-like-product-designer 3:46](https://youtu.be/ADaQuZS04Rc?t=226))
- Remove duplicate controls that do the same thing (two search bars); merge similar actions into one button with options (share slide/chapter/all). Two buttons that look like they do the same thing confuse users. ([jain/finance-dashboard-redesign 1:23](https://youtu.be/Yr2uIcFZDDQ?t=83), [jain/spotify-wrapped-redesign 6:14](https://youtu.be/goWOAFqJHpA?t=374))
- Add tooltips or hover labels to unlabeled icons and ambiguous labels on dashboards. Assume users won't understand all icons or may want more detail. ([jain/animated-sidebar 4:52](https://youtu.be/NtZeYmTMuo4?t=292), [jain/dashboard-flaws 6:14](https://youtu.be/Ksx9C2-3yMo?t=374))
- Use chips for breadcrumbs, categorizing content, and letting users swap tags inline instead of via a hidden menu. Chips are recognizable and expose functionality otherwise hidden behind a menu. ([jain/crucial-ui-elements 9:02](https://youtu.be/gKM6b2EnW1k?t=542), [jain/weirdly-perfect-ui 4:19](https://youtu.be/neE6wOuBIP8?t=259))
- Keep the design system small as the product grows: make decisions you stick to rather than building hundreds of components. Clarity is how users build trust and speed with the product. ([jain/think-like-product-designer 3:27](https://youtu.be/ADaQuZS04Rc?t=207))
- Distinguish chips from buttons: never the primary CTA color, always thinner, vertical padding half or a quarter of horizontal (20px / 10px or 5px). Too small a background looks wrong; too large turns the chip into a button. ([jain/crucial-ui-elements 9:18](https://youtu.be/gKM6b2EnW1k?t=558))
- Set button horizontal padding so the width is double the height. ([jain/every-ui-concept 7:21](https://youtu.be/EcbgbKtOELY?t=441))
- Make more important buttons darker; multi-purpose buttons sit around 90-95% white. ([jain/60-30-10-rule 1:43](https://youtu.be/66oOi9OLMCw?t=103))
- Use ghost buttons (no background until hover) for sidebar links and secondary CTAs beside a primary. ([jain/every-ui-concept 7:05](https://youtu.be/EcbgbKtOELY?t=425))
- Trigger buttons on release, not press, so users can cancel by moving off. Every button gets a built-in cancel. ([jain/software-must-lie 7:46](https://youtu.be/S8DcTJm8pYM?t=466))
- Open menus and popovers on press, not release. Exception to release-triggering: lets users press, drag and release on an item in one motion. ([jain/software-must-lie 8:11](https://youtu.be/S8DcTJm8pYM?t=491))
- Delay the first tooltip, then show tooltips on adjacent items instantly. After one wait, assume the user wants info on nearby buttons. ([jain/software-must-lie 3:36](https://youtu.be/S8DcTJm8pYM?t=216))
- Avoid ambiguous icon-only action bars that force users to wait for tooltips; use immediately recognizable visuals. Otherwise users are just guessing until the tooltip pops up. ([jain/weirdly-perfect-ui 4:04](https://youtu.be/neE6wOuBIP8?t=244))
- Size icons to the text's line height (e.g. 24px) and tighten the text next to them. Most icons are too large. ([jain/every-ui-concept 6:56](https://youtu.be/EcbgbKtOELY?t=416))
- Make every action fit the real-world object; remove nonsensical ones like 'receive' on a credit card. Pretty UI that doesn't make sense up close fails users. ([jain/finance-dashboard-redesign 3:09](https://youtu.be/Yr2uIcFZDDQ?t=189))
- Collapse bulky search bars into a magnifying-glass icon that expands with an animation on click. Search bars are large, clunky and get in the way. ([jain/micro-animations 7:04](https://youtu.be/ld1zhQMXxXU?t=424))
- Add small affordances like a filter icon inside the search bar and a save button up top. Little touches go a long way. ([jain/beginner-mistakes 0:51](https://youtu.be/AH_ugxmLeUM?t=51))

## Cards, carousels and overlays

- Replace text with icons on cards where possible, e.g. put minor details in a single row with icons instead of labels. Icons add context; without them users read more and browse slower. ([jain/beginner-mistakes 3:43](https://youtu.be/AH_ugxmLeUM?t=223), [jain/ui-cheat-codes 5:11](https://youtu.be/c1TvOcKdBVE?t=311))
- Place card titles above images and prefer standard image-plus-text cards over gradient-overlay cards when images vary. Overlay text only works with some images; standard cards always work. ([jain/crucial-ui-elements 4:23](https://youtu.be/gKM6b2EnW1k?t=263), [jain/tesla-wannabe-redesign 4:05](https://youtu.be/V3Omp1hm0Sg?t=245))
- Turn cards into a carousel/slider when you want to show them all but lack room; use for about 3 to 10 items. Beyond 10 it's cumbersome to click through; choose a different format. ([jain/skincare-redesign 4:31](https://youtu.be/BvbFPzLjWcU?t=271), [jain/website-layouts 7:49](https://youtu.be/P2ksReDwWkE?t=469))
- Add carousel dot indicators showing count and current position, with arrows placed beside the dots. Shows how many images there are and how far along you are. ([jain/crucial-ui-elements 10:08](https://youtu.be/gKM6b2EnW1k?t=608), [jain/website-layouts 4:38](https://youtu.be/P2ksReDwWkE?t=278))
- Drop field labels the content already implies, but keep labels where values could be confused, like check-in vs check-out dates. If your UI can't imply the labels, it isn't clear enough; confusable values still need them. ([jain/ui-cheat-codes 4:42](https://youtu.be/c1TvOcKdBVE?t=282))
- Group related card data: stack paired fields (name over location) and right-align the secondary pair (price over rating). Makes the card pop instead of a flat list. ([jain/ui-cheat-codes 4:47](https://youtu.be/c1TvOcKdBVE?t=287))
- Avoid nesting cards inside cards; group with white space instead of another container. Padding on padding restricts space and cramps content. ([jain/mobile-app-ui 3:13](https://youtu.be/Gfsd8NNuD9g?t=193))
- Build mobile apps from four blocks (cards, text/links, images, inputs), using cards to group content. Cards group content in place of white space, which mobile lacks. ([jain/mobile-app-ui 2:49](https://youtu.be/Gfsd8NNuD9g?t=169))
- Remove cards that don't do anything. Purposeless cards are a common AI-generated pattern. ([jain/saas-vibe-code-mistakes 3:28](https://youtu.be/PDcQJOPby1k?t=208))
- On repeating cards, drop the CTA button and make the whole card the link; keep an explicit button for a specific action like 'Try it out'. With many repeated cards the whole card becomes the link anyway. ([jain/crucial-ui-elements 3:41](https://youtu.be/gKM6b2EnW1k?t=221))
- Limit buttons on compact cards and align them to the card's edges. Too many buttons not following the edges makes the card feel off. ([jain/weirdly-perfect-ui 0:53](https://youtu.be/neE6wOuBIP8?t=53))
- Add an image to cards when possible. Adds a pop of color and makes scanning easy. ([jain/every-ui-concept 1:02](https://youtu.be/EcbgbKtOELY?t=62))
- Design for imperfect content: truncate long names and put a circle behind icons that sit over images. Otherwise you get unintended consequences. ([jain/genius-designer 3:12](https://youtu.be/HE4rLEQpiXY?t=192))
- Make carousels draggable or give them a large nav button, not just tiny buttons. Small buttons as the only navigation is weak. ([jain/website-layouts 7:02](https://youtu.be/P2ksReDwWkE?t=422))
- Keep carousel controls legible over any image, e.g. on a dark blurred background or below the image. Changing the image can make overlaid controls invisible. ([jain/crucial-ui-elements 10:04](https://youtu.be/gKM6b2EnW1k?t=604))
- Use popovers for simple, nonblocking context like display settings. Users can click away without consequences. ([jain/dashboard-ui 4:50](https://youtu.be/B7k5rOgmOGY?t=290))
- Use a blocking modal for more complex tasks tied to the current page. Keeps the user on the same page for related actions. ([jain/dashboard-ui 5:00](https://youtu.be/B7k5rOgmOGY?t=300))
- Use a modal instead of a flyout panel when a create form has only a few fields. A sparse flyout wastes lots of space. ([jain/saas-vibe-code-mistakes 2:06](https://youtu.be/PDcQJOPby1k?t=126))
- Put a popover's primary action, like its search box, immediately visible at the top. ([jain/dashboard-flaws 2:53](https://youtu.be/Ksx9C2-3yMo?t=173))
- In lightboxes with text over photos, add a readability gradient and always include a close X. The gradient makes overlay text easier to read. ([jain/tesla-wannabe-redesign 6:35](https://youtu.be/V3Omp1hm0Sg?t=395))

## Destructive actions, undo and saving

- Skip confirmation modals for routine deletes; delete immediately and show an undo toast. Modals make 99% confirm intended actions to protect 1%; use when undo exists. ([jain/software-must-lie 5:35](https://youtu.be/S8DcTJm8pYM?t=335))
- Keep warning modals for truly irreversible actions, like bulk emails to 10,000 recipients or sending money. Undo-based patterns only work when undo exists. ([jain/software-must-lie 6:51](https://youtu.be/S8DcTJm8pYM?t=411))
- Show actions as done immediately while briefly delaying execution (e.g. 5s send delay) to allow undo. Feels instant yet leaves time to undo. ([jain/software-must-lie 5:57](https://youtu.be/S8DcTJm8pYM?t=357))
- Soft-delete items to a 'Recently Deleted' list and permanently delete after 30 days. ([jain/software-must-lie 5:49](https://youtu.be/S8DcTJm8pYM?t=349))
- Autosave settings and editors instead of save/cancel buttons, and pair autosave with version history. Users will save eventually; autosave removes cancel, so they need a way back. ([jain/software-must-lie 6:16](https://youtu.be/S8DcTJm8pYM?t=376))
- Consistently give the primary brand-colored button in dialogs to the non-destructive action. Users learn to trust it and avoid mistakes; for explicit delete confirmations see the red-button rule. ([jain/think-like-product-designer 3:38](https://youtu.be/ADaQuZS04Rc?t=218))
- In a delete confirmation, make Delete the primary red button; style Cancel with no background, a border, or reduced opacity. Applies when the user already chose to delete: Delete is the primary action; Cancel shouldn't compete. ([jain/web-design-hacks 4:24](https://youtu.be/Lp6ey4AyDzA?t=264))
- Avoid endless pop-ups, paywalls blocking content, and pointless premium upsells. They make websites annoying. ([jain/unhinged-ui-upgrades 0:00](https://youtu.be/BUDipdbKK7Y?t=0))
- Always provide an off switch for intrusive or optional features and tell users how to use it. Even annoying features shouldn't ignore good UX. ([jain/unhinged-ui-upgrades 2:39](https://youtu.be/BUDipdbKK7Y?t=159))

## Forms and inputs

- Put labels above inputs, never as placeholders; use realistic example values as placeholders instead. Users halfway through typing forget the field's purpose; examples show what to enter. ([jain/crucial-ui-elements 6:54](https://youtu.be/gKM6b2EnW1k?t=414))
- Give inputs a focus state, error states with red borders and messages, and warning states for optional issues. Inputs are even more critical for feedback than buttons. ([jain/every-ui-concept 7:44](https://youtu.be/EcbgbKtOELY?t=464))
- Style input fields with an off-white background and a stroke at 40% opacity. ([jain/crucial-ui-elements 7:35](https://youtu.be/gKM6b2EnW1k?t=455))
- Add a 'Create account' subheading to signup modals and include a link to log in. Makes clear it's not a login, and lets people who want to log in get there. ([jain/crucial-ui-elements 7:10](https://youtu.be/gKM6b2EnW1k?t=430))
- Structure create modals as template selectors first, then input fields, then actions at the bottom. ([jain/think-like-product-designer 4:08](https://youtu.be/ADaQuZS04Rc?t=248))
- After a create action, prompt the logical next step (e.g. add team members) with an option to skip. A container without its contents is useless. ([jain/think-like-product-designer 2:27](https://youtu.be/ADaQuZS04Rc?t=147))
- Add a smoothly animated progress bar to multi-step forms. Keeps users engaged through boring forms. ([jain/micro-animations 5:42](https://youtu.be/ld1zhQMXxXU?t=342))

## AI interfaces

- Lead prompt-based AI tools with a large prompt box above the fold. Gets users trying the tool immediately. ([jain/ai-startup-components 0:20](https://youtu.be/If7iCPDy2vk?t=20))
- Never make users wait without feedback; stream AI responses word by word. Turns delay into anticipation. ([jain/ai-startup-components 4:25](https://youtu.be/If7iCPDy2vk?t=265))
- Show the AI's work: steps taken, documents retrieved, sources cited. Makes the product feel intelligent rather than pulling answers from the void. ([jain/ai-startup-components 3:51](https://youtu.be/If7iCPDy2vk?t=231))
- Preview attached PDFs and images inside the prompt box, and collapse large pastes like code into compact, viewable blocks. So large inputs don't take over the chat. ([jain/ai-startup-components 0:51](https://youtu.be/If7iCPDy2vk?t=51))
- Let users attach context to the prompt, including integration buttons for Google Drive, GitHub, Figma and internal tools. Gives confidence the AI knows what you want. ([jain/ai-startup-components 1:14](https://youtu.be/If7iCPDy2vk?t=74))
- For broad-use AI, add context chips that switch mode (brainstorm, data, email). Gets better answers. ([jain/ai-startup-components 1:03](https://youtu.be/If7iCPDy2vk?t=63))
- Provide generation history for text, code or image output, built for retrieval: first-line previews, deletion and search. Turns history into a workspace, not a wastebasket. ([jain/ai-startup-components 1:51](https://youtu.be/If7iCPDy2vk?t=111))
- Expose persistent AI memory in a dedicated panel with storage usage, bulk delete and add-fact controls, not buried in settings. Users must see and control memory. ([jain/ai-startup-components 2:26](https://youtu.be/If7iCPDy2vk?t=146))
- Keep inline edit controls compact: a few quick selectors plus keyboard shortcuts. Feels like real-time revision, not regeneration. ([jain/ai-startup-components 3:12](https://youtu.be/If7iCPDy2vk?t=192))
- Show confidence on AI output as a pill label (high confidence/unverified) that reveals the numeric score on click. AI outputs feel confident but may not be. ([jain/ai-startup-components 5:12](https://youtu.be/If7iCPDy2vk?t=312))
