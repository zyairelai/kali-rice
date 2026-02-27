# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH Theme
ZSH_THEME="kali"
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder
plugins=(git)
source $ZSH/oh-my-zsh.sh

# User configuration
. /etc/profile.d/vte.sh
export PATH='/usr/local/sbin:/usr/sbin:/sbin:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/kali/.dotnet/tools:/home/kali/.local/bin/'

alias cjohn="rm -rf ~/.john"
alias cssh="rm ~/.ssh/known_hosts"

disable r
alias c="clear"
alias sc="screen"
alias b="/opt/bazi.py"
alias bz="/opt/bazi.py"
alias bazi="/opt/bazi.py"
alias web='python3 -m http.server 80'
alias webserver='python3 -m http.server 80'

# Folder Destination
alias opt="cd /opt"
alias des="cd /mnt/c/Users/Louis/Desktop"
alias doc="cd /mnt/c/Users/Louis/Documents"
alias dow="cd /mnt/c/Users/Louis/Downloads"
alias mus="cd /mnt/c/Users/Louis/Music"
alias pic="cd /mnt/c/Users/Louis/Pictures"
alias vid="cd /mnt/c/Users/Louis/Videos"
