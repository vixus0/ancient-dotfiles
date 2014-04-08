#!/bin/bash

## ALIASES

[[ -e /usr/bin/yaourt ]] && pacman="yaourt" || pacman="sudo pacman"

# Shell commands
alias ls='echo; ls --group-directories-first --color=auto --classify -h'
alias cp='cp -i'
alias mv='mv -i'
alias df='echo; df -h'
alias du='echo; du -h'
alias dud='echo; du -hcs * | sort -hr'
alias la='echo; ls -lA'
alias grep='grep --color=auto'
alias dmesg='dmesg --color'
alias s='ssh -XC'
alias ocd='cd -'

# Actions
alias redot='source $HOME/.bashrc'
alias lastj="journalctl --since=today | tac | sed -n '/-- Reboot --/{n;:r;/-- Reboot --/q;p;n;b r}' | tac"
alias xloc="DISPLAY=:0"
alias po="sudo poweroff"
alias re="sudo reboot"

# Launchers
alias wine32='env WINEARCH=win32 WINEPREFIX=~/.wine32 wine'
alias dotstow='stow -d $HOME/dots'
alias fehf='feh -F -d'
alias herbc='herbstclient'
alias valgr='valgrind --db-attach=yes --leak-check=yes --tool=memcheck --num-callers=16 --leak-resolution=high --track-origins=yes'

# Pacman
alias PIns="$pacman -S"
alias PUnins='sudo pacman -Rc'
alias PInfo="$pacman -Qi"
alias PGetInfo="$pacman -Si"
alias POwn="$pacman -Qo"
alias PStat="$pacman -Qs"
alias PList="$pacman -Ql"
alias PFind="yaourt"
alias PPUpd="sudo pacman -Syyu"
alias PAUpd="yaourt -Syua"

# Clipboard
alias CPr="xclip -o -selection PRIMARY"
alias CSe="xclip -o -selection SECONDARY"
alias CCl="xclip -o -selection CLIPBOARD"

## FUNCTIONS

# Pastebin
ix() {
  curl -n -F 'f:1=<-' http://ix.io
}

astart() {
  [[ -z `pidof $1` ]] && $@
}

cstart() {
  while [[ -z `pidof $1` ]]; do
    sleep .5
  done
  astart ${@:2}
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

lns() {
  ln -s `realpath $1` $2
}

mpvp() {
  if [[ $1 == "tv" ]]; then
    url="${2:-`xclip -o -selection clipboard`}"
    herbstclient reload
    args="--no-cache --ao=alsa:device=hdmi --title=playontv $url"
  else
    args="${1:-`xclip -o -selection clipboard`}"
  fi
  mpv $args
} 

