# Bug Bounty Essentials

### Light Weight Windows for Payload Testing
- https://atlasos.net/downloads
- https://sasnet.ovh/

### RustScan
```
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 1
chmod a+x rustscan && sudo mv rustscan /usr/bin/
```
Or installing from Cargo
- `curl https://sh.rustup.rs -sSf | sh`
- `cargo install rustscan`
- `sudo cp ~/.cargo/bin/rustscan /usr/bin/rustscan`

### FeroxBuster
```
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/main/install-nix.sh | bash
sleep 1
sudo mv feroxbuster /usr/bin/
```
### FFUF
```
wget https://github.com/ffuf/ffuf/releases/download/v1.5.0/ffuf_1.5.0_linux_amd64.tar.gz
sleep 1
tar xf ffuf_1.5.0_linux_amd64.tar.gz --wildcards ffuf
sleep 1
chmod 755 ffuf && sudo mv ffuf /usr/bin/
echo "[general] \n  colors = true" >> ~/.ffufrc
```
### WhatWeb
```
wget https://github.com/urbanadventurer/WhatWeb/archive/refs/tags/v0.5.5.zip
sleep 1
unzip WhatWeb-v0.5.5.zip
sleep 1
sudo mv WhatWeb-v0.5.5.zip/whatweb /usr/bin/
```

### Wordlists
```
sudo mkdir /usr/share/wordlists
sudo chown -R kali /usr/share/wordlists
wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/big.txt -O /usr/share/wordlists/big.txt
wget https://raw.githubusercontent.com/v0re/dirb/master/wordlists/common.txt -O /usr/share/wordlists/common.txt
wget https://raw.githubusercontent.com/wallarm/jwt-secrets/master/jwt.secrets.list -O /usr/share/wordlists/jwt.secrets.list
wget https://github.com/daviddias/node-dirbuster/raw/master/lists/directory-list-2.3-medium.txt -O /usr/share/wordlists/directory-list-2.3-medium.txt
wget https://github.com/praetorian-inc/Hob0Rules/raw/master/wordlists/rockyou.txt.gz -O /usr/share/wordlists/rockyou.txt.gz
gzip -d /usr/share/wordlists/rockyou.txt.gz
sudo git clone https://github.com/danielmiessler/SecLists.git /usr/share/SecLists
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

### VMware Workstation
- https://www.vmware.com/asean/products/workstation-pro/workstation-pro-evaluation.html
```
curl https://appnee.com/vmware-workstation-pro-universal-license-keys-collection/ | grep -i -A 20 'Workstation 17.x'
```

### Burp Suite Pwofessional
Extensions
```
wget https://repo1.maven.org/maven2/org/python/jython-standalone/2.7.0/jython-standalone-2.7.0.jar
wget https://github.com/yeswehack/PwnFox/releases/download/v1.0.3/PwnFox.jar
wget https://github.com/elkokc/reflector/releases/download/2.1/reflector2.1.jar -O reflector.jar
```
Limit Ram Usage
```
java -Xmx2048m -jar JavaApplication.jar 
```

### Burp Extensions
- Logger++
- Active Scan++
- Autorize
- AWS Security Checks
- Burp Bounty Free
- Bypass WAF
- CMS Scanner
- ExifTool Scanner
- Flow
- GraphQL Raider
- HUNT Scanner
- HTTP Request Smuggler
- J2EEScan
- JSON Decoder
- JSON Web Tokens
- Log4Shell Everywhere
- NoSQLi Scanner
- Retire.js
- SSL Scanner
- Upload Scanner
- Wordpress Scanner

# Reverse Shell over WAN
- https://stackoverflow.com/questions/71621855/how-can-i-use-a-reverse-shell-over-global-internet
- https://www.sitepoint.com/use-ngrok-test-local-site/
- https://ngrok.com/
