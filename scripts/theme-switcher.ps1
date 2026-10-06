# Omarchy Windows Live Theme Switcher Script
param(
    [string]$ThemeName = "tokyo-night"
)

$Themes = @{
    "tokyo-night"      = @{ Border="#7aa2f7"; Background="#1a1b26"; Accent="#bb9af7" }
    "catppuccin-mocha" = @{ Border="#cba6f7"; Background="#1e1e2e"; Accent="#89b4fa" }
    "nord"             = @{ Border="#88c0d0"; Background="#2e3440"; Accent="#81a1c1" }
    "cyberpunk"        = @{ Border="#ff0055"; Background="#080811"; Accent="#00ffcc" }
    "gruvbox-dark"     = @{ Border="#fe8019"; Background="#282828"; Accent="#fabd2f" }
    "dracula"          = @{ Border="#bd93f9"; Background="#282a36"; Accent="#ff79c6" }
    "synthwave"        = @{ Border="#ff7edb"; Background="#261447"; Accent="#36f9f6" }
    "everforest"       = @{ Border="#a7c080"; Background="#2b3339"; Accent="#dbbc7f" }
}

if (-not $Themes.ContainsKey($ThemeName)) {
    Write-Host "Available Omarchy Themes: $($Themes.Keys -join ', ')" -ForegroundColor Cyan
    return
}

$Selected = $Themes[$ThemeName]
Write-Host "⚡ Applying Omarchy Theme: $ThemeName" -ForegroundColor Green

# Update GlazeWM Active Border Color
$GlazeConfigPath = "$env:USERPROFILE\.glazewm\config.yaml"
if (Test-Path $GlazeConfigPath) {
    (Get-Content $GlazeConfigPath) -replace 'color: "#[0-9a-fA-F]{6}"', "color: `"$($Selected.Border)`"" | Set-Content $GlazeConfigPath
}

# Reload GlazeWM
if (Get-Process glazewm -ErrorAction SilentlyContinue) {
    glazewm command reload
}

Write-Host "✔ Theme $ThemeName applied successfully!" -ForegroundColor Green
