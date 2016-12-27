#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --group-directories-first --time-style=+"%d.%m.%Y %H:%M" --color=auto -F'
#PS1='\n\[\033[0;34m\][\[\033[0m\]\u\[\033[0;34m\]]\[\033[0m\] \w \[\033[0;34m\]\$\[\033[0m\] '
source ~/.bash_git
PS1='\n\[\e[1;37m\]|-- \[\e[1;32m\]\u\[\e[0;39m\]@\[\e[1;36m\]\h\[\e[0;39m\]:\[\e[1;33m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " (%s)")\[\e[0;39m\] \[\e[1;37m\]--|\[\e[0;39m\]\nλ '

function twitch {
	mpv https://twitch.tv/$1
}

man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}

export HISTCONTROL=ignoredups
shopt -s checkwinsize

alias sudo='sudo '
alias pi.mount="mount.cifs //192.168.192.100/myshare /mnt/pi -o user=pi"
alias pi.umount="umount /mnt/pi"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg \"$@"\"

function use-hdmi {
	xrandr --output HDMI-1 --auto --primary
	xrandr --output LVDS-1 --off
	feh --randomize --bg-fill ~/Pictures/Wallpapers/*
}

