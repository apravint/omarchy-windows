# Omarchy for Windows - Clean Uninstaller Script
# Run in PowerShell as Administrator

Write-Host "⚡ Uninstalling Omarchy for Windows Configurations..." -ForegroundColor Yellow

$GlazeDir = "$env:USERPROFILE\.glazewm"
$YasbDir = "$env:USERPROFILE\.yasb"

if (Test-Path $GlazeDir) { Remove-Item -Recurse -Force $GlazeDir }
if (Test-Path $YasbDir) { Remove-Item -Recurse -Force $YasbDir }

# Stop GlazeWM process if running
if (Get-Process glazewm -ErrorAction SilentlyContinue) {
    Stop-Process -Name glazewm -Force
}

Write-Host "✔ Omarchy for Windows configs cleanly uninstalled." -ForegroundColor Green
