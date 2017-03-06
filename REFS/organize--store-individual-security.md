## ORGANIZE & STORE > Individual Security

<hr/>

- [Threat modeling](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#threat-modeling)
- [Accounts](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#accounts)
- [Personal computer](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#personal-computer)
- [Email and messaging](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#email-and-messaging)
- [Browsing](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#browsing)
- [Mobile phone](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#mobile-phone)
- [Harrassment](https://github.com/jtkovacs/PKB/blob/master/Security/individual-security.md#harrassment)

<hr/>

### THREAT MODELING
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

### ACCOUNTS

#### Research the platforms and companies you use
Do they provide the government direct access to user data? Do they notify users when such data has been furnished in compliance with a court order? Do they have a track record of defending their user data in court? Do they sell your data to other companies? Are they data-greedy or do they collect only when needed? Do they have strong enterprise security practices?

#### Logins, pass phrases, MFA/2FA, and password managers
Use fake names for accounts; use an email address specifically intended for accounts management; use different user names.

Passwords under 6 characters long are unsafe, even if alphanumeric. Use an impersonal and human-memorable pass phrase like `alphabet beginner eventually literate ultimately poetic`; this is too long for a computer to guess, and its impersonality will keep hackers from guessing based on your social media clues.

Enable two-factor authentication [when possible](https://twofactorauth.org/), using a phone or [Yubikey](https://www.yubico.com/products/why-yubikey-wins/) (buy two!).

Consider using a password manager (although this does create a juicy central target for hackers): _LastPass, Keepass, 1password_. Password managers make it easy to take basic account security steps, like generating strong passwords; never re-using a password; never re-using a login; setting passsword expiration dates; and resetting passwords when specifics sites are compromised. Cloud-based password managers make passwords accessible from all devices but introduce vulnerabilities. If not using a password manager, you can write down passwords and store them away from the computer; or you can store them in an encrypted document on your computer. Then you need to personally follow best practices, which will be taxing.

For shared systems, it is imperative that all users follow these practices.

#### Security questions and account recovery
Answers to security questions should be nonsense, or shifted by one key; store answers in a password manager. When possible, write your own security questions rather than using defaults. Have an email address specifically intended for account recovery.

#### 3p access
Review third party access you've granted to accounts like Facebook and Google Drive; remove inactive ones.


### PERSONAL COMPUTER

- Protect your computer with a strong login plus hard drive encryption (_FileVault, BitLocker_, or some native option); install or live boot from an operating system that doesn't store data (_TAILS, Chrubix_). 
- Use special programs to thoroughly wipe electronics before discarding, because some hackers will dumpster dive for data. 
- Put tape over your webcam so it can't be used to record you visually (this doesn't help with audio). 
- Maintain an [air gapped](https://www.schneier.com/blog/archives/2013/10/air_gaps.html) laptop as a last resort---or, as the polar opposite, use an insecure and disposable device when traveling. 


### EMAIL AND MESSAGING

#### Risky emails
Set your email so that images don't display automatically, which reduces tracking. Be extremely cautious about downloading files; use Gmail's file previewer or a file scanner, and set risky filetypes (`.js, .jse, .wsp, .wsh`) to open in a text editor by default. Don't open links directly from an email; instead, navigate directly to sites you're familiar with, or copy the link URL and run it through a search engine in quotes: `"http://somefakebankname.com/scam-attempt.php"`.

#### Email encryption
Use [Mailvelope](https://chrome.google.com/webstore/detail/mailvelope/kajibbejlbohfaggdiogboambcijhkke) for end-to-end encryption that integrates with existing email providers.

#### Instant messaging
Try [CryptoCat](https://crypto.cat/) or [Pidgin](https://pidgin.im/).


### BROWSING

#### Tor and/or VPN for privacy
The Tor browser enables anonymous browsing (activities not associated with particular IP), but it's difficult to set up. One workaround is the TAILS operating system, which comes bundled with Tor. 

For extra security, Tor can be run from a VPN, or a VPN can be run through another VPN: _[Tunnel Bear](https://chrome.google.com/webstore/detail/tunnelbear-vpn/omdakjcmkglenbhjadbccaookpfjihpa?hl=en), Private Internet Access, TorGuard, WiTopia, Privacy10_. With VPN, it's important to:

- Know the [logging policy of VPN providers](https://torrentfreak.com/which-vpn-providers-really-take-anonymity-seriously-111007/). Do they retain data? For how long? Whose jurisdiction are they under?
- Know your VPN status: VPN failure or DNS leaks can unexpectedly expose your browsing.
- Patch the [PPTP/IPv2 security flaw](http://lifehacker.com/5902397/how-to-make-vpns-even-more-secure).

#### Searching
Try [DuckDuckGo](https://duckduckgo.com/), although its search algorithms aren't as good as Google's.

#### Purchasing online
Favor credit cards over PayPal or debit cards. Don't store payment information on websites.

#### Apps for ads, malicious scripts, trackers, etc.

- [ScriptSafe](https://chrome.google.com/webstore/detail/scriptsafe/oiigbmnaadbkfbmpbfijlflahbdbdgdf/reviews?hl=en) and [NoScript](https://addons.mozilla.org/en-US/firefox/addon/noscript/) block malicious scripts; 
- [HTTPSEverywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp?hl=en) and [KB SSL Enforcer](https://chrome.google.com/webstore/detail/kb-ssl-enforcer/flcpelgcagfhfoegekianiofphddckof/related?hl=en) push many sites into HTTPS mode; 
- [Privacy Badger](https://chrome.google.com/webstore/detail/privacy-badger/pkehgijcmpdhfbdbbnkijodmdjhbjlgp?hl=en), [Disconnect](https://chrome.google.com/webstore/detail/disconnect/jeoacafpbcihiomhlakheieifhpjdfeo?hl=en), and [TrafficLight](https://chrome.google.com/webstore/detail/trafficlight/cfnpidifppmenkapgihekkeednfoenal?hl=en) track trackers and alert you; 
- [AdBlock](https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom?hl=en), [AdGuard](https://chrome.google.com/webstore/detail/adguard-adblocker/bgnkhhnnamicmpeenaelnjfhikgbkllg?hl=en), and [SuperBlock](https://chrome.google.com/webstore/detail/superblock-adblocker/miijbmhjndcihicbljlcieiajhemmdeb) reduce online ads.


### MOBILE PHONE

#### Discourage unauthorized access
Swipe and PIN codes are not robust protection; use a pass phrase to prevent people from opening the phone, and make sure your mobile account itself is secured with a different pass phrase. Sophisticated hackers don't _need_ to log in to your phone, though, so protect your data with encryption (most phones provide this option in "Settings"; you just need to activate it). Install _[Lookout](https://play.google.com/store/apps/details?id=com.lookout&hl=en)_ or _[Prey](https://play.google.com/store/apps/details?id=com.prey&hl=en)_ to lock/locate/wipe your phone in case of theft or loss. Swich off wi-fi, GPS, and Bluetooth when not in use.

#### Keep text messages, calls, and browsing private

- Data sent from a phone can be easily intercepted by IMSI devices posing as part of the network.
- Use _[Signal](https://play.google.com/store/apps/details?id=org.thoughtcrime.securesms&hl=en)_ to send texts that are encrypted _if both parties are using the app_ (so urge your friends to join as well).
- Use _[Orbot](https://play.google.com/store/apps/details?id=org.torproject.android&hl=en)_ and _[OrFox](https://play.google.com/store/apps/details?id=info.guardianproject.orfox&hl=en)_ to encrypt browsing; OrFox includes HTTPSEverywhere and NoScript.
- Use _[CSipSimple](https://play.google.com/store/apps/details?id=com.csipsimple&hl=en)_ to encrypt VoIP calls.

#### Phones as audio recorders and locators
Know that phones can be used to locate you via GPS and cell phone towers; if this is a concern, leave your phone behind. Phones can also be activated remotely and used to record you, _even if they are turned off_; if this is a concern, place the phone in a refrigerator to muffle sounds, or remove its battery. A "burner phone" is not really a good option.

#### Phone scams and phishing
If you recieve a call from someone who requests your personal information, be very wary:

- Ask for a number to call them back, and Google or otherwise verify the number before calling back.
- Ask why they want your information and listen closely to their rationale. People have a strong psychological tendency to accept _any_ reason following the word "because"; don't succumb to this; __interrogate them__. 
- They might drop minor facts about you to seem legitimate and win your trust; scammers trade information for information until they get what they need, like the social experiment [One Red Paperclip](https://en.wikipedia.org/wiki/One_red_paperclip). Don't trust people who seem to know about you.
- For this same reason, don't give out seemingly minor information. They might use it to call a company and pose as you to gain additional information.
- Don't let them create a subconscious sense of indebtedness by giving you small gifts. A small gift followed by a waiting period followed by a request is a tricky and powerful tactic.
- Don't be charmed by humor or intimidated by confidence. Good scammers have these qualities in abundance.


### HARRASSMENT

#### Doxing
Preventatively stalk yourself to see what information comes up. [Delete old accounts](http://backgroundchecks.org/justdeleteme/); opt-out of data broker listings ([1](https://www.privacyrights.org/data-brokers), [2](https://abine.com/optouts.php)); change your cell number; make sure your personal information isn't published on [Whois.net](https://www.whois.net) as part of your domain registration.

#### Social
In case of harrassment, know who your allies are: some lawyers with an interest in civil rights, and civil rights organizations; some journalists; some politicians; others in your personal network with the capacity to advocate for you, who wil be seen as credible by a mainstream audience.

#### DDoS

<hr/>

### REFERENCES

- [Electronic Freedom Foundation's Surveillance Self-Defense kit](https://ssd.eff.org/)
- [Hackblossom's Guide to Feminist Cybersecurity](https://hackblossom.org/cybersecurity/)

#### ARCHIVE

#### INBOX

