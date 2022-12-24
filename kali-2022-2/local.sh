#!/bin/bash

# Configure Python
wget https://bootstrap.pypa.io/get-pip.py
python3.9 get-pip.py
~/.local/bin/pip3.9 install droopescan
sudo cp ~/.local/bin/droopescan /usr/bin/droopescan

# XFCE4 Desktop Setup
mkdir ~/.ssh && mkdir ~/.config/rofi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/ssh/config -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/helpers.rc -O ~/.config/xfce4/helpers.rc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/tmux.conf -O ~/.tmux.conf

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme

sudo rm -rf get-pip.py *.deb Desktop Documents Downloads Music Pictures Public Templates Videos setup.sh local.sh
reboot
