#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#       ~/.profile
#


# Source environment variables and bashrc, just in case
EV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"


# Only source env vars if not in tmux instance
[ -f $EV -a -z "$TMUX" ] && . $EV
[ -f $RC ] && . $RC


# Fix XDG directories to map to correct $HOME
rm $XDG_CONFIG_HOME/user-dirs.dirs
sed "s|\$HOME|${HOME}|g" $XDG_CONFIG_HOME/user-dirs.tmp > $XDG_CONFIG_HOME/user-dirs.dirs


# Start X at login on first TTY provided we're not SSH'd in
if [ -z "$SSH_CLIENT" -a -z "$DISPLAY" -a "$XDG_VTNR" -eq 1 ]; then
  exec startx $XINITRC
fi
