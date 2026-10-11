# Tool Guide

A categorized list of common security tools. For each tool: what it does, when you would use it, and a safe first command to try **on a lab target you are authorized to test**.

Every example below uses a placeholder target. Replace `10.0.2.15` or `target.lab` with a machine you own or have permission to test. See [ETHICS.md](../ETHICS.md).

---

## 1. Reconnaissance and Scanning

| Tool | Purpose | Example |
|------|---------|---------|
| **nmap** | Host discovery, port scanning, service and version detection | `nmap -sV -p- 10.0.2.15` |
| **masscan** | Very fast port scanning for large ranges (use with care) | `masscan -p1-1000 10.0.2.0/24 --rate 500` |
| **tcpdump** | Command-line packet capture | `sudo tcpdump -i eth0 port 80` |
| **tshark** | Wireshark's command-line packet analyzer | `tshark -r capture.pcap -Y http` |
| **whois / dig** | Domain registration and DNS lookups | `dig +short example.com MX` |
| **theHarvester** | Collects emails, subdomains, and hosts from public sources | `theHarvester -d example.com -b duckduckgo` |

## 2. Enumeration and Web Discovery

| Tool | Purpose | Example |
|------|---------|---------|
| **gobuster** | Directory, file, and DNS brute-forcing | `gobuster dir -u http://target.lab -w /usr/share/wordlists/dirb/common.txt` |
| **ffuf** | Fast web fuzzer for paths, parameters, and headers | `ffuf -u http://target.lab/FUZZ -w common.txt` |
| **nikto** | Web server misconfiguration scanner | `nikto -h http://target.lab` |
| **whatweb** | Identifies web technologies and frameworks | `whatweb http://target.lab` |
| **enum4linux-ng** | SMB and Windows enumeration | `enum4linux-ng -A 10.0.2.15` |

## 3. Web Application Testing

| Tool | Purpose | Example |
|------|---------|---------|
| **Burp Suite (Community)** | Intercepting proxy: inspect and modify requests | Set browser proxy to `127.0.0.1:8080` |
| **OWASP ZAP** | Free intercepting proxy and scanner | `zaproxy` (GUI) |
| **sqlmap** | Automated SQL injection detection and exploitation | `sqlmap -u "http://target.lab/item?id=1" --batch` |
| **wfuzz** | Parameter and content fuzzing | `wfuzz -c -z file,params.txt http://target.lab/?FUZZ=test` |
| **commix** | Command injection testing | `commix --url="http://target.lab/ping?ip=127.0.0.1"` |

## 4. Exploitation and Frameworks

| Tool | Purpose | Example |
|------|---------|---------|
| **Metasploit Framework** | Exploit development, modules, payloads | `msfconsole` then `search type:exploit name:vsftpd` |
| **searchsploit** | Offline search of Exploit-DB | `searchsploit apache 2.4` |
| **impacket** | Python tools for network protocols (SMB, Kerberos, WMI) | `impacket-secretsdump DOMAIN/user@10.0.2.15` |
| **BloodHound** | Maps Active Directory attack paths (lab use) | Ingest SharpHound data, then query paths |

## 5. Password Attacks

Only attack hashes and accounts you are authorized to test.

| Tool | Purpose | Example |
|------|---------|---------|
| **hashcat** | GPU-accelerated hash cracking | `hashcat -m 0 hashes.txt rockyou.txt` (mode 0 = MD5) |
| **John the Ripper** | Versatile password cracker | `john --wordlist=rockyou.txt hashes.txt` |
| **hydra** | Online login brute-forcing (SSH, FTP, HTTP forms) | `hydra -l admin -P passlist.txt ssh://10.0.2.15` |
| **hash-identifier / hashid** | Identifies hash types | `hashid '5f4dcc3b5aa765d61d8327deb882cf99'` |

## 6. Wireless

Test only networks you own, in a lab.

| Tool | Purpose | Example |
|------|---------|---------|
| **aircrack-ng suite** | Capture and crack WEP/WPA handshakes (own networks) | `airodump-ng wlan0mon` |
| **kismet** | Wireless discovery and monitoring | `kismet -c wlan0` |

## 7. Forensics and Reverse Engineering

| Tool | Purpose | Example |
|------|---------|---------|
| **Autopsy / Sleuth Kit** | Disk image forensics | `fls -r disk.img` |
| **binwalk** | Finds embedded files in firmware and binaries | `binwalk firmware.bin` |
| **strings / file / xxd** | Quick triage of unknown files | `strings -n 8 sample.bin` |
| **Ghidra** | Free disassembler and decompiler from the NSA | `ghidraRun` |
| **radare2 / Cutter** | Reverse engineering framework and GUI | `r2 -A ./binary` |
| **volatility3** | Memory forensics | `vol -f memdump.raw windows.pslist` |

## 8. Defense and Monitoring

| Tool | Purpose | Example |
|------|---------|---------|
| **Suricata** | Network IDS/IPS with rule support | `suricata -r capture.pcap -l out/` |
| **Snort** | Network IDS | `snort -r capture.pcap -c snort.conf` |
| **Wazuh** | Open-source SIEM and endpoint monitoring | Deploy the manager and agents |
| **Lynis** | Linux security auditing | `sudo lynis audit system` |
| **fail2ban** | Blocks IPs after repeated failed logins | `sudo fail2ban-client status sshd` |
| **ClamAV** | Open-source antivirus scanner | `clamscan -r ~/Downloads` |

## 9. Utility Tools You Will Use Constantly

| Tool | Purpose |
|------|---------|
| **netcat (nc / ncat)** | Read and write raw TCP/UDP connections |
| **curl / wget** | HTTP requests and downloads |
| **jq** | Parse JSON output |
| **tmux** | Multiple terminal sessions, essential for long jobs |
| **CyberChef** | Web tool for encoding, decoding, and data transforms |
| **SecLists** | Curated wordlists for fuzzing and password testing |

---

## Choosing the right tool

- **"What is on the network?"** -> `nmap`, then `tcpdump` or `tshark` to watch traffic
- **"What is this web app running?"** -> `whatweb`, `nikto`, Burp Suite
- **"Are there hidden pages?"** -> `gobuster` or `ffuf` with SecLists
- **"Is this input injectable?"** -> Burp Suite to test manually, `sqlmap` to confirm
- **"What is this file?"** -> `file`, `strings`, `binwalk`, then Ghidra
- **"Did something bad happen on this box?"** -> `Lynis`, log review, `volatility3` for memory
