# Practice Labs and Legal Targets

Practice only on the platforms and machines listed here, or on systems you build yourself. Each option below is designed for security practice.

## Online platforms

| Platform | Best for | Notes |
|----------|----------|-------|
| **OverTheWire (Bandit, Natas, Leviathan)** | Linux, shell, and web basics | Free, text-based wargames |
| **TryHackMe** | Guided learning paths | Beginner-friendly, browser-based |
| **Hack The Box** | Realistic machines and challenges | Free and paid tiers |
| **PortSwigger Web Security Academy** | Web vulnerabilities | Free, excellent explanations |
| **picoCTF** | Beginner CTF challenges | Free, suited to students |
| **CyberDefenders** | Blue team and forensics labs | Real incident scenarios |

## Self-hosted vulnerable apps and VMs

Run these in an **isolated** network, such as a VirtualBox or VMware host-only network, or a Docker network with no internet access.

| Target | What it teaches |
|--------|-----------------|
| **OWASP Juice Shop** | Modern web vulnerabilities across the OWASP Top 10 |
| **DVWA** (Damn Vulnerable Web App) | SQL injection, XSS, command injection, file inclusion |
| **Metasploitable 2 / 3** | Network services and exploitation |
| **VulnHub machines** | Full boot-to-root challenges (download, then keep offline) |
| **bWAPP** | Broad web vulnerability coverage |

### Quick start: OWASP Juice Shop with Docker

```bash
docker run -d -p 127.0.0.1:3000:3000 bkimminich/juice-shop
# Then open http://127.0.0.1:3000 in your browser
```

Binding to `127.0.0.1` keeps the app off your LAN.

## Building your own lab

1. Install VirtualBox or VMware Workstation Player (free for personal use).
2. Create an attacker VM (Kali Linux) and a target VM (Metasploitable or a VulnHub box).
3. Put both on a **host-only** network, so neither can reach the internet or your home network.
4. Take a snapshot before every exercise so you can reset quickly.
