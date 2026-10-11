# Ethics and Legal Notes

Ethical hacking means testing security with permission, to find and fix weaknesses before attackers do. The same tools used here can cause real harm, legal trouble, and damage to people's data when pointed at systems you do not control.

## The rules

1. **Get written authorization before you test anything you do not own.** A verbal OK is not enough. The document should name the systems, the dates, and the permitted techniques.
2. **Stay inside the scope.** Test only the IP ranges, domains, and applications listed in the authorization. Out-of-scope systems are off limits, even if they are "nearby" or share infrastructure.
3. **Practice only on legal targets.** Use the labs in [docs/labs.md](labs.md) or systems you built yourself.
4. **Do not exploit for personal gain.** Do not access, copy, modify, or delete data you were not authorized to touch. Stop at proof of concept where possible.
5. **Report responsibly.** Give the owner a clear report and reasonable time to fix issues before any public disclosure.
6. **Protect what you find.** Store captured credentials and data securely, and delete them when the engagement ends.
7. **Stop when in doubt.** If something looks like it could affect production, pause and ask the system owner.

## Legal notes (Kenya)

Kenya's **Computer Misuse and Cybercrimes Act, 2018** makes unauthorized access to computer systems and related acts offences. Testing a system without the owner's permission can be an offence even when your intent is good. Read the Act and get legal advice if you are unsure about a specific engagement. This section is general information, not legal advice.

The same principle applies in most countries: **permission is the difference between a penetration test and a crime.**

## Responsible disclosure

If you find a vulnerability in a product or service you do not own:

1. Look for a security policy (`/.well-known/security.txt`, a `SECURITY.md`, or a "Report a vulnerability" page).
2. Report privately to the vendor with clear reproduction steps and impact.
3. Allow a reasonable time to fix it, typically 90 days, before publishing details.
4. Do not demand payment as a condition of disclosure, and do not exploit the bug further than needed to prove it exists.

Bug bounty programs (such as those run on HackerOne or Bugcrowd) define their own scope and rules. Follow them exactly.
