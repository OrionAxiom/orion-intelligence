# ORION Intelligence System — 三層架構

**Repository:** orion-intelligence  
**Owner:** OrionAxiom (Franco @ 致一管家 CatalystKeep)  
**Classification:** Private — Axiom Business Intelligence  

---

## 📁 架構概覽

### LAYER 1: Private Backup（非公開）
自動備份所有 ORION 運作數據

| 資料夾 | 內容 | 更新頻率 |
|--------|------|----------|
| `/backup/raw/` | 每日 RAW entries ([RAW-YYYY-MM-DD]) | 每日 09:00 |
| `/backup/wiki/` | 所有 WIKI 頁面 ([WIKI-CATEGORY]) | 每日 09:30 |
| `/backup/logs/` | 每日 LOG ([LOG-YYYY-MM-DD]) | 每日 21:00 |
| `/backup/leads/` | Lead 紀錄 | 每日 14:00 |
| `/briefings/` | 每日 Daily Briefing | 每日 10:00 |
| `/audit-reports/` | 商戶審計報告 | 按需生成 |

### LAYER 2: Internal Dashboard（密碼保護）
GitHub Pages: `/dashboard/index.html`  
**URL:** `https://orionaxiom.github.io/orion-intelligence/dashboard/`  
**密碼:** [另行提供]

功能：
- 今日 Daily Briefing 顯示
- 6 個 cron job 狀態監控
- Lead Pipeline 概覽
- Knowledge Base 統計
- 每日自評分數趨勢圖

### LAYER 3: Public Product Page（公開）
GitHub Pages: `/public/index.html`  
**URL:** `https://orionaxiom.github.io/orion-intelligence/public/`  

功能：
- ORION 每週 HK AI 商業情報摘要
- 付費訂閱 CTA（將來接入 Stripe/PayMe）
- 品牌：致一管家 CatalystKeep

---

## 🎨 設計系統

| 用途 | 顏色 |
|------|------|
| 主色（深藍） | `#1A237E` |
| 輔色（金色） | `#FFD600` |
| 背景 | `#0A0E27` |
| 文字 | `#FFFFFF` |

---

## 🔄 Auto-Push 流程

每個 cron job 完成後執行：
```bash
#!/bin/bash
# auto-push.sh
cd /tmp/orion-intelligence
git add .
git commit -m "[ORION-{JOB}] YYYY-MM-DD HH:MM"
git push origin master
```

---

*「永不停止掃描。永不停止狩獵。永不停止成長。」* 🌌
