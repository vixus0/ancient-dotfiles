#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Start X at login on first TTY
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx

