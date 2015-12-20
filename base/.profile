#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#       ~/.profile
#

# Only source env vars if not in tmux instance
EV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"
test -f "$EV" -a -z "$TMUX" && . $EV
test -f "$RC" && . $RC

# Fix XDG directories to map to correct $HOME
if test ! -f $XDG_CONFIG_HOME/user-dirs.dirs; then
  sed "s|\$HOME|${HOME}|g" $XDG_CONFIG_HOME/user-dirs.tmp > $XDG_CONFIG_HOME/user-dirs.dirs
fi

# Start X
test -f $XINITRC && ln -sf $XINITRC $HOME/.xinitrc
test -z "${SSH_CONNECTION}${DISPLAY}" -a "$XDG_VTNR" -eq 1 && exec startx
