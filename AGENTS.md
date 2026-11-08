# AGENTS.md - Developer & AI Agent Guide for omarchy-windows 🤖

## 🎯 Repository Overview
**omarchy-windows**: Authentic Glass Acrylic Tiling Desktop Suite for Windows 10 & 11 omarchy-windows brings the legendary Omarchy Linux tiling desktop aesthetic, acrylic glass status bars, dynamic theme switcher, and modal keybindings directly to Windows 10 and 11.

---

## 🏗️ Repository Architecture
Key directories and entrypoints: `LICENSE, README.md, assets/, config/, install.ps1, scripts/, uninstall.ps1`.

### Tech Stack & Runtime
- **Target Platform:** Windows 11 / PowerShell Automation
- **Scripting:** PowerShell (`.ps1`)

## ⚙️ Executable Verification Commands

### 1. PowerShell Script Syntax Check
```bash
pwsh -Command "& { Get-ChildItem -Filter *.ps1 | ForEach-Object { [System.Management.Automation.Language.Parser]::ParseFile($_.FullName, [ref]$null, [ref]$null) } }"
```

---

## 🛡️ Coding & Safety Guidelines for Autonomous Agents

1. **Documentation Integrity:** Preserve all existing docstrings, header comments, and licensing banners. Never delete context unless specifically instructed.
2. **Zero Hardcoded Secrets:** Never embed API keys, OAuth tokens, personal access tokens, or sensitive credentials in committed files. Read credentials exclusively from environment variables or secure credential paths.
3. **Git Hygiene:**
   - Do not force-push (`git push --force`) or execute destructive resets.
   - Never modify root git configurations or harness infrastructure outside task scope.
   - Keep git diffs atomic, focused, and verified before committing.
4. **Agent Workflow Protocol:**
   - **Plan:** Inspect codebase architecture and dependencies before editing.
   - **Act:** Make minimal, clean, high-precision changes.
   - **Verify:** Run the appropriate verification commands listed above.
   - **Reflect:** Confirm zero regressions and review `git diff`.

---
*Maintained by Ayyappa Pravin • Built for Antigravity, Claude, Cursor & Autonomous AI Agents.*
