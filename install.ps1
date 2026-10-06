# Omarchy for Windows - Turnkey Automated Installer
# Run in PowerShell as Administrator:
# Set-ExecutionPolicy Bypass -Scope Process -Force; .\install.ps1

Write-Host @"
================================================================
          ⚡ OMARCHY FOR WINDOWS INSTALLER v1.0.0 ⚡
   Authentic Glass Acrylic Tiling Desktop Suite for Windows
================================================================
"@ -ForegroundColor Cyan

# 1. Install Winget Dependencies
Write-Host "📦 Installing Tiling WM (GlazeWM) & Tooling..." -ForegroundColor Yellow
winget install --id GlazeWM.GlazeWM -e --accept-source-agreements --accept-package-agreements
winget install --id AutoHotkey.AutoHotkey -e --accept-source-agreements --accept-package-agreements

# 2. Deploy Configuration Files
$GlazeDir = "$env:USERPROFILE\.glazewm"
$YasbDir = "$env:USERPROFILE\.yasb"

New-Item -ItemType Directory -Force -Path $GlazeDir | Out-Null
New-Item -ItemType Directory -Force -Path $YasbDir | Out-Null

Copy-Item ".\config\glazewm\config.yaml" -Destination "$GlazeDir\config.yaml" -Force
Copy-Item ".\config\yasb\styles.css" -Destination "$YasbDir\styles.css" -Force

Write-Host @"
✔ Omarchy for Windows successfully installed!
Press Alt+Enter to open Terminal, Alt+H/J/K/L to navigate tiled windows.
Run .\scripts\theme-switcher.ps1 -ThemeName catppuccin-mocha to switch themes.
"@ -ForegroundColor Green
