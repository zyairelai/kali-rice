#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "$0 is not running as root. Please run this as root, not sudo."
    exit 2
fi

# Enable Login without Password
sudo cp /etc/lightdm/lightdm.conf.bak /etc/lightdm/lightdm.conf
sudo echo "
[SeatDefaults]
autologin-guest=false
autologin-user=root
autologin-user-timeout=0
" >> /etc/lightdm/lightdm.conf

pip2 install virtualenv

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
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/ssh/sshd_config -O /etc/ssh/sshd_config
