# No Sudo Password Policy
```
sudo dpkg-reconfigure kali-grant-root
```

# Personal Terminal Shortcuts
```
sudo ln -s /usr/bin/clear /usr/bin/c
sudo ln -s /usr/bin/screen /usr/bin/sc
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
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zshrc -O ~/.zshrc
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/directories.zsh -O ~/.oh-my-zsh/lib/directories.zsh
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/kali.zsh-theme -O ~/.oh-my-zsh/custom/themes/kali.zsh-theme
sudo ln -s /etc/profile.d/vte-2.91.sh /etc/profile.d/vte.sh
```

