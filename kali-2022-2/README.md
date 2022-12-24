# Kali XFCE 2022.2 Setup

### No Sudo Password Policy
```
sudo dpkg-reconfigure kali-grant-root
```

### Firefox Configuration
- `about:config`  
- `True` - `toolkit.tabbox.switchByScrolling`
- `False` - `ui.key.menuAccessKeyFocuses`

### Script Automation
```
wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/setup.sh
chmod a+x setup.sh
sudo ./setup.sh
./local.sh
```

# After Rebooting

### Eye Candy Setup
- `Appearance` > `Fonts` > `DPI`
- Delete Folder Bookmark
- Change Default Application
- Change Tilix Shortcut 
- Change Tilix Font Size `85-24-13`

# Extra touch for Desktop
- `git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k`
- `wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/zsh/power.zshrc -O ~/.zshrc`
- `wget https://raw.githubusercontent.com/zyairelai/unix-rice/master/kali-xfce/dotfiles/movescreen.py`
- `chmod a+x movescreen.py && sudo mv /usr/local/bin/`
- Go to `Window Manager` and change the left right workspace
- `sudo apt install wmctrl`

# Add input languages
- `sudo apt-get install ibus ibus-pinyin`
- Open `ibus preferences`

# Update Linux Kernel 
- `sudo apt install linux-image-5.18.0-kali5-amd64 linux-headers-5.18.0-kali5-amd64`

### Sublime Text Build 3211
- Go to `Preferences` -> `Settings` and add the following:
```
{
	"update_check": false,
	"font": 14
}
```
```
----- BEGIN LICENSE -----
Member J2TeaM
Single User License
EA7E-1011316
D7DA350E 1B8B0760 972F8B60 F3E64036
B9B4E234 F356F38F 0AD1E3B7 0E9C5FAD
FA0A2ABE 25F65BD8 D51458E5 3923CE80
87428428 79079A01 AA69F319 A1AF29A4
A684C2DC 0B1583D4 19CBD290 217618CD
5653E0A0 BACE3948 BB2EE45E 422D2C87
DD9AF44B 99C49590 D2DBDEE1 75860FD2
8C8BB2AD B2ECE5A4 EFC08AF2 25A9B864
------ END LICENSE ------
```

# Kali Main Machine Snapshots
- https://www.kali.org/docs/installation/btrfs/
