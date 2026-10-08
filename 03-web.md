# Phase 3 — Web Application Security

> Goal: own the OWASP Top 10 — the highest-demand offensive skill set.

## Concepts to learn

- HTTP deep dive: requests, responses, sessions, cookies, tokens
- OWASP Top 10 (2021): broken access control, injection, SSRF, misconfig, etc.
- SQL injection: blind, boolean, time-based, UNION, out-of-band
- XSS: reflected, stored, DOM; CSP as a defense
- CSRF, XXE, IDOR, SSRF, open redirect
- Auth attacks: password spraying, session fixation, JWT pitfalls
- Business logic flaws (the ones scanners miss)
- Browser dev tools mastery (Burp Suite mindset)

## Curated repos

| Repo | What it gives you |
|---|---|
| [swisskyrepo/PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings) | Payloads & techniques for every vuln class — the single best reference |
| [OWASP/Top10](https://github.com/OWASP/Top10) | The standard itself |
| [OWASP/www-project-web-security-testing-guide](https://github.com/OWASP/www-project-web-security-testing-guide) | Step-by-step testing methodology |
| [coding-kitties/… *(see links)*](06-roadmap-links.md) | More labs & cheatlists |

## Tooling

`burpsuite` (community), `sqlmap`, `nikto`, `ffuf`/`gobuster`, `jwt_tool`, browser devtools

## Practice — labs

- [ ] [PortSwigger Web Security Academy](https://portswigger.net/web-security) — **free, exceptional**. Do every topic.
- [ ] DVWA or bWAPP in your VM
- [ ] OWASP Juice Shop (Docker)
- [ ] HackTheBox / TryHackMe web challenge track

## Done when

- [ ] You can exploit UNION-based and blind SQLi from scratch
- [ ] You can chain IDOR → privilege escalation on a lab app
- [ ] You've finished PortSwigger's Academy on: SQLi, XSS, SSRF, access control, auth
