#!/bin/bash

# Utilities
alias ls='ls --group-directories-first --color=auto --classify -h'
alias cp='cp -i'
alias mv='mv -i'
alias df='df -h'
alias du='du -h'
alias la='ls -lA'
alias s='ssh -XC'
alias hc='herbstclient'
alias wine32='env WINEARCH=win32 WINEPREFIX=~/.wine32 wine'
alias dotstow='stow -d $HOME/stow'
alias redot='source $HOME/.bashrc'
alias dusrt='du -hcs * | sort -hr'
alias fehf='feh -F -d'
alias suc='su -c'

# Packages
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

# Pastebin
ix() {
  curl -n -F 'f:1=<-' http://ix.io
}

