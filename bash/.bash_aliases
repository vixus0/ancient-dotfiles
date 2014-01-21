#!/bin/bash

## ALIASES

# Utilities
alias ls='echo; ls --group-directories-first --color=auto --classify -h'
alias cp='cp -i'
alias mv='mv -i'
alias df='echo; df -h'
alias du='echo; du -h'
alias la='echo; ls -lA'
alias s='ssh -XC'
alias suc='su -c'
alias dusrt='echo; du -hcs * | sort -hr'
alias redot='source $HOME/.bashrc'
alias lastj="journalctl --since=today | tac | sed -n '/-- Reboot --/{n;:r;/-- Reboot --/q;p;n;b r}' | tac"

# Programs 
alias wine32='env WINEARCH=win32 WINEPREFIX=~/.wine32 wine'
alias dotstow='stow -d $HOME/dots'
alias fehf='feh -F -d'
alias hc='herbstclient'
alias vg='valgrind --db-attach=yes --leak-check=yes --tool=memcheck --num-callers=16 --leak-resolution=high --track-origins=yes'

# Pacman
alias PIns='yaourt -S'
alias PUnins='sudo pacman -Rc'
alias PInfo='yaourt -Qi'
alias PGetInfo='yaourt -Si'
alias POwn='yaourt -Qo'
alias PStat='yaourt -Qs'
alias PList='yaourt -Ql'
alias PFind='yaourt'
alias PPUpd='sudo pacman -Syyu'
alias PAUpd='yaourt -Syua'


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
