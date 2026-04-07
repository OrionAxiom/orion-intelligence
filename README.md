# ORION Intelligence System — 三層架構

**Repository:** orion-intelligence  
**Type:** Public  
**Owner:** OrionAxiom (Franco @ 致一管家 CatalystKeep)  

---

## 📁 架構概覽

### 🔐 LAYER 1: Password Protected（公開 Repo，密碼訪問）

所有以下頁面都需要密碼：**`axiom2026`**

| 資料夾 | 內容 | 訪問 |
|--------|------|------|
| `/dashboard/` | 系統監控儀表板 | 密碼保護 |
| `/briefings/` | 每日情報簡報 | 密碼保護 |
| `/backup/wiki/` | 知識庫頁面 | 密碼保護 |
| `/backup/raw/` | RAW entries | 密碼保護 |

### 🔓 LAYER 2: Public Content（完全公開）

| 資料夾 | 內容 | 訪問 |
|--------|------|------|
| `/public/` | 產品頁面 | 公開 |

### 🔒 LAYER 3: Private Backup（機密）
儲存於 **orion-backup** (Private Repo)：
- `leads/` — 潛在客戶紀錄
- `audit-reports/` — 商戶審計報告
- `logs/` — 每日運作日誌

---

## 🌐 GitHub Pages URLs

| 頁面 | URL | 權限 |
|------|-----|------|
| Dashboard | `https://orionaxiom.github.io/orion-intelligence/dashboard/` | 密碼 |
| Briefings | `https://orionaxiom.github.io/orion-intelligence/briefings/` | 密碼 |
| WIKI | `https://orionaxiom.github.io/orion-intelligence/backup/wiki/` | 密碼 |
| RAW | `https://orionaxiom.github.io/orion-intelligence/backup/raw/` | 密碼 |
| Public | `https://orionaxiom.github.io/orion-intelligence/public/` | 公開 |

---

## 🔐 密碼

**所有受保護頁面：** `axiom2026`

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
# For public repo (password protected content)
/tmp/orion-intelligence/auto-push.sh "[ORION] Message"

# For private backup (sensitive content)
/tmp/orion-backup/auto-push.sh "[ORION-BACKUP] Message"
```

---

## 📁 資料分流規則

| 資料類型 | 目標 Repo | 訪問權限 |
|----------|-----------|----------|
| Dashboard | orion-intelligence | 密碼保護 |
| Briefings | orion-intelligence | 密碼保護 |
| WIKI | orion-intelligence | 密碼保護 |
| RAW entries | orion-intelligence | 密碼保護 |
| Public Page | orion-intelligence | 公開 |
| Leads | orion-backup | Private |
| Audit Reports | orion-backup | Private |
| Logs | orion-backup | Private |

---

*「永不停止掃描。永不停止狩獵。永不停止成長。」* 🌌

**ORION Intelligence System**  
致一管家 CatalystKeep
