# Cybersecurity Roadmap

A structured, repo-driven cybersecurity learning roadmap for Linux — fully usable on **Kali Linux** and any other Linux distro (Debian/Ubuntu, Arch, Fedora/RHEL).

Built by curating the best open-source cybersecurity repos on GitHub into a phased path from fundamentals to job-ready pentesting.

## What's inside

```
cybersecurity-roadmap/
├── README.md                 # You are here
├── docs/
│   ├── 00-foundations.md     # Computer science & security basics
│   ├── 01-linux.md           # Linux internals & hardening
│   ├── 02-networking.md      # Networking & protocols
│   ├── 03-web.md             # Web application security
│   ├── 04-pentesting.md      # Offensive security & bug bounty
│   ├── 05-blue-team.md       # Defense, SOC & incident response
│   └── 06-roadmap-links.md   # Extra repos & learning links
├── scripts/
│   ├── setup.sh              # Distro-agnostic tool installer (apt/pacman/dnf)
│   └── check-tools.sh        # Verify installed tools
└── resources/
    └── (cheatsheets, notes)
```

## Quick start

```bash
# 1. Clone
git clone https://github.com/<your-username>/cybersecurity-roadmap.git
cd cybersecurity-roadmap

# 2. Install tools (auto-detects your distro)
bash scripts/setup.sh

# 3. Verify what's installed
bash scripts/check-tools.sh

# 4. Open in VS Code
code .
```

## How to use this roadmap

1. Work through phases **in order** — each builds on the last.
2. Every phase lists curated GitHub repos. Star the ones you use.
3. Use `scripts/setup.sh` to install the tooling for each phase.
4. Keep notes in `resources/` — your notes compound over time.

## Distro support

| Distro / Family | Package manager | Status |
|---|---|---|
| Kali Linux, Debian, Parrot | `apt` | ✅ tested |
| Ubuntu | `apt` | ✅ tested |
| Arch, BlackArch, Manjaro | `pacman` | ✅ supported |
| Fedora, RHEL, Rocky | `dnf` | ✅ supported |

All scripts are POSIX-ish bash with **no distro-specific hardcoding** — they detect `apt-get`, `pacman`, or `dnf` at runtime.

## Progress tracking

- [ ] Phase 0 — Foundations
- [ ] Phase 1 — Linux
- [ ] Phase 2 — Networking
- [ ] Phase 3 — Web Security
- [ ] Phase 4 — Pentesting
- [ ] Phase 5 — Blue Team

## License

MIT — reuse freely.
