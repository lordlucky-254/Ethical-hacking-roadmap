# Command Cheatsheet

Quick reference for lab use. Replace placeholder targets with machines you are authorized to test.

## Nmap

```bash
nmap -sn 10.0.2.0/24            # host discovery (ping sweep)
nmap -sS -p- 10.0.2.15          # SYN scan, all 65535 TCP ports (needs root)
nmap -sV -sC -p 22,80,443 10.0.2.15   # service versions + default scripts
nmap -O 10.0.2.15               # OS detection (needs root)
nmap -oA scan-results 10.0.2.15 # save output in all formats
```

## Netcat

```bash
nc -zv 10.0.2.15 20-100         # check open ports in a range
nc -lvnp 4444                   # listen on port 4444
nc 10.0.2.15 80                 # manual HTTP request
```

## Web enumeration

```bash
gobuster dir -u http://target.lab -w /usr/share/seclists/Discovery/Web-Content/common.txt
ffuf -u http://target.lab/FUZZ -w common.txt -mc 200,301
nikto -h http://target.lab
curl -I http://target.lab       # response headers only
```

## Password and hash work

```bash
hashid 'HASH_VALUE'             # identify the hash type
hashcat -m 0 hashes.txt rockyou.txt   # MD5 (mode 0)
john --show hashes.txt          # show cracked results
```

## Packet capture

```bash
sudo tcpdump -i any -w capture.pcap
tshark -r capture.pcap -q -z conv,tcp   # TCP conversation summary
```

## Linux hardening checks

```bash
sudo lynis audit system
ss -tulpn                       # listening ports and owning processes
sudo ufw status verbose
last -n 20                      # recent logins
```
