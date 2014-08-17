#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#        ~/.bashrc


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Source VTE functions 
if [[ $TERM == "xterm-termite" && -f /etc/profile.d/vte.sh ]]; then
  . /etc/profile.d/vte.sh
fi


# Bash stuff
. ~/.config/bash/env
. $XDG_CONFIG_HOME/bash/config
. $XDG_CONFIG_HOME/bash/alias
