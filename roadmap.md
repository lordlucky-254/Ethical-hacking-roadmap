# Ethical Hacking Roadmap

Work through the phases in order. Each phase builds on the last. Expect each phase to take weeks to months, depending on your time and background.

## Phase 0: Foundations

- How computers, memory, and processes work
- Binary, hexadecimal, and encoding (Base64, URL encoding)
- Basic programming: Python for scripting, plus a read-through of Bash
- Core security ideas: CIA triad, threat models, risk, vulnerabilities vs. exploits

**Milestone:** write a Python script that parses a log file and prints a summary.

## Phase 1: Linux

- Filesystem layout, permissions, users, groups, `sudo`
- Processes, services, cron, logs (`journalctl`, `/var/log`)
- Text processing: `grep`, `sed`, `awk`, `find`, pipes and redirects
- Package managers and the shell environment
- Hardening basics: SSH keys, firewalls (`ufw`, `nftables`), updates

**Milestone:** set up a Linux VM, lock down SSH, and document every change.

## Phase 2: Networking

- The OSI and TCP/IP models, Ethernet, ARP, IP, routing
- TCP handshake, UDP, ports and services
- DNS, DHCP, HTTP/HTTPS, TLS certificates
- Packet analysis with Wireshark and `tcpdump`
- Scanning and enumeration with `nmap`

**Milestone:** capture a TCP handshake and an HTTP request in Wireshark, and explain each packet.

## Phase 3: Web Application Security

- How HTTP sessions, cookies, and authentication work
- OWASP Top 10 categories: injection, broken access control, XSS, SSRF, and more
- Using Burp Suite or OWASP ZAP to intercept and modify requests
- Testing on deliberately vulnerable apps (DVWA, OWASP Juice Shop)

**Milestone:** find and document one example each of SQL injection, XSS, and broken access control in a lab app.

## Phase 4: Penetration Testing

- Methodology: reconnaissance, scanning, enumeration, exploitation, post-exploitation, reporting
- Active Directory basics and common Windows attack paths (in labs)
- Password attacks and cracking, with hashes you are authorized to test
- Privilege escalation on Linux and Windows
- Writing a professional report: executive summary, findings, severity, remediation

**Milestone:** complete a full lab machine end to end and write a report for it.

## Phase 5: Blue Team and Detection

- Logging and SIEM basics, detection rules (Sigma, YARA)
- Intrusion detection with Suricata or Snort
- Incident response steps: identify, contain, eradicate, recover, learn
- Malware analysis basics in an isolated VM

**Milestone:** write a detection rule for a technique you exploited in Phase 4 and show that it fires.

## Phase 6: Specialize and Certify

Pick one or two areas: web, network, cloud, mobile, reverse engineering, forensics, or defense.

Common certifications (check current requirements before you commit):

- **eJPT** (entry-level, practical)
- **PNPT** and **OSCP** (penetration testing, practical exams)
- **CompTIA Security+** (broad, vendor-neutral)
- **BTL1** or **CySA+** (defensive)

## Progress tracker

- [ ] Phase 0: Foundations
- [ ] Phase 1: Linux
- [ ] Phase 2: Networking
- [ ] Phase 3: Web Security
- [ ] Phase 4: Penetration Testing
- [ ] Phase 5: Blue Team
- [ ] Phase 6: Specialize and certify
