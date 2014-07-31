#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#       ~/.profile
#


# Source environment variables and bashrc, just in case
EV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"

[[ -f $EV ]] && . $EV
[[ -f $RC ]] && . $RC


# Fix the TERM if we're SSH'd
[[ -n "$SSH_CLIENT" ]] && export TERM=xterm-256color


# Fix XDG directories to map to correct $HOME
sed "s|\$HOME|${HOME}|g" $XDG_CONFIG_HOME/user-dirs.tmp > $XDG_CONFIG_HOME/user-dirs.dirs


# Start X at login on first TTY provided we're not SSH'd in
if [[ -z "$SSH_CLIENT" && -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]]; then
  exec startx $XINITRC
fi
