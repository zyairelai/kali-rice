# No Sudo Password Policy
```
sudo dpkg-reconfigure kali-grant-root
```

# Personal Terminal Shortcuts
```
alias o="cd /opt"
alias opt="cd /opt"
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc

sudo echo "set linenumbers" >> ~/.nanorc
sudo mkdir /usr/share/wordlists
sudo chown -R kali /opt
sudo chown -R kali /var/www
sudo chown -R kali /usr/share/wordlists
```

# Tmux
```
echo -e "# Change the prefix key to C-a\nset -g prefix C-a\nunbind C-b\nbind C-a send-prefix\nset-option -g mouse on" > .tmux.conf
```

# ZSH Setup
```
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mv ~/.zshrc ~/.zshrc.bak
mv ~/.oh-my-zsh/lib/directories.zsh ~/.oh-my-zsh/lib/directories.zsh.bak
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
```

# XFCE Setup
```
mkdir ~/.ssh && mkdir ~/.config/rofi
wget https://raw.githubusercontent.com/zyairelai/kali-rice/main/dotfiles/ssh/config -O ~/.ssh/config
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/rofi/config.rasi -O ~/.config/rofi/config.rasi
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/helpers.rc -O ~/.config/xfce4/helpers.rc
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfwm4.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfwm4.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-panel.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-desktop.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-power-manager.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-power-manager.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/xfce4/xfce4-keyboard-shortcuts.xml -O ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml
wget https://raw.githubusercontent.com/zyairelai/kali-rice/master/dotfiles/tmux.conf -O ~/.tmux.conf
```
