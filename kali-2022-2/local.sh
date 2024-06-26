#!/bin/bash

# XFCE4 Desktop Setup
mkdir ~/.ssh && mkdir ~/.config/rofi
wget https://raw.githubusercontent.com/zyairelai/kali-rice/main/dotfiles/ssh/config -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/helpers.rc -O ~/.config/xfce4/helpers.rc
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/keyboards.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/keyboards.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/tmux.conf -O ~/.tmux.conf

# ZSH Setup
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme

echo "set linenumbers" >> .nanorc
echo "[general] \n  colors = true" >> ~/.ffufrc
echo -e "# Change the prefix key to C-a\nset -g prefix C-a\nunbind C-b\nbind C-a send-prefix\nset-option -g mouse on" > .tmux.conf
sudo rm -rf *.deb get-pip.py Desktop Documents Downloads Music Pictures Public Templates Videos setup.sh local.sh
reboot
