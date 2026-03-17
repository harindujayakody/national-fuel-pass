<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
  xmlns:xhtml="http://www.w3.org/1999/xhtml"
  exclude-result-prefixes="sitemap image xhtml">

<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1"/>
  <title>XML Sitemap · Sri Lanka National Fuel Pass</title>
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&amp;display=swap" rel="stylesheet"/>
  <style>
    *,*::before,*::after{box-sizing:border-box;margin:0;padding:0}
    :root{--r:#D42020;--r2:#A81A1A;--bg:#F8F9FB;--wh:#fff;--txt:#1A1520;--mut:#6B7280;--bdr:#E5E7EB}
    body{font-family:'Poppins',sans-serif;background:var(--bg);color:var(--txt);min-height:100vh}

    /* NAV */
    .nav{background:#fff;border-bottom:1px solid var(--bdr);padding:0 24px;height:52px;display:flex;align-items:center;justify-content:space-between;box-shadow:0 1px 8px rgba(0,0,0,.05);position:sticky;top:0;z-index:100}
    .nav-logo{display:flex;align-items:center;gap:8px;text-decoration:none}
    .nav-logo-text{font-weight:800;font-size:.88rem;letter-spacing:2px;color:#111;text-transform:uppercase}
    .nav-logo-text span{color:var(--r)}
    .nav-badge{font-size:.62rem;font-weight:700;letter-spacing:.5px;background:#FFF1F1;color:var(--r);border:1px solid rgba(212,32,32,.2);border-radius:6px;padding:3px 9px}

    /* HERO */
    .hero{background:linear-gradient(135deg,var(--r2),var(--r) 60%,#E03030);padding:28px 24px 22px;position:relative;overflow:hidden}
    .hero::before{content:'';position:absolute;inset:0;background-image:linear-gradient(rgba(255,255,255,.04) 1px,transparent 1px),linear-gradient(90deg,rgba(255,255,255,.04) 1px,transparent 1px);background-size:24px 24px}
    .hero-inner{position:relative;z-index:1;max-width:860px;margin:0 auto}
    .hero h1{font-size:1.3rem;font-weight:800;color:#fff;letter-spacing:1px;margin-bottom:4px}
    .hero p{font-size:.75rem;color:rgba(255,255,255,.7);letter-spacing:.5px}

    /* STATS BAR */
    .stats{background:#fff;border-bottom:1px solid var(--bdr);padding:0 24px;display:flex;gap:0;max-width:100%}
    .stat{padding:14px 20px;display:flex;align-items:center;gap:8px;border-right:1px solid var(--bdr)}
    .stat:last-child{border-right:none}
    .stat-num{font-size:1.1rem;font-weight:800;color:var(--r)}
    .stat-lbl{font-size:.65rem;color:var(--mut);font-weight:600;letter-spacing:.5px;text-transform:uppercase}

    /* TABLE */
    .wrap{max-width:900px;margin:28px auto;padding:0 20px 48px}
    .tbl-head{display:flex;align-items:center;justify-content:space-between;margin-bottom:12px}
    .tbl-title{font-size:.82rem;font-weight:800;color:var(--txt);letter-spacing:.5px;text-transform:uppercase;display:flex;align-items:center;gap:8px}
    .tbl-title::before{content:'';display:block;width:3px;height:16px;background:var(--r);border-radius:2px}
    .tbl-sub{font-size:.65rem;color:var(--mut);font-weight:500}

    table{width:100%;border-collapse:collapse;background:#fff;border-radius:14px;overflow:hidden;box-shadow:0 2px 16px rgba(0,0,0,.06),0 0 0 1px rgba(0,0,0,.04)}
    thead tr{background:var(--r)}
    thead th{padding:12px 16px;text-align:left;font-size:.68rem;font-weight:700;color:#fff;letter-spacing:1px;text-transform:uppercase;white-space:nowrap}
    thead th:last-child{text-align:center}
    tbody tr{border-bottom:1px solid #F0F2F5;transition:background .15s}
    tbody tr:last-child{border-bottom:none}
    tbody tr:hover{background:#FFF8F8}
    tbody td{padding:14px 16px;font-size:.78rem;color:var(--txt);vertical-align:middle}
    tbody td:last-child{text-align:center}

    /* URL cell */
    .url-cell a{color:var(--r);text-decoration:none;font-weight:600;font-size:.78rem;word-break:break-all;display:flex;align-items:center;gap:6px}
    .url-cell a:hover{text-decoration:underline}
    .url-cell a svg{flex-shrink:0;opacity:.5}

    /* Priority badge */
    .pri{display:inline-block;padding:2px 10px;border-radius:20px;font-size:.68rem;font-weight:700;letter-spacing:.3px}
    .pri-high{background:#FFF1F1;color:var(--r);border:1px solid rgba(212,32,32,.2)}
    .pri-med{background:#FFF7ED;color:#D97706;border:1px solid rgba(217,119,6,.2)}
    .pri-low{background:#F0FFF4;color:#16A34A;border:1px solid rgba(22,163,74,.2)}

    /* Change freq */
    .freq{font-size:.7rem;color:var(--mut);font-weight:500}

    /* Date */
    .date{font-size:.7rem;color:var(--mut);white-space:nowrap}

    /* Index table */
    .index-badge{display:inline-flex;align-items:center;gap:5px;background:#EFF6FF;color:#1D4ED8;border:1px solid rgba(29,78,216,.15);border-radius:6px;padding:3px 10px;font-size:.68rem;font-weight:700}

    /* Footer */
    .foot{text-align:center;padding:24px;font-size:.62rem;color:var(--mut);line-height:1.8}
    .foot a{color:var(--r);text-decoration:none;font-weight:700}
  </style>
</head>
<body>

<nav class="nav">
  <a class="nav-logo" href="/">
    <span class="nav-logo-text">FUEL<span>PASS</span></span>
  </a>
  <span class="nav-badge">XML Sitemap</span>
</nav>

<div class="hero">
  <div class="hero-inner">
    <xsl:choose>
      <xsl:when test="//sitemap:sitemapindex">
        <h1>XML Sitemap Index</h1>
        <p>Sri Lanka National Fuel Pass · fuelpass.infiax.com</p>
      </xsl:when>
      <xsl:otherwise>
        <h1>XML Sitemap — Pages</h1>
        <p>Sri Lanka National Fuel Pass · fuelpass.infiax.com</p>
      </xsl:otherwise>
    </xsl:choose>
  </div>
</div>

<!-- Stats bar -->
<div class="stats">
  <xsl:choose>
    <xsl:when test="//sitemap:sitemapindex">
      <div class="stat">
        <span class="stat-num"><xsl:value-of select="count(//sitemap:sitemap)"/></span>
        <span class="stat-lbl">Sitemaps</span>
      </div>
    </xsl:when>
    <xsl:otherwise>
      <div class="stat">
        <span class="stat-num"><xsl:value-of select="count(//sitemap:url)"/></span>
        <span class="stat-lbl">URLs</span>
      </div>
      <div class="stat">
        <span class="stat-num"><xsl:value-of select="count(//sitemap:url[sitemap:priority >= 0.9])"/></span>
        <span class="stat-lbl">High Priority</span>
      </div>
      <div class="stat">
        <span class="stat-num"><xsl:value-of select="count(//image:image)"/></span>
        <span class="stat-lbl">Images</span>
      </div>
      <div class="stat">
        <span class="stat-num"><xsl:value-of select="count(//xhtml:link)"/></span>
        <span class="stat-lbl">Hreflang</span>
      </div>
    </xsl:otherwise>
  </xsl:choose>
</div>

<div class="wrap">

  <!-- ── SITEMAP INDEX ── -->
  <xsl:if test="//sitemap:sitemapindex">
    <div class="tbl-head">
      <span class="tbl-title">Sitemap Index</span>
      <span class="tbl-sub">All sub-sitemaps in this site</span>
    </div>
    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>Sitemap URL</th>
          <th>Last Modified</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="//sitemap:sitemap">
          <tr>
            <td><xsl:value-of select="position()"/></td>
            <td class="url-cell">
              <a href="{sitemap:loc}">
                <svg width="13" height="13" viewBox="0 0 16 16" fill="none"><path d="M6 3H3a1 1 0 00-1 1v9a1 1 0 001 1h9a1 1 0 001-1v-3M10 2h4m0 0v4m0-4L8 10" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                <xsl:value-of select="sitemap:loc"/>
              </a>
            </td>
            <td class="date"><xsl:value-of select="sitemap:lastmod"/></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:if>

  <!-- ── PAGES SITEMAP ── -->
  <xsl:if test="//sitemap:url">
    <div class="tbl-head">
      <span class="tbl-title">Pages</span>
      <span class="tbl-sub"><xsl:value-of select="count(//sitemap:url)"/> URLs indexed</span>
    </div>
    <table>
      <thead>
        <tr>
          <th>#</th>
          <th>URL</th>
          <th>Priority</th>
          <th>Change Freq</th>
          <th>Last Modified</th>
        </tr>
      </thead>
      <tbody>
        <xsl:for-each select="//sitemap:url">
          <tr>
            <td><xsl:value-of select="position()"/></td>
            <td class="url-cell">
              <a href="{sitemap:loc}">
                <svg width="13" height="13" viewBox="0 0 16 16" fill="none"><path d="M6 3H3a1 1 0 00-1 1v9a1 1 0 001 1h9a1 1 0 001-1v-3M10 2h4m0 0v4m0-4L8 10" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"/></svg>
                <xsl:value-of select="sitemap:loc"/>
              </a>
            </td>
            <td>
              <xsl:choose>
                <xsl:when test="sitemap:priority >= 0.9">
                  <span class="pri pri-high"><xsl:value-of select="sitemap:priority"/></span>
                </xsl:when>
                <xsl:when test="sitemap:priority >= 0.6">
                  <span class="pri pri-med"><xsl:value-of select="sitemap:priority"/></span>
                </xsl:when>
                <xsl:otherwise>
                  <span class="pri pri-low"><xsl:value-of select="sitemap:priority"/></span>
                </xsl:otherwise>
              </xsl:choose>
            </td>
            <td class="freq"><xsl:value-of select="sitemap:changefreq"/></td>
            <td class="date"><xsl:value-of select="sitemap:lastmod"/></td>
          </tr>
        </xsl:for-each>
      </tbody>
    </table>
  </xsl:if>

</div>

<div class="foot">
  <a href="/">Sri Lanka National Fuel Pass</a> ·
  Generated for <a href="https://fuelpass.infiax.com">fuelpass.infiax.com</a> ·
  Made by <a href="https://infiax.com" target="_blank">Infiax Pvt Ltd</a>
</div>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
