# ORION Intelligence System — 三層架構

**Repository:** orion-intelligence  
**Type:** Public  
**Owner:** OrionAxiom (Franco @ 致一管家 CatalystKeep)  

---

## 📁 架構概覽

### 🔓 LAYER 1: Public Content（公開）

| 資料夾 | 內容 | 訪問 |
|--------|------|------|
| `/dashboard/` | 系統監控儀表板 | 密碼保護 (axiom2026) |
| `/briefings/` | 每日情報簡報 | 密碼保護 (axiom2026) |
| `/backup/wiki/` | 知識庫頁面 | 密碼保護 (axiom2026) |
| `/backup/raw/` | RAW entries | 公開 |
| `/public/` | 產品頁面 | 公開 |

### 🔒 LAYER 2: Private Backup（機密）
儲存於 **orion-backup** (Private Repo)：
- `leads/` — 潛在客戶紀錄
- `audit-reports/` — 商戶審計報告
- `logs/` — 每日運作日誌

---

## 🌐 GitHub Pages URLs

| 頁面 | URL |
|------|-----|
| Dashboard | `https://orionaxiom.github.io/orion-intelligence/dashboard/` |
| Briefings | `https://orionaxiom.github.io/orion-intelligence/briefings/` |
| WIKI | `https://orionaxiom.github.io/orion-intelligence/backup/wiki/` |
| Public | `https://orionaxiom.github.io/orion-intelligence/public/` |

---

## 🔐 密碼保護

以下頁面需要密碼：**`axiom2026`**
- Dashboard
- Briefings
- WIKI

---

## 🎨 設計系統

| 用途 | 顏色 |
|------|------|
| 主色（深藍） | `#1A237E` |
| 輔色（金色） | `#FFD600` |
| 背景 | `#0A0E27` |
| 文字 | `#FFFFFF` |

---

## 🔄 Auto-Push

```bash
# For public content
/tmp/orion-intelligence/auto-push.sh "[ORION] Message"

# For sensitive content (goes to orion-backup)
/tmp/orion-backup/auto-push.sh "[ORION-BACKUP] Message"
```

---

*「永不停止掃描。永不停止狩獵。永不停止成長。」* 🌌

**ORION Intelligence System**  
致一管家 CatalystKeep
