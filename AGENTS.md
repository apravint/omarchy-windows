# AGENTS.md - Developer & AI Agent Operations Manual for `omarchy-windows` 🤖

This document is the definitive operational guide for autonomous AI coding agents (Antigravity, Claude, Cursor, OpenAI Codex, OpenHands) operating within this repository.

---

## 🎯 1. System Overview & Core Philosophy

**🌌 Omarchy for Windows (`omarchy-windows`)**
> Authentic Glass Acrylic Tiling Desktop Suite for Windows 10 & 11 omarchy-windows brings the legendary Omarchy Linux tiling desktop aesthetic, acrylic glass status bars, dynamic theme switcher, and modal keybindings directly to Windows 10 and 11. - 🪟 Rust-Powered Tiling Window Manager: Powered by GlazeWM for zero-lag automatic window tiling, workspace switching, and gaps.

---

## 🏗️ 2. Repository Structure & Directory Map

| Path | Role & Architectural Responsibility |
| :--- | :--- |
| `assets/` | Static media assets, fonts, icons, soundscapes |
| `config/` | Default system and application configurations |
| `scripts/` | Subsystem directory (scripts) |

---

## ⚙️ 3. Executable Verification Pipeline

Before marking any task complete, an AI agent **must** run the following verification steps sequentially:

### Tier 1: Markdown Syntax & Link Integrity
Ensure clean CommonMark/GFM syntax, valid relative links, and zero broken image references.

---

## 🛡️ 4. Architectural Invariants & Non-Negotiable Rules

### Strict Invariants ("Never Do" List):
1. **Documentation Integrity:** Preserve all existing comments, docstrings, and license headers. Never truncate context.
2. **Clean Atomic Diffs:** Keep git commits minimal, focused, and verified.

### Security & Environment Variables:
- All API keys and secrets must be loaded strictly from environment variables.
- Never commit `.env`, `.pem`, token files, or private credentials.

---

## 🤖 5. Autonomous Agent Operational Protocol

When dispatched to resolve an issue, implement a feature, or refactor code in this repo:

1. **Phase 1 — Explore & Plan:**
   - Read this `AGENTS.md` and relevant source files.
   - Check existing tests to establish the baseline.
2. **Phase 2 — Act (Surgical Implementation):**
   - Implement changes with minimal blast radius.
   - Adhere to the established code style and existing conventions.
3. **Phase 3 — Verify:**
   - Run the Tier 1, 2, and 3 verification commands listed above.
   - Ensure all existing and new tests pass cleanly.
4. **Phase 4 — Reflect:**
   - Review `git diff` to confirm zero unintended whitespace or collateral changes.
   - Confirm no untracked scratch files remain.

---
*Maintained by Ayyappa Pravin • Engineered for Antigravity, Claude, Cursor & Modern Autonomous AI Agents.*
