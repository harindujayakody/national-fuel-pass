<div align="center">

<br/>

<img src="assets/logo.png" alt="Sri Lanka National Fuel Pass" height="72"/>

<br/><br/>

# Sri Lanka National Fuel Pass

### Generate Digital Fuel Pass — Free · Private · Instant

<br/>

[![License: MIT](https://img.shields.io/badge/License-MIT-D42020?style=flat-square&logo=opensourceinitiative&logoColor=white)](https://github.com/harindujayakody/national-fuel-pass/blob/main/LICENSE)&nbsp;
[![Made in Sri Lanka](https://img.shields.io/badge/Made%20in-Sri%20Lanka%20🇱🇰-D42020?style=flat-square)](https://github.com/harindujayakody/national-fuel-pass)&nbsp;
[![100% Client Side](https://img.shields.io/badge/Privacy-100%25%20Client--Side-10B981?style=flat-square&logo=shieldsdotio&logoColor=white)](#-privacy--data)&nbsp;
[![Powered by Claude](https://img.shields.io/badge/Powered%20by-Claude.ai-7C3AED?style=flat-square&logo=anthropic&logoColor=white)](https://claude.ai)

<br/>

> Upload your QR · Set your quota · Download your official pass card

<br/>

[🚀 **Try It Live**](https://fuelpass.infiax.com) &nbsp;·&nbsp; [📖 **Guide**](https://fuelpass.infiax.com/docs) &nbsp;·&nbsp; [🐛 **Report a Bug**](https://github.com/harindujayakody/national-fuel-pass/issues) &nbsp;·&nbsp; [💡 **Request Feature**](https://github.com/harindujayakody/national-fuel-pass/discussions)

<br/>

</div>

---

## 📋 Table of Contents

- [What is this?](#-what-is-this)
- [Features](#-features)
- [How It Works](#-how-it-works)
- [Privacy & Data](#-privacy--data)
- [Tech Stack](#-tech-stack)
- [File Structure](#-file-structure)
- [Deploy on Cloudflare Pages](#-deploy-on-cloudflare-pages)
- [Other Hosting Options](#-other-hosting-options)
- [Customization](#-customization)
- [Pages & Screens](#-pages--screens)
- [Contributing](#-contributing)
- [License](#-license)
- [Support](#-support)

---

## 🇱🇰 What is this?

The **Sri Lanka National Fuel Pass Generator** is a free, open-source web tool that lets Sri Lankan citizens instantly generate a properly formatted **QR-based Digital Fuel Quota Pass card** — matching the official government-issued card style — with zero setup, no account needed, and no data ever sent to any server.

You bring your own QR code from [fuelpass.gov.lk](https://fuelpass.gov.lk), enter your weekly quota, and get a **downloadable high-resolution PNG card in under 10 seconds** — entirely in your browser.

> ⚠️ **Disclaimer:** This is an **independent open-source project** and is not officially affiliated with the Government of Sri Lanka or the Ministry of Power & Renewable Energy. It is a community utility to help citizens conveniently format and carry their official fuel pass cards.

---

## ✨ Features

| Feature | Description |
|---|---|
| ⚡ **Instant Generation** | Card generated in your browser in seconds — no upload, no waiting |
| 📷 **QR Upload** | Supports JPEG, PNG, WEBP — tap to upload or drag & drop |
| 🏗️ **Official Card Design** | Matches Ministry of Power & Renewable Energy card layout |
| 💾 **Session Persistence** | Last pass auto-saved in `localStorage` — resume any time |
| 🕐 **Pass History** | Last 10 generated passes stored locally, all viewable & re-downloadable |
| 🌐 **Bilingual Support** | Full **English** and **සිංහල (Sinhala)** across all pages |
| 📱 **Mobile Responsive** | Hamburger menu, fits perfectly on any phone or desktop |
| ⬇️ **Free High-Res Download** | 3× resolution PNG saved directly to your device |
| 🔒 **100% Private** | Zero server communication — everything happens in your browser |
| 📖 **Built-in Guide** | Step-by-step QR recovery guide in English and Sinhala |

---

## 🚀 How It Works

```
  ┌─────────────────────────────────────────────────────┐
  │                                                     │
  │   ① Visit fuelpass.gov.lk → Login with phone OTP   │
  │                    ↓                                │
  │   ② Screenshot your QR code and save it            │
  │                    ↓                                │
  │   ③ Open this app → "Build Your Own Card"          │
  │                    ↓                                │
  │   ④ Enter your weekly fuel quota (litres)          │
  │                    ↓                                │
  │   ⑤ Upload your QR code screenshot                 │
  │                    ↓                                │
  │   ⑥ Click "Generate Pass"                         │
  │                    ↓                                │
  │   ⑦ Download your high-res PNG card ✅             │
  │                                                     │
  └─────────────────────────────────────────────────────┘
```

No forms. No accounts. No waiting. **Done in under 10 seconds.**

> 💡 Need help getting your QR code? Follow the [step-by-step guide →](https://fuelpass.infiax.com/docs)

---

## 🔒 Privacy & Data

**Your data is never sent to any server — ever.**

This tool is **100% client-side HTML / CSS / JavaScript**:

- ✅ Your QR image is read **locally** by your browser — never uploaded anywhere
- ✅ Quota data stored only in your browser's `localStorage` — never transmitted
- ✅ Card rendering uses `html2canvas` — runs entirely in your browser
- ✅ PNG downloads go **directly** to your device — no server involved
- ✅ No analytics, no trackers, no cookies, no accounts required
- ✅ Works fully offline after the first page load *(fonts & icons load once)*

> 🔐 **We have zero access to your QR code, your quota, or your generated card.**

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **HTML5 / CSS3 / Vanilla JS** | Core app — no frameworks, no build tools needed |
| **[Poppins](https://fonts.google.com/specimen/Poppins)** | Primary display font (Google Fonts) |
| **[Noto Sans Sinhala](https://fonts.google.com/noto/specimen/Noto+Sans+Sinhala)** | Sinhala language rendering |
| **[Font Awesome 6](https://fontawesome.com/)** | UI icons (CDN) |
| **[html2canvas](https://html2canvas.hertzen.com/)** | Client-side card → PNG rendering |
| **`localStorage`** | Session & history persistence (browser only) |
| **Apache `.htaccess`** | HTTPS redirect, security headers, caching, error pages |

---

## 📁 File Structure

```
harindujayakody/national-fuel-pass/
│
├── 📄 index.html            ← Main app (Home · Form · Pass · History)
├── 📄 docs.html             ← Step-by-step guide: how to get your QR
│
├── 📄 404.html              ← Error: Page Not Found
├── 📄 403.html              ← Error: Access Forbidden
├── 📄 500.html              ← Error: Internal Server Error
├── 📄 503.html              ← Error: Service Unavailable (auto-countdown)
│
├── ⚙️  .htaccess            ← Apache: HTTPS, headers, caching, error routing
├── 🗺️  sitemap.xml          ← SEO sitemap with hreflang
├── 🤖 robots.txt            ← Crawler rules & sitemap reference
├── 📜 LICENSE               ← MIT License
├── 📘 README.md             ← You are here
│
└── 📁 assets/
    ├── logo.png             ← Site logo (navbar + error pages)
    ├── dialog.png           ← Dialog Axiata credit logo (card)
    ├── mit.png              ← Millennium IT ESP logo (card)
    ├── ioc.png              ← Lanka IOC fuel station logo (card)
    └── ceypetco.png         ← Ceypetco fuel station logo (card)
```

---

## ☁️ Deploy on Cloudflare Pages

Cloudflare Pages is the **recommended hosting** for this project — free forever, globally distributed CDN, automatic HTTPS, zero configuration.

### Step 1 · Fork the Repository

Click **[Fork](https://github.com/harindujayakody/national-fuel-pass/fork)** on GitHub to create your own copy, or clone it:

```bash
git clone https://github.com/harindujayakody/national-fuel-pass.git
cd national-fuel-pass
```

---

### Step 2 · Connect to Cloudflare

1. Go to **[dash.cloudflare.com](https://dash.cloudflare.com)** and sign in (free account)
2. In the sidebar → **Workers & Pages** → **Create application**
3. Select the **Pages** tab → **Connect to Git**
4. Authorize Cloudflare to access your GitHub account
5. Select your **`national-fuel-pass`** repository → **Begin setup**

---

### Step 3 · Configure Build Settings

| Setting | Value |
|---|---|
| **Project name** | `national-fuel-pass` *(or your choice)* |
| **Production branch** | `main` |
| **Framework preset** | `None` |
| **Build command** | *(leave empty — no build needed)* |
| **Build output directory** | `/` |

> ℹ️ This is a **pure static site** — no build step, no Node.js, no npm.

Click **Save and Deploy**. Your site goes live in ~30 seconds at:

```
https://national-fuel-pass.pages.dev
```

---

### Step 4 · Add a Custom Domain *(optional)*

1. In your Pages project → **Custom domains** → **Set up a custom domain**
2. Enter your domain (e.g. `fuelpass.yourdomain.lk`)
3. Add the **CNAME record** Cloudflare provides to your DNS settings
4. **SSL/HTTPS is automatic** — Cloudflare handles it for free

---

### Step 5 · Add Cloudflare-Specific Config Files

Cloudflare Pages doesn't use Apache, so `.htaccess` won't run there. Create these two files in the root of your project:

**`_redirects`** — clean URLs without `.html` extension:

```
/docs    /docs.html    200
/guide   /docs.html    301
```

**`_headers`** — security headers:

```
/*
  X-Frame-Options: SAMEORIGIN
  X-Content-Type-Options: nosniff
  X-XSS-Protection: 1; mode=block
  Referrer-Policy: strict-origin-when-cross-origin
  Permissions-Policy: camera=(), microphone=(), geolocation=()
```

---

### Step 6 · Update URLs for Your Domain

After connecting your custom domain, update these in both `index.html` and `docs.html`:

```html
<!-- Replace with your actual domain -->
<link rel="canonical" href="https://yourdomain.lk/"/>
<meta property="og:url" content="https://yourdomain.lk/"/>
```

And in `sitemap.xml`:

```xml
<loc>https://yourdomain.lk/</loc>
<loc>https://yourdomain.lk/docs</loc>
```

---

### Step 7 · Auto-Deploy on Push ✅

Every time you push to `main`, Cloudflare Pages automatically rebuilds and deploys. No CI/CD setup needed.

```bash
git add .
git commit -m "feat: update card design"
git push origin main
# → Cloudflare deploys automatically in ~15 seconds
```

---

## 🌐 Other Hosting Options

<details>
<summary><strong>🐙 GitHub Pages</strong></summary>

1. Go to your repo → **Settings** → **Pages**
2. Source: **Deploy from a branch** → `main` → `/ (root)`
3. Click **Save**

Live at: `https://YOUR_USERNAME.github.io/national-fuel-pass`

</details>

<details>
<summary><strong>🟩 Netlify</strong></summary>

```bash
npm install -g netlify-cli
netlify deploy --prod --dir .
```

Or drag-and-drop the project folder on [app.netlify.com](https://app.netlify.com).

</details>

<details>
<summary><strong>🖥️ cPanel / Shared Hosting</strong></summary>

1. Zip the entire project folder
2. Upload via **File Manager** or **FTP** to your `public_html` directory
3. Extract the zip — done
4. `.htaccess` handles HTTPS, security headers, and caching automatically

</details>

<details>
<summary><strong>💻 Local Development</strong></summary>

```bash
# Option 1 — Open directly (basic)
open index.html          # macOS
start index.html         # Windows
xdg-open index.html      # Linux

# Option 2 — Local server (recommended)
npx serve .
# → http://localhost:3000

# Option 3 — Python
python3 -m http.server 8000
# → http://localhost:8000
```

</details>

---

## 🔧 Customization

### Replace Logos

All logos live in `assets/`. Just replace the files with your own:

```
assets/logo.png       → Navbar & error page logo
assets/ioc.png        → Fuel station logo 1 (card footer)
assets/ceypetco.png   → Fuel station logo 2 (card footer)
assets/dialog.png     → Technology credit logo 1 (card)
assets/mit.png        → Technology credit logo 2 (card)
```

### Change Theme Color

Edit two CSS variables at the top of `index.html`:

```css
:root {
  --r:  #D42020;   /* Primary red — all buttons, accents, active states */
  --r2: #A81A1A;   /* Darker red — hover states */
}
```

### Add a New Language

1. Add a translation object to the `T` variable in `index.html`
2. Add a language button to each `<div class="nb-lang">` in all 4 navbars
3. Add the same button to each `<div class="nb-drawer-lang">` for mobile

---

## 🖥️ Pages & Screens

```
  ┌──────────────────────────────────────────┐
  │  🏠  HOME                                │
  │      Light theme with animated bg        │
  │      Sri Lanka flag accent               │
  │      "Build Your Own Card" CTA           │
  │      Feature bar: ⚡ 📲 🔒 ⬇️           │
  ├──────────────────────────────────────────┤
  │  📝  FORM  (New Pass)                    │
  │      Weekly quota input                  │
  │      QR code image upload               │
  │      Trust badges · Generate button      │
  ├──────────────────────────────────────────┤
  │  ✅  PASS READY  (Result)                │
  │      Official card preview               │
  │      Ministry branding + station logos   │
  │      Download high-res PNG               │
  ├──────────────────────────────────────────┤
  │  🕐  HISTORY                             │
  │      Last 10 generated passes            │
  │      View · Delete · Clear all           │
  ├──────────────────────────────────────────┤
  │  📖  GUIDE  (docs.html — separate page)  │
  │      How to get QR from fuelpass.gov.lk  │
  │      Account recovery tips               │
  │      EN / සිං bilingual                 │
  └──────────────────────────────────────────┘

  All pages share the same responsive navbar:
  Logo → Home · New Pass · History · Guide · EN/සිං
  On mobile → hamburger drawer menu
```

---

## 🤝 Contributing

Contributions are welcome and appreciated!

```bash
# 1. Fork this repository on GitHub
# 2. Clone your fork locally
git clone https://github.com/YOUR_USERNAME/national-fuel-pass.git
cd national-fuel-pass

# 3. Create a feature branch
git checkout -b feature/your-feature-name

# 4. Make your changes

# 5. Commit with a clear message
git add .
git commit -m "feat: describe what you changed"

# 6. Push and open a Pull Request
git push origin feature/your-feature-name
```

**Commit message prefixes:**

| Prefix | Use for |
|---|---|
| `feat:` | New feature |
| `fix:` | Bug fix |
| `docs:` | Documentation only |
| `style:` | CSS / visual changes |
| `refactor:` | Code restructure (no feature change) |
| `chore:` | Maintenance, dependencies |

Please **open an issue first** before working on major changes so we can discuss the approach.

---

## 📜 License

```
MIT License

Copyright (c) 2025 harindujayakody
https://github.com/harindujayakody/national-fuel-pass

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

See [LICENSE](https://github.com/harindujayakody/national-fuel-pass/blob/main/LICENSE) for the full text.

---

## 📞 Support

| Channel | Link |
|---|---|
| 🐛 **Bug Reports** | [Open an issue](https://github.com/harindujayakody/national-fuel-pass/issues) |
| 💡 **Feature Requests** | [Start a discussion](https://github.com/harindujayakody/national-fuel-pass/discussions) |
| 📧 **Email** | hello@infiax.com |
| 🌐 **Website** | [infiax.com](https://infiax.com) |

---

<div align="center">

<br/>

Made with 💗 by **[Infiax Pvt Ltd](https://infiax.com)** &nbsp;·&nbsp; Sri Lanka 🇱🇰

Built with **[Claude.ai](https://claude.ai)** by Anthropic

<br/>

[![GitHub stars](https://img.shields.io/github/stars/harindujayakody/national-fuel-pass?style=social)](https://github.com/harindujayakody/national-fuel-pass/stargazers)
&nbsp;
[![GitHub forks](https://img.shields.io/github/forks/harindujayakody/national-fuel-pass?style=social)](https://github.com/harindujayakody/national-fuel-pass/fork)

<br/>

*If this project helped you, please consider giving it a ⭐ star on GitHub!*

<br/>

</div>