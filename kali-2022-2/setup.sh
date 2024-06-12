#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Try using sudo."
    exit 2
fi

# Extract Rockyou.txt
echo "set linenumbers" >> .nanorc
echo "[general] \n  colors = true" >> ~/.ffufrc
echo -e "# Change the prefix key to C-a\nset -g prefix C-a\nunbind C-b\nbind C-a send-prefix\nset-option -g mouse on" > .tmux.conf
sudo chown -R kali /opt
sudo chown -R kali /var/www
sudo gzip -d /usr/share/wordlists/rockyou.txt.gz

# sudo mkdir -p /var/www/uploads
# sudo wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/upload.php -O /var/www/html/upload.php
# sudo chmod a+x /var/www/html/upload.php

# Enable Login without Password
sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
sudo echo "
[SeatDefaults]
autologin-guest=false
autologin-user=kali
autologin-user-timeout=0
" >> /etc/lightdm/lightdm.conf

# Installing necessarily tools
# sudo dpkg --add-architecture i386
sudo apt update
sudo apt install alacarte build-essential golang feroxbuster seclists neofetch htop rofi remmina kali-grant-root kali-root-login -y
wget https://download.sublimetext.com/sublime-text_build-3211_amd64.deb
wget https://code.visualstudio.com/sha/download\?build=stable\&os=linux-deb-x64 -O vscode.deb
sudo dpkg -i *.deb

# Installing Docker
# sudo apt install docker.io docker-compose
# sudo systemctl start docker
# sudo chmod 666 /var/run/docker.sock

# Python2 pip
wget https://gist.githubusercontent.com/anir0y/a20246e26dcb2ebf1b44a0e1d989f5d1/raw/a9908e5dd147f0b6eb71ec51f9845fafe7fb8a7f/pip2%2520install -O run.sh 
chmod +x run.sh # wget will save the output as run.sh
./run.sh # execute to install the pip2
pip2 install virtualenv

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.bak
mv ~/.oh-my-zsh/lib/directories.zsh ~/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh

# Local Setup
wget https://raw.githubusercontent.com/zyairelai/kali-rice/main/kali-2022-2/local.sh
chmod a+x local.sh
