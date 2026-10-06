# 🌌 Omarchy for Windows (`omarchy-windows`)

> **Authentic Glass Acrylic Tiling Desktop Suite for Windows 10 & 11**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Tiling WM](https://img.shields.io/badge/WM-GlazeWM-blue.svg)]()
[![Platform](https://img.shields.io/badge/platform-Windows%2010%20%7C%2011-0078D4.svg)]()

`omarchy-windows` brings the legendary **Omarchy Linux** tiling desktop aesthetic, acrylic glass status bars, dynamic theme switcher, and modal keybindings directly to Windows 10 and 11.

---

## ✨ Features

- 🪟 **Rust-Powered Tiling Window Manager**: Powered by GlazeWM for zero-lag automatic window tiling, workspace switching, and gaps.
- 🔮 **Glass Acrylic Status Bar**: Yasb bar featuring workspace indicators, CPU/RAM monitoring, and digital clock.
- 🎨 **22 Curated Omarchy Themes**: Tokyo Night, Catppuccin Mocha, Nord, Cyberpunk, Gruvbox, Dracula, Synthwave, and Everforest.
- ⌨️ **Vim Hotkey Bridge**: AutoHotkey v2 keybindings (`Alt+H/J/K/L` navigation, `Alt+Enter` terminal, `Alt+Shift+Q` close window).
- 🚀 **Turnkey Installer**: Automated PowerShell installation script (`install.ps1`).

---

## 🚀 Quick Start (Windows 10 / 11)

Open **PowerShell as Administrator** and run:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force
git clone https://github.com/apravint/omarchy-windows.git
cd omarchy-windows
.\install.ps1
```

---

## ⌨️ Keybindings Cheat Sheet

| Keybinding | Action |
| :--- | :--- |
| `Alt + Enter` | Launch Windows Terminal (`wt.exe`) |
| `Alt + H / J / K / L` | Focus window (Left / Down / Up / Right) |
| `Alt + Shift + H / J / K / L` | Move window position |
| `Alt + 1 .. 6` | Switch Workspace 1 - 6 |
| `Alt + Shift + 1 .. 6` | Send active window to Workspace 1 - 6 |
| `Alt + Space` | Toggle Floating / Tiling Mode |
| `Alt + Shift + Q` | Close active window |
| `Alt + Shift + T` | Open Live Theme Switcher |

---

## 📄 License

Distributed under the MIT License. Built by **Pravin Tamilan ([@apravint](https://github.com/apravint))**.
