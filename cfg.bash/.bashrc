#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#        ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. $XDG_CONFIG_HOME/bash/config
. $XDG_CONFIG_HOME/bash/alias

[[ -z "$TMUX" ]] && tmux
