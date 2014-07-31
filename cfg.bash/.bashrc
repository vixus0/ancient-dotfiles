#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#        ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

. ~/.config/bash/env

. $XDG_CONFIG_HOME/bash/config
. $XDG_CONFIG_HOME/bash/alias


# Fix the TERM if we're SSH'd
[[ -n "$SSH_CLIENT" ]] && export TERM=xterm-256color
