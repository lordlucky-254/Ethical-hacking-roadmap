# Ethical Hacking Toolkit

A structured, Linux-first resource for learning ethical hacking (penetration testing and security defense). It contains a learning roadmap, a categorized guide to the most-used security tools, cheatsheets, and scripts that install and verify those tools.

> **Read [ETHICS.md](ETHICS.md) before you run any tool.** Only test systems you own or have explicit written permission to test.

## What's inside

```
ethical-hacking-toolkit/
├── README.md              # You are here
├── ETHICS.md              # Rules of engagement and legal notes
├── LICENSE                # MIT
├── docs/
│   ├── roadmap.md         # Phased learning path (foundations -> job-ready)
│   ├── tools.md           # Categorized tool guide: what it does, when to use it
│   ├── labs.md            # Legal practice targets and platforms
│   └── cheatsheet.md      # Quick command reference
├── scripts/
│   ├── setup.sh           # Installs tools using apt, pacman, or dnf (auto-detected)
│   └── check-tools.sh     # Reports which tools are installed
└── resources/
    └── notes/             # Your own notes go here
```

## Quick start

```bash
# 1. Clone
git clone https://github.com/<your-username>/ethical-hacking-toolkit.git
cd ethical-hacking-toolkit

# 2. Install the toolkit (auto-detects apt, pacman, or dnf)
bash scripts/setup.sh

# 3. Verify what is installed
bash scripts/check-tools.sh

# 4. Start with the roadmap
less docs/roadmap.md
```

## Supported systems

| Distro / family                  | Package manager | Status          |
|----------------------------------|-----------------|-----------------|
| Kali Linux, Debian, Parrot, Ubuntu | `apt`         | Supported       |
| Arch, BlackArch, Manjaro         | `pacman`        | Supported       |
| Fedora, RHEL, Rocky              | `dnf`           | Supported       |

Some tools are not packaged on every distro. `setup.sh` keeps going when a package is missing and tells you which ones to install manually. Kali ships most of these tools out of the box.

## How to use this toolkit

1. Follow the roadmap **in order**. Each phase builds on the one before it.
2. Build a lab (see [docs/labs.md](docs/labs.md)). Practice on targets you are allowed to attack.
3. Read the tool guide before you run a tool. Know what it does and what traffic it generates.
4. Keep your own notes in `resources/notes/`. Notes compound over time.

## Contributing

Pull requests are welcome: fix a broken install command, add a tool, or improve a guide. Keep contributions free of attacks on real systems and of anything aimed at harming others.

## License

MIT. See [LICENSE](LICENSE).
