#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

# Extract Rockyou.txt
sudo mkdir -p /var/www/uploads
sudo wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/upload.php -O /var/www/html/upload.php
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

# Installing Rustscan
wget https://github.com/RustScan/RustScan/releases/download/1.9.0/rustscan
sleep 1
chmod a+x rustscan && sudo mv rustscan /usr/bin/

# Installing necessarily tools
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install tilix neofetch htop eog gnome-disk-utility fonts-noto-color-emoji rofi ranger assetfinder remmina kali-grant-root kali-root-login -y
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
sudo python2 get-pip.py
sudo dpkg -i *.deb
pip2 install virtualenv

# Personal Terminal Shortcuts
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

echo "#\!/bin/bash\nrm ~/.john" > cjohn
echo "#\!/bin/bash\nrm ~/.ssh/known_hosts" > cssh
echo "sudo -i" > s 
chmod a+x s && sudo mv s /usr/bin/
chmod a+x cssh && sudo mv cssh /usr/bin/
chmod a+x cjohn && sudo mv cjohn /usr/bin/

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.bak
mv ~/.oh-my-zsh/lib/directories.zsh ~/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Local Setup
wget https://raw.githubusercontent.com/zyairelai/kali-rice/main/kali-2022-4/local.sh
chmod a+x local.sh
