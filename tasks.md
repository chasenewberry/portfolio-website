# Tasks: Mechanical Engineering Portfolio Implementation

- [x] **Phase 1: Asset Standardization & File Preparation** <!-- id: 0 -->
  - [x] Standardize asset filenames in `assets/projects/` to lowercase underscore format (`gokart_hero.jpg`, `gokart_1.png`, `gokart_3_left.jpeg`, `gokart_4_right.jpeg`, `gokart_10.jpg`, `gokart_11.jpg`, `motor_2.jpeg`, etc.) while ensuring symlinks/copies maintain backward compatibility with original filenames. <!-- id: 1 -->
  - [x] Ensure `Chase_Newberry_Resume.pdf` is accessible at `assets/Chase_Newberry_Resume.pdf` as specified in `content.md`. <!-- id: 2 -->
  - [x] Verify all 12 Go-Kart images, 4 Motor images, and resume load without 404s. <!-- id: 3 -->

- [x] **Phase 2: Core Page Layout & Typography (index.html)** <!-- id: 4 -->
  - [x] Set up clean HTML5 boilerplate with Tailwind CSS CDN (`https://cdn.tailwindcss.com`) configured with dark slate/zinc palette (`zinc-950`, `zinc-900`, `zinc-800`). <!-- id: 5 -->
  - [x] Build sticky Navigation header with backdrop-blur, smooth scroll anchors (`#projects`, `#experience`, `#contact`), status pill, and Resume download CTA. <!-- id: 6 -->
  - [x] Build Hero section with headline, TAMU engineering bio (3.69 GPA, Honors Academy Minor), key engineering metrics strip, and action CTAs. <!-- id: 7 -->
  - [x] Build Leadership & Experience section featuring Revive Mechanical LLC, TAMU ASME Logistics Officer, and TAMU Cycling Team Treasurer. <!-- id: 8 -->
  - [x] Build Contact & Footer section with direct contact links (email, phone, LinkedIn), location badge, resume button, and back-to-top button. <!-- id: 9 -->

- [x] **Phase 3: Instagram-Style Project Carousels** <!-- id: 10 -->
  - [x] Create 4:3 fixed aspect ratio containers (`aspect-[4/3]`) with native CSS scroll snap (`scroll-snap-type: x mandatory`, `scroll-snap-align: center`, hidden scrollbars). <!-- id: 11 -->
  - [x] Implement default `object-cover` styling for standard slides. <!-- id: 12 -->
  - [x] Apply special rule for `gokart_5` and `gokart_6`: `object-contain bg-zinc-900 w-full h-full` to prevent edge clipping on portrait 3:4 images. <!-- id: 13 -->
  - [x] Build carousel UI overlay controls: accessible Left/Right arrow buttons, slide index badges (`x / y`), and clickable pagination dots. <!-- id: 14 -->
  - [x] Write lightweight vanilla JavaScript for smooth desktop arrow clicks, keyboard navigation, and automatic pagination dot updates during touch-swipe/scroll. <!-- id: 15 -->

- [x] **Phase 4: Modal Deep Dives** <!-- id: 16 -->
  - [x] Build accessible HTML `<dialog>` modals for both projects (Go-Kart Chassis Optimization and 3D-Printed BLDC Motor). <!-- id: 17 -->
  - [x] Populate detailed engineering breakdowns from `content.md`: Objectives, SOLIDWORKS FEA stress plots, Kinematics/Fabrication/Design Innovations, and Results/Metrics. <!-- id: 18 -->
  - [x] Implement inspection gallery inside modals with `max-h-[70vh] object-contain mx-auto` and full captions for technical reviewers. <!-- id: 19 -->
  - [x] Implement modal accessibility: ESC key handler, backdrop click dismissal, explicit close button, and `document.body` scroll locking. <!-- id: 20 -->

- [x] **Phase 5: Docker & Deployment Configuration** <!-- id: 21 -->
  - [x] Create multi-arch `Dockerfile` based on `nginx:alpine` tailored for Raspberry Pi (ARM64) and standard architectures. <!-- id: 22 -->
  - [x] Create `nginx.conf` with gzip compression, asset caching headers, security headers, and MIME type handling. <!-- id: 23 -->
  - [x] Create `docker-compose.yml` mapping external port `8080` to internal port `80` with restart policy `unless-stopped`. <!-- id: 24 -->
  - [x] Create `.dockerignore` to keep build context clean. <!-- id: 25 -->

- [x] **Phase 6: Verification & Browser Testing** <!-- id: 26 -->
  - [x] Serve the website locally using lightweight Python server. <!-- id: 27 -->
  - [x] Use browser subagent / headless testing to verify desktop (1280x800) and mobile (375x667) responsiveness. <!-- id: 28 -->
  - [x] Verify carousel swipe and arrow navigation, slide counters, and pagination dots. <!-- id: 29 -->
  - [x] Verify `gokart_5` and `gokart_6` render without clipping or distortion in 4:3 container. <!-- id: 30 -->
  - [x] Verify modal deep dives open, display FEA/CAD diagrams crisply, and close via ESC/backdrop/button. <!-- id: 31 -->
  - [x] Verify resume download link and external links work correctly. <!-- id: 32 -->
