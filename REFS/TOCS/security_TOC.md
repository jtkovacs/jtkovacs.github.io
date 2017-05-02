<p id="path"><a href="../../pkb.html">https://jtkovacs.github.io/pkb.html</a> \> <a href="https://jtkovacs.github.io/REFS/HTML/security.html">https://jtkovacs.github.io/REFS/HTML/security.html</a></p><table class="TOC"><tr><td>- [What is security? ](#what-is-security?-)
	- [What are major categories of security threats & defenses?](#what-are-major-categories-of-security-threats-&-defenses?)
	- [What are security-relevant certifications?](#what-are-security-relevant-certifications?)
- [What is operational risk? ](#what-is-operational-risk?-)
	- [What are information assurance strategies?](#what-are-information-assurance-strategies?)
- [Individual privacy](#individual-privacy)
	- [What are different degrees of privacy?](#what-are-different-degrees-of-privacy?)
	- [Threat modeling](#threat-modeling)
	- [Account security](#account-security)
		- [Research the platforms and companies you use](#research-the-platforms-and-companies-you-use)
		- [Logins, pass phrases, MFA/2FA, and password managers](#logins,-pass-phrases,-mfa/2fa,-and-password-managers)
		- [Security questions and account recovery](#security-questions-and-account-recovery)
		- [3p access](#3p-access)
	- [Personal computer](#personal-computer)
	- [Email & messaging](#email-&-messaging)
		- [Risky emails](#risky-emails)
		- [Email encryption](#email-encryption)
		- [Instant messaging](#instant-messaging)
	- [Browsing](#browsing)
		- [Tor and/or VPN for privacy](#tor-and/or-vpn-for-privacy)
		- [Searching](#searching)
		- [Purchasing online](#purchasing-online)
		- [Apps for ads, malicious scripts, trackers, etc.](#apps-for-ads,-malicious-scripts,-trackers,-etc.)
	- [Mobile phone](#mobile-phone)
		- [Discourage unauthorized access](#discourage-unauthorized-access)
		- [Keep text messages, calls, and browsing private](#keep-text-messages,-calls,-and-browsing-private)
		- [Phones as audio recorders and locators](#phones-as-audio-recorders-and-locators)
		- [Phone scams and phishing](#phone-scams-and-phishing)
	- [Harrassment](#harrassment)
		- [Doxing](#doxing)
		- [Social](#social)
		- [DDoS](#ddos)
- [Sources](#sources)
	- [References](#references)
	- [Read](#read)
	- [Unread](#unread)
</td></tr></table>

# What is security? 


## What are major categories of security threats & defenses?


## What are security-relevant certifications?

- Microsoft has (obviously) product-specific certifications; the IT infrastructure track of their MTA certification covers security and networking, but might be too basic. 
- CompTIA has security-relevant product-neutral certifications: A+, Network+, Security+, Cybersecurity, Advanced Security Practitioner. These look like the best place to start, to understand the underlying hardware and concepts. 
- EC-Council has Network Defender, Ethical Hacker, Security Analyst, and Forensic Investigator.
- CyberSecurity Institute has a Forensic Analyst cert.
- ISACA is mostly focused on information systems security but also offers Cybersecurity.
- (ISC)<sup>2</sup> has various certs for info systems and cyber security.




# What is operational risk? 

## What are information assurance strategies?




# Individual privacy

## What are different degrees of privacy?

Metadata, content, anonymity.

## Threat modeling

Planning a security system is complex. Security is interdependent, so the weakest link matters. Asking and answering these questions is the foundation of effective security: 

- Understand that __you__ have information assets. What are they? Who would find them valuable? 
- What must be protected (sensitive data, _any_ data, metadata, personal identity), and from who? 
- Given this, what is the risk of surveillance, and what vectors are most likely? 
- Given this, what are relevant security measures, and what is their cost (both financial and in terms of usability)?

Some basic facts and definitions:

- 90% of hacks come from user behavior, not security flaws
- Malware is harmful software
- A virus is a malicious executable file that gets installed and, like a biological virus, can make copies of itself. A virus might be disguised as a legitimate program and installed by a user; or the virus might take advantage of a security flaw to install itself.
- Worms
- Ransomware
- Keylogger
- DOS is when a single computer overwhelms a server with its requests; DDOS is when many computers do this. DDOS can be friendly or malicious, coming from a botnet of computers infected with a virus.
- Phishing is an attempt to access private information by way of legitimate-appearing spam email.

## Account security

### Research the platforms and companies you use

Do they provide the government direct access to user data? Do they notify users when such data has been furnished in compliance with a court order? Do they have a track record of defending their user data in court? Do they sell your data to other companies? Are they data-greedy or do they collect only when needed? Do they have strong enterprise security practices?

### Logins, pass phrases, MFA/2FA, and password managers

Use fake names for accounts; use an email address specifically intended for accounts management; use different user names.

Passwords under 6 characters long are unsafe, even if alphanumeric. Use an impersonal and human-memorable pass phrase like `alphabet beginner eventually literate ultimately poetic`; this is too long for a computer to guess, and its impersonality will keep hackers from guessing based on your social media clues.

Enable two-factor authentication [when possible](https://twofactorauth.org/), using a phone or [Yubikey](https://www.yubico.com/products/why-yubikey-wins/) (buy two!).

Consider using a password manager (although this does create a juicy central target for hackers): _LastPass, Keepass, 1password_. Password managers make it easy to take basic account security steps, like generating strong passwords; never re-using a password; never re-using a login; setting passsword expiration dates; and resetting passwords when specifics sites are compromised. Cloud-based password managers make passwords accessible from all devices but introduce vulnerabilities. If not using a password manager, you can write down passwords and store them away from the computer; or you can store them in an encrypted document on your computer. Then you need to personally follow best practices, which will be taxing.

For shared systems, it is imperative that all users follow these practices.

### Security questions and account recovery

Answers to security questions should be nonsense, or shifted by one key; store answers in a password manager. When possible, write your own security questions rather than using defaults. Have an email address specifically intended for account recovery.

### 3p access

Review third party access you've granted to accounts like Facebook and Google Drive; remove inactive ones.


## Personal computer

- Protect your computer with a strong login plus hard drive encryption (_FileVault, BitLocker_, or some native option); install or live boot from an operating system that doesn't store data (_TAILS, Chrubix_). 
- Use special programs to thoroughly wipe electronics before discarding, because some hackers will dumpster dive for data. 
- Put tape over your webcam so it can't be used to record you visually (this doesn't help with audio). 
- Maintain an [air gapped](https://www.schneier.com/blog/archives/2013/10/air_gaps.html) laptop as a last resort---or, as the polar opposite, use an insecure and disposable device when traveling. 


## Email & messaging

### Risky emails

Set your email so that images don't display automatically, which reduces tracking. Be extremely cautious about downloading files; use Gmail's file previewer or a file scanner, and set risky filetypes (`.js, .jse, .wsp, .wsh`) to open in a text editor by default. Don't open links directly from an email; instead, navigate directly to sites you're familiar with, or copy the link URL and run it through a search engine in quotes: `"http://somefakebankname.com/scam-attempt.php"`.

### Email encryption

Use [Mailvelope](https://chrome.google.com/webstore/detail/mailvelope/kajibbejlbohfaggdiogboambcijhkke) for end-to-end encryption that integrates with existing email providers.

### Instant messaging

Try [CryptoCat](https://crypto.cat/) or [Pidgin](https://pidgin.im/).

## Browsing

### Tor and/or VPN for privacy

The Tor browser enables anonymous browsing (activities not associated with particular IP), but it's difficult to set up. One workaround is the TAILS operating system, which comes bundled with Tor. 

For extra security, Tor can be run from a VPN, or a VPN can be run through another VPN: _[Tunnel Bear](https://chrome.google.com/webstore/detail/tunnelbear-vpn/omdakjcmkglenbhjadbccaookpfjihpa?hl=en), Private Internet Access, TorGuard, WiTopia, Privacy10_. With VPN, it's important to:

- Know the [logging policy of VPN providers](https://torrentfreak.com/which-vpn-providers-really-take-anonymity-seriously-111007/). Do they retain data? For how long? Whose jurisdiction are they under?
- Know your VPN status: VPN failure or DNS leaks can unexpectedly expose your browsing.
- Patch the [PPTP/IPv2 security flaw](http://lifehacker.com/5902397/how-to-make-vpns-even-more-secure).

### Searching

Try [DuckDuckGo](https://duckduckgo.com/), although its search algorithms aren't as good as Google's.

### Purchasing online

Favor credit cards over PayPal or debit cards. Don't store payment information on websites.

### Apps for ads, malicious scripts, trackers, etc.

- [ScriptSafe](https://chrome.google.com/webstore/detail/scriptsafe/oiigbmnaadbkfbmpbfijlflahbdbdgdf/reviews?hl=en) and [NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/) block malicious scripts; 
- [HTTPSEverywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp?hl=en) and [KB SSL Enforcer](https://chrome.google.com/webstore/detail/kb-ssl-enforcer/flcpelgcagfhfoegekianiofphddckof/related?hl=en) push many sites into HTTPS mode; 
- [Privacy Badger](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp?hl=en), [Disconnect](https://chrome.google.com/webstore/detail/disconnect/jeoacafpbcihiomhlakheieifhpjdfeo?hl=en), and [TrafficLight](https://chrome.google.com/webstore/detail/trafficlight/cfnpidifppmenkapgihekkeednfoenal?hl=en) track trackers and alert you; 
- [AdBlock](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom?hl=en), [AdGuard](https://chrome.google.com/webstore/detail/adguard-adblocker/bgnkhhnnamicmpeenaelnjfhikgbkllg?hl=en), and [SuperBlock](https://chrome.google.com/webstore/detail/superblock-adblocker/miijbmhjndcihicbljlcieiajhemmdeb) reduce online ads.


## Mobile phone

### Discourage unauthorized access

Swipe and PIN codes are not robust protection; use a pass phrase to prevent people from opening the phone, and make sure your mobile account itself is secured with a different pass phrase. Sophisticated hackers don't _need_ to log in to your phone, though, so protect your data with encryption (most phones provide this option in "Settings"; you just need to activate it). Install _[Lookout](https://play.google.com/store/apps/details?id=com.lookout&hl=en)_ or _[Prey](https://play.google.com/store/apps/details?id=com.prey&hl=en)_ to lock/locate/wipe your phone in case of theft or loss. Swich off wi-fi, GPS, and Bluetooth when not in use.

### Keep text messages, calls, and browsing private

- Data sent from a phone can be easily intercepted by IMSI devices posing as part of the network.
- Use _[Signal](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms&hl=en)_ to send texts that are encrypted _if both parties are using the app_ (so urge your friends to join as well).
- Use _[Orbot](https://play.google.com/store/apps/details?id=org.torproject.android&hl=en)_ and _[OrFox](https://play.google.com/store/apps/details?id=info.guardianproject.orfox&hl=en)_ to encrypt browsing; OrFox includes HTTPSEverywhere and NoScript.
- Use _[CSipSimple](https://play.google.com/store/apps/details?id=com.csipsimple&hl=en)_ to encrypt VoIP calls.

### Phones as audio recorders and locators

Know that phones can be used to locate you via GPS and cell phone towers. If this is a concern, leave your phone behind. Phones can also be activated remotely and used to record you, _even if they are turned off_; if this is a concern, place the phone in a refrigerator to muffle sounds, or remove its battery. A "burner phone" is not really a good option.

### Phone scams and phishing

If you recieve a call from someone who requests your personal information, be very wary:

- Ask for a number to call them back, and Google or otherwise verify the number before calling back.
- Ask why they want your information and listen closely to their rationale. People have a strong psychological tendency to accept _any_ reason following the word "because"; don't succumb to this; __interrogate them__. 
- They might drop minor facts about you to seem legitimate and win your trust; scammers trade information for information until they get what they need, like the social experiment [One Red Paperclip](https://en.wikipedia.org/wiki/One_red_paperclip). Don't trust people who seem to know about you.
- For this same reason, don't give out seemingly minor information. They might use it to call a company and pose as you to gain additional information.
- Don't let them create a subconscious sense of indebtedness by giving you small gifts. A small gift followed by a waiting period followed by a request is a tricky and powerful tactic.
- Don't be charmed by humor or intimidated by confidence. Good scammers have these qualities in abundance.


## Harrassment

### Doxing

Preventatively stalk yourself to see what information comes up. [Delete old accounts](http://backgroundchecks.org/justdeleteme/); opt-out of data broker listings ([1](https://www.privacyrights.org/data-brokers), [2](https://abine.com/optouts.php)); change your cell number; make sure your personal information isn't published on [Whois.net](https://www.whois.net) as part of your domain registration.

### Social

In case of harrassment, know who your allies are: some lawyers with an interest in civil rights, and civil rights organizations; some journalists; some politicians; others in your personal network with the capacity to advocate for you, who wil be seen as credible by a mainstream audience.

### DDoS




# Sources

## References

- [SocialEngineer.org](http://SocialEngineer.org)
- [CSOonline](http://www.csoonline.com/)
- [Security In a Box](https://securityinabox.org/en)
- [MyShadow.org](https://myshadow.org/)
- [Freedom of the Press Foundation](https://freedom.press/)
- [IdentityTheft.gov](http://IdentityTheft.gov)
- [Electronic Freedom Foundation's Surveillance Self-Defense kit](https://ssd.eff.org/)
- [Hackblossom's Guide to Feminist Cybersecurity](https://hackblossom.org/cybersecurity/)

## Read

- _No Place to Hide: Edward Snowden, the NSA, and the U.S. Surveillance State._
- [Your iPhone knows where you’ve been](http://blog.chron.com/techblog/2013/10/your-iphone-knows-where-youve-been-puts-it-on-a-map/)
- [IBM distributes USB malware cocktail at AusCERT security conference&nbsp;](https://nakedsecurity.sophos.com/2010/05/21/ibm-distributes-usb-malware-cocktail-auscert-security-conference/)
- [Criminals May Be Using Covert Mobile Phone Surveillance Tech for Extortion](http://www.slate.com/blogs/future_tense/2012/08/22/imsi_catchers_criminals_law_enforcement_using_high_tech_portable_devices_to_intercept_communications_.html)
- [Met police using surveillance system to monitor mobile phones](https://www.theguardian.com/uk/2011/oct/30/metropolitan-police-mobile-phone-surveillance)
- [Threat modeling](https://source.opennews.org/en-US/learning/security-journalists-part-two-threat-modeling/)
- [Account Security 101](https://crashoverridenetwork.tumblr.com/post/109948061867/account-security-101-passwords-multifactor)
- [Protecting your digital life in 7 easy steps](http://mobile.nytimes.com/2016/11/17/technology/personaltech/encryption-privacy.html)
- [EFF's security starter pack](https://ssd.eff.org/en/playlist/want-security-starter-pack)
- [How can I protect against social engineering hacks?](http://lifehacker.com/5933296/how-can-i-protect-against-hackers-who-use-sneaky-social-engineering-techniques-to-get-into-my-accounts)
- [Social engineering: the basics](http://www.csoonline.com/article/2124681/leadership-management/security-awareness-social-engineering-the-basics.html)
- [The fine art of BS](http://www.csoonline.com/article/2112400/it-audit/social-engineering--the-fine-art-of-bs--face-to-face--includes-video-.html)
- [How social engineers win your confidence](http://www.csoonline.com/article/2124219/security-awareness/mind-games--how-social-engineers-win-your-confidence.html)
- [Snowden persuaded other NSA workers to give up passwords](http://www.reuters.com/article/net-us-usa-security-snowden-idUSBRE9A703020131108)
- [Protect yourself against online fraud and identity theft](http://lifehacker.com/5858197/how-to-protect-yourself-from-online-fraud)
- [What it's like to steal someone's identity](http://www.csoonline.com/article/2126146/identity-theft-prevention/what-it-s-like-to-steal-someone-s-identity.html)
- [Anti-phishing and email hygiene](https://freedom.press/training/email-security-tips/)
- [Preventing doxing](https://crashoverridenetwork.tumblr.com/post/108387569412/preventing-doxing)
- [Why you should use a VPN](http://lifehacker.com/5940565/why-you-should-start-using-a-vpn-and-how-to-choose-the-best-one-for-your-needs)
- [How VPNs work](http://computer.howstuffworks.com/vpn.htm)
- [How to make your VPN even more secure](http://lifehacker.com/5902397/how-to-make-vpns-even-more-secure)
- [Which VPN providers really take privacy seriously?](https://torrentfreak.com/which-vpn-providers-really-take-anonymity-seriously-111007/)
- [Rapid response for compromised phones](https://freedom.press/training/rapid-responses-compromised-phones/)
- [Mobile security prevention tips](https://freedom.press/training/rapid-responses-compromised-phones/)

## Unread

- [Khan Academy - Modern Cryptography](https://www.khanacademy.org/computing/computer-science/cryptography/modern-crypt/v/the-fundamental-theorem-of-arithmetic-1)
- [The DDoS attack survival guide](http://www.csoonline.com/article/2125101/data-protection/the-ddos-attack-survival-guide--2013-edition.html)
- [Air gaps](https://www.schneier.com/blog/archives/2013/10/air_gaps.html)
- [Digital security for journalists](https://susanemcg.gitbooks.io/digital-security-for-journalists/content/)
- [Digital First Aid Kit](https://www.digitaldefenders.org/digitalfirstaid/#DFAk/)
- [How to be anonymous online](https://www.wired.com/2014/06/be-anonymous-online/)
- [Things to know about malware](https://ciso.uw.edu/site/files/Things_to_know_about_malware.pdf)
- [Web Security Fundamentals](https://info.varonis.com/web-security-fundamentals?utm_campaign=web-security-fundamentals&amp;utm_medium=display&amp;utm_source=facebook.com)
- [A 70-Day Web Security Action Plan](https://medium.com/@TeacherC/90dayactionplan-ff86b1de6acb#.deqwp8xez)
- [How to encrypt your entire life in less than an hour](https://medium.freecodecamp.com/tor-signal-and-beyond-a-law-abiding-citizens-guide-to-privacy-1a593f2104c3#.50hv1jppg)
- [Wiki - UK/USA Agreement](https://en.wikipedia.org/wiki/UKUSA_Agreement)
- [Wiki - 2013 Global surveillance disclosure](https://en.wikipedia.org/wiki/2013_Global_surveillance_disclosure)
- [Your privacy is under attack from several terrifying new laws](https://medium.freecodecamp.com/your-privacy-is-disappearing-one-law-at-a-time-heres-what-you-can-do-about-it-b85c814035a4#.1dys0ywaa)
- [PRISM Break](https://prism-break.org/)
- [Persona based commsec training matrix](https://github.com/AnarchoTechNYC/meta/wiki/Persona-based-commsec-training-matrix)
- [Data Privacy Lab](http://dataprivacylab.org/)
- [Harvard's privacy tools](http://privacytools.seas.harvard.edu/)
- [Does Big Data change the privacy landscape?](http://www.annualreviews.org/doi/abs/10.1146/annurev-statistics-041715-033453?journalCode=statistics&amp;)
- [Chatting in secret while we're all being watched](https://theintercept.com/2015/07/14/communicating-secret-watched/)
- [How the NSA Recruits in a Post-Snowden World](http://www.thedailybeast.com/articles/2014/01/17/how-the-nsa-recruits-in-a-post-snowden-world.html)
- [When Drones Come to America, What Happens Then?](http://www.thedailybeast.com/articles/2013/05/18/when-drones-come-to-america-what-happens-then.html)
- Dev Nambi's links on [privacy](https://github.com/DevNambi/blog-drafts/blob/master/9914%20-%20Privacy%20and%20Security.md) and [security])https://github.com/DevNambi/blog-drafts/blob/master/9906%20-%20Security%20Links.md)
- ["If I want to learn about infosec, where do I start?"<br>](https://twitter.com/lyzidiamond/status/581377651270553602)
- _Data and Goliath: The Hidden Battles to Collect Your Data and Control Your World._
- [Obama’s Disclosure About Russian Hacking Is A Cybersecurity Gold Mine](http://www.huffingtonpost.com/entry/the-disclosure-of-russias-hacking-is-a-gold-mine-for-cybersecurity_us_5866b4cfe4b0eb5864894ed6): _Public disclosures like this enable collective cyber defense through information sharing ..._


