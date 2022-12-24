#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

# Extract Rockyou.txt
sudo mkdir -p /var/www/uploads
sudo wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/upload.php -O /var/www/html/upload.php
sudo chmod a+x /var/www/html/upload.php
sudo chown -R $USER /opt
sudo chown -R $USER /var/www
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

# Enable Login without Password
sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
sudo echo "
[SeatDefaults]
autologin-guest=false
autologin-user=kali
autologin-user-timeout=0
" >> /etc/lightdm/lightdm.conf

# Import necessarily repository packages
sudo echo "# See https://www.kali.org/docs/general-use/kali-linux-sources-list-repositories/
deb http://http.kali.org/kali kali-rolling main contrib non-free
# deb http://http.kali.org/kali kali-last-snapshot main contrib non-free

# Additional line for source packages
# deb-src http://http.kali.org/kali kali-rolling main contrib non-free
" > /etc/apt/sources.list

# Installing Rustscan
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 1
chmod a+x rustscan && sudo mv rustscan /usr/bin/

# Installing necessarily tools
sudo dpkg --add-architecture i386
sudo apt update
# sudo apt install tilix neofetch htop eog gnome-disk-utility fonts-noto-color-emoji rofi ranger remmina kali-grant-root kali-root-login -y
sudo apt install tilix neofetch htop totem eog gnome-disk-utility fonts-noto-color-emoji rofi ranger remmina golang-go mingw-w64 wine32 seclists veil kali-grant-root kali-root-login -y
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo python2 get-pip.py
sudo dpkg -i *.deb
pip2 install virtualenv
sudo rm /usr/bin/pip
sudo rm /usr/bin/python 
sudo rm /usr/bin/python3
sudo ln -s /usr/bin/pip2 /usr/bin/pip
sudo ln -s /usr/bin/python3.9 /usr/bin/python
sudo ln -s /usr/bin/python3.9 /usr/bin/python3

# Personal Terminal Shortcuts
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

echo "#\!/bin/bash\nrm ~/.john" > cjohn
echo "#\!/bin/bash\nrm ~/.ssh/known_hosts" > cssh
echo "sudo su" > s 
chmod a+x s && sudo mv s /usr/bin/
chmod a+x cssh && sudo mv cssh /usr/bin/
chmod a+x cjohn && sudo mv cjohn /usr/bin/

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.bak
mv ~/.oh-my-zsh/lib/directories.zsh ~/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Local Setup
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/local.sh
chmod a+x local.sh
