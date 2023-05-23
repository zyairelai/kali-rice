# Bug Bounty Essentials

### RustScan
```
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 1
chmod a+x rustscan && sudo mv rustscan /usr/bin/
```
- `curl https://sh.rustup.rs -sSf | sh`
- `cargo install rustscan`
- `sudo cp ~/.cargo/bin/rustscan /usr/bin/rustscan`

### Wordlists
```
sudo mkdir /usr/share/wordlists
sudo wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt -O /usr/share/wordlists/common.txt
sudo wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/big.txt -O /usr/share/wordlists/big.txt
sudo wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /usr/share/wordlists/directory-list-2.3-medium.txt
sudo wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz -O /usr/share/wordlists/rockyou.txt.gz
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz
```

### Firefox Extensions
- Go to `about:config`
- set `True` for `toolkit.tabbox.switchByScrolling`
- set `False` for `ui.key.menuAccessKeyFocuses`
- https://addons.mozilla.org/en-US/firefox/addon/pwnfox/
- https://addons.mozilla.org/en-US/firefox/addon/hacktools/
- https://addons.mozilla.org/en-US/firefox/addon/wappalyzer/
- https://addons.mozilla.org/en-US/firefox/addon/cookie-editor/
- https://addons.mozilla.org/en-US/firefox/addon/tab-auto-refresh/
- https://addons.mozilla.org/en-US/firefox/addon/multi-account-containers/
- 
- https://addons.mozilla.org/en-US/firefox/addon/traduzir-paginas-web/
- https://addons.mozilla.org/en-US/firefox/addon/shodan-addon/
- https://addons.mozilla.org/en-US/firefox/addon/uaswitcher/


### Chrome Extensions
- https://chrome.google.com/webstore/detail/trufflehog/bafhdnhjnlcdbjcdcnafhdcphhnfnhjc
- https://chrome.google.com/webstore/detail/shodan/jjalcfnidlmpjhdfepjhjbhnhkbgleap
- https://chrome.google.com/webstore/detail/dotgit/pampamgoihgcedonnphgehgondkhikel?hl=en

### VMware Workstation
- https://www.vmware.com/asean/products/workstation-pro/workstation-pro-evaluation.html
```
curl https://appnee.com/vmware-workstation-pro-universal-license-keys-collection/ | grep -i -A 20 'Workstation 17.x'
```

### Burp Suite Pwofessional
- https://portswigger-cdn.net/burp/releases/download?product=pro
- https://www.jython.org/jython-old-sites/downloads.html
- https://github.com/yeswehack/PwnFox/releases/tag/v1.0.3
```
wget https://portswigger-cdn.net/burp/releases/download?product=pro -O burppro.jar
wget http://search.maven.org/remotecontent?filepath=org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar -O jython-standalone-2.7.0.jar
```
```
git clone git@github.com:zyairelai/burp-loader.git burp
cd burp
echo "LOADER_LOCATION=/opt/burp/loader.jar" >> burp
echo "BURP_SUITE_PRO_LOCATION=/opt/burp/burppro.jar" >> burp
echo "java -noverify -javaagent:\$LOADER_LOCATION -jar \$BURP_SUITE_PRO_LOCATION" >> burp

chmod a+x burp
java -jar keygen.jar
```

![image](https://user-images.githubusercontent.com/49854907/202732750-40b4288f-a737-4d2f-8586-beac32d7c982.png)

### Burp Extender Scanners
- Additional CSRF Checks
- CSRF Scanner
- CMS Scanner
- J2EEScan
- Retire.js
- Software Vulnerability Scanner
- XSS Validator
- Flow
- Turbo intruder
- Backslash Powered Scanner

### Burp Extender that I know what it does
- Active Scan ++
- Logger++
- AutoRepeater
- Autorize
- Upload Scanner

# Burp Suite Top 10 Extender from Linkedin
- https://www.linkedin.com/feed/update/urn:li:activity:7035196865658646528
- H1 Report Finder
- WordPress Scanner
- Pentest Mapper
- Autowasp
- burp_bug_finder
- Auth Analyzer
- Active Scan ++
- NoSQL Scanner
- Nuclei Burp Integration
- Wordlist Extractor  

### Burp Extender By Stök
- https://portswigger.net/blog/burp-suite-tips-from-power-user-and-hackfluencer-stok
- Burp Bounty Pro
- HUNT Scanner Redux
- Taborator
- Turbo intruder
- Flow
- Logger++
- Autorize
- Auto repeater
- Upload Scanner

# Reverse Shell over WAN
- https://stackoverflow.com/questions/71621855/how-can-i-use-a-reverse-shell-over-global-internet
- https://www.sitepoint.com/use-ngrok-test-local-site/
- https://ngrok.com/
