#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# settings
export EDITOR=vim

# aliases
alias ls='ls --color=auto'
alias s='ssh -XC $1'
alias herbc='herbstclient'
alias wine32='env WINEARCH=win32 WINEPREFIX=~/.wine32 wine'

# functions
goo() { 
  dwb "$*" &> /dev/null & 
}

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

# ps1 stuff
#PS1='[\u@\h \W]\$ '


