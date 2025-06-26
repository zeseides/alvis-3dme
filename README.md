# alvis-3dme | 3D /me Command

一個用 Lua 寫的 FiveM 腳本，實現帶有 3D 顯示效果的 /me 指令。

A FiveM script written in Lua that implements the /me command with 3D text display.

[中文版本](#中文版本) | [English Version](#english-version)

---

## 中文版本

### 功能說明
/me 指令允許您在玩家頭頂顯示特定動作文字。這個功能特別適用於無法在遊戲中完成的角色扮演動作。

<img src=https://r2.fivemanage.com/R6bhBKEw45uM4sNjDcQcG/alvis-3dme.png>

### 安裝方法
* 下載此資源包；
* 將其拖放到您的 resources 資料夾中；
* 在伺服器設定檔中加入 ```ensure alvis-3dme```。

### 使用方法
* 在聊天室中輸入 /me 後面跟上您的動作。

### 設定選項
| 參數 | 檔案位置 | 建議設定 |
| --- | --- | --- |
| 文字顏色 | ```config.lua``` : 第8行 | ```color = { r = 230, g = 230, b = 230, a = 255 }``` |
| 文字字體 | ```config.lua``` : 第9行 | ```font = 0``` ([可用字體](https://imgur.com/a/oV3ciWs)) |
| 螢幕顯示時間 | ```config.lua``` : 第10行 | ```time = 7000``` (毫秒) |
| 語言設定 | ```config.lua``` : 第7行 | ```language = 'zh'``` (中文) 或 ```'en'``` (英文) |
| 顯示距離 | ```config.lua``` : 第12行 | ```dist = 250``` |

### 更新記錄

#### V4.0 (最新版本)
* 移除了可疑的混淆代碼檔案（gate.lua）
* 新增中文語言支援
* 優化代碼結構和效能
* 修正語言設定問題
* 預設使用中文介面

#### V3.0
* 大幅重構代碼
* 重要效能優化
* 多個 `/me` 不再疊加，而是替換顯示

### 注意事項
* 如果您使用自訂聊天室資源，此腳本可能無法正常運作
* 此腳本可能與其他 /me 腳本衝突（請停用其他腳本）
* 此腳本完全獨立運作，無需其他依賴

---

## English Version

### Description
The /me command allows you to display specific action text above a player's head. It's particularly useful for roleplay actions that cannot be performed in-game.

<img src=https://r2.fivemanage.com/R6bhBKEw45uM4sNjDcQcG/alvis-3dme.png>

### Installation
* Download the resource;
* Drag and drop it into your resources folder;
* Add ```ensure alvis-3dme``` to your server configuration file.

### How to Use
* In the chat, type /me followed by your action.

### Configuration Options
| Parameter | File Location | Suggested Setting |
| --- | --- | --- |
| Text Color | ```config.lua``` : line 8 | ```color = { r = 230, g = 230, b = 230, a = 255 }``` |
| Text Font | ```config.lua``` : line 9 | ```font = 0``` ([available fonts](https://imgur.com/a/oV3ciWs)) |
| Display Time | ```config.lua``` : line 10 | ```time = 7000``` (milliseconds) |
| Language | ```config.lua``` : line 7 | ```language = 'zh'``` (Chinese) or ```'en'``` (English) |
| Display Distance | ```config.lua``` : line 12 | ```dist = 250``` |

### Updates

#### V4.0 (Latest)
* Removed suspicious obfuscated code file (gate.lua)
* Added Chinese language support  
* Optimized code structure and performance
* Fixed language configuration issues
* Default to Chinese interface for Chinese users

#### V3.0
* Extensive code refactoring
* Major performance optimizations
* Multiple `/me` commands no longer stack but replace each other

### Notes
* This may not work if you are using a custom chat resource
* This could conflict with other /me scripts (disable them)
* This script is fully standalone and requires no dependencies

---

## 技術支援 | Technical Support

如有問題請聯繫原作者或在相關論壇發布。

For issues, please contact the original author or post on relevant forums.

**原作者 | Original Author:** Alvis  
**版本 | Version:** 4.0  
**授權 | License:** 開源 | Open Source
