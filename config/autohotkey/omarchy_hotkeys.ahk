; Omarchy for Windows - AutoHotkey v2 Hotkey Bridge
#Requires AutoHotkey v2.0

; Alt + Shift + Enter -> Windows Terminal
!<+Enter:: {
    Run("wt.exe")
}

; Alt + Shift + E -> File Explorer
!<+e:: {
    Run("explorer.exe")
}

; Alt + Shift + T -> Omarchy Theme Switcher
!<+t:: {
    Run("powershell.exe -ExecutionPolicy Bypass -File `"$A_ScriptDir\..\..\scripts\theme-switcher.ps1`"")
}

; Alt + Shift + S -> Snipping Tool
!<+s:: {
    Run("snippingtool.exe")
}
