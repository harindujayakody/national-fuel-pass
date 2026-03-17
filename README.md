# 🇱🇰 National Fuel Pass Generator — Sri Lanka

> **Build your official Sri Lanka Fuel Quota Pass card instantly — free, private, no server.**

[![Made by Infiax](https://img.shields.io/badge/Made%20by-Infiax%20Pvt%20Ltd-D42020?style=flat-square)](https://infiax.com)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](LICENSE)
[![Privacy: 100% Client-side](https://img.shields.io/badge/Privacy-100%25%20Client--side-10B981?style=flat-square)](#privacy)
[![Lang: EN + සිං](https://img.shields.io/badge/Language-EN%20%7C%20%E0%B7%83%E0%B7%92%E0%B6%82-orange?style=flat-square)](#)

---

## ✨ What is this?

The **National Fuel Pass Generator** is a free, open-source web tool that lets Sri Lankan citizens generate a properly formatted **QR-based Fuel Quota Pass card** — the same style as the official government-issued card — without needing to install any app, create an account, or share any personal data.

You upload your own QR code image (from the official system), set your weekly fuel quota, and instantly receive a downloadable PNG card styled with the Ministry of Power & Renewable Energy branding, authorized fuel station logos, and a unique pass serial number.

---

## 🚀 How It Works

```
1. Open the app in any browser (desktop or mobile)
2. Click "Build Your Own Card"
3. Enter your weekly fuel quota (in litres)
4. Upload your QR code image (from the official fuel pass system)
5. Click "Generate Pass"
6. Your formatted card is generated instantly — right in your browser
7. Click "Download Pass" to save the PNG image to your device
```

No forms. No accounts. No waiting. The entire process happens **in your browser** in under 10 seconds.

---

## 🔒 Privacy & Data

**Your data is never sent to any server.**

This tool is **100% client-side**. That means:

- ✅ Your QR code image is read by your browser locally — it never leaves your device
- ✅ Your quota information is stored only in your browser's `localStorage`
- ✅ Generated cards are rendered in your browser using `html2canvas` — no uploads
- ✅ Downloads go directly to your device — no server involved
- ✅ No analytics, no trackers, no accounts required
- ✅ Works fully offline after the initial page load (fonts and icons need internet once)

> **We don't have access to your QR code, your quota, or your generated card — ever.**

---

## 📱 Features

| Feature | Details |
|---|---|
| 🏗️ **Card Builder** | Generates a properly formatted fuel pass card matching the official design |
| 📷 **QR Upload** | Upload any image as your QR code — JPEG, PNG, WEBP supported |
| 💾 **Session Save** | Your last generated pass is saved in localStorage for quick access |
| 🕐 **History** | Last 10 generated passes saved automatically, viewable and downloadable |
| 🌐 **Bilingual** | Full English and Sinhala (සිංහල) support across all 3 screens |
| 📱 **Mobile First** | Fully responsive, fits perfectly on all screen sizes — no scroll |
| ⬇️ **Download** | High-quality PNG (3× resolution) downloaded directly to your device |
| 🔒 **Private** | Zero server communication — completely client-side |

---

## 🖥️ Screenshots

| Home | Form | Pass Card |
|---|---|---|
| Light theme homepage with animated background | Simple 2-field form with QR upload | Generated card with ministry branding |

---

## 🛠️ Tech Stack

- **HTML5 / CSS3 / Vanilla JavaScript** — no frameworks, no build tools
- **[Poppins](https://fonts.google.com/specimen/Poppins)** — display font
- **[Noto Sans Sinhala](https://fonts.google.com/noto/specimen/Noto+Sans+Sinhala)** — Sinhala language support
- **[Font Awesome 6](https://fontawesome.com/)** — icons
- **[html2canvas](https://html2canvas.hertzen.com/)** — client-side card rendering to PNG
- **localStorage** — session and history persistence (browser only)

---

## 🚀 Getting Started

### Option 1 — Open directly in browser
Just open `index.html` in any modern browser. No server needed.

```bash
# Clone the repo
git clone https://github.com/harindujayakody/national-fuel-pass.git
cd national-fuel-pass

# Open in browser
open index.html
# or on Windows:
start index.html
```

### Option 2 — Deploy to any static host
This is a single HTML file. Upload it to:
- GitHub Pages
- Netlify / Vercel
- Any shared hosting (cPanel)
- Cloudflare Pages

No backend, no database, no server config needed.

---

## 📁 File Structure

```
national-fuel-pass/
├── index.html   # The entire app (single file)
├── README.md                  # This file
└── LICENSE                    # MIT License
```

---

## 🌐 Pages / Screens

### Page 1 — Home
- Clean light theme with animated background
- Sri Lanka flag accent strip
- "Build Your Own Card" CTA button
- History shortcut in nav
- Feature bar: Instant Generation, QR Ready, Private & Secure, Free Download

### Page 2 — Form
- Weekly quota input
- QR code image upload (tap or drag & drop)
- Session saved indicator in navbar
- History shortcut button
- Trust badges: Build your own card · Data stays on your device · Free & no registration
- Bilingual (EN / සිං)

### Page 3 — Pass Card
- Ministry of Power & Renewable Energy branding
- Your QR code displayed prominently
- Weekly quota, serial number, authorized station logos
- Dialog & Millennium IT ESP credit logos
- High-res PNG download

### Page 4 — History
- Last 10 generated passes stored in localStorage
- Tap any entry to reload it as your active pass
- Per-item delete and clear all option
- Fully translated in EN and Sinhala

---

## 🔧 Customization

To customize the card branding, edit the relevant sections in `index.html`:

```html
<!-- Ministry logo image -->
<img class="card-min-img" src="https://i.imgur.com/8xwykeR.png" .../>

<!-- Fuel station logos -->
<img src="https://i.imgur.com/Nffj92m.png" alt="Lanka IOC"/>
<img src="https://i.imgur.com/TWOh9HV.png" alt="Shell"/>

<!-- Credit logos -->
<img class="cred-img" src="https://i.imgur.com/Z80H5Ht.png" alt="Dialog"/>
<img class="cred-img" src="https://i.imgur.com/Qaw41Az.png" alt="Millennium IT"/>
```

---

## 📜 License

MIT License — free to use, modify, and distribute.

```
Copyright (c) 2024 Infiax Pvt Ltd

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction...
```

---

## 🤝 Contributing

Pull requests are welcome. For major changes, please open an issue first.

1. Fork the repo
2. Create a feature branch (`git checkout -b feature/my-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/my-feature`)
5. Open a Pull Request

---

## 🏢 About Infiax

Built with 💗 by **[Infiax Pvt Ltd](https://infiax.com)** — a Sri Lankan software company.

> This tool is not officially affiliated with the Government of Sri Lanka or the Ministry of Power & Renewable Energy. It is an independent utility to help citizens format their fuel pass cards conveniently.

---

## 📞 Support

- 🐛 **Bug reports:** [Open an issue](https://github.com/harindujayakody/national-fuel-pass/issues)
- 💡 **Feature requests:** [Start a discussion](https://github.com/harindujayakody/national-fuel-pass/discussions)
- 📧 **Contact:** hello@infiax.com