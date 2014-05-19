#
# ~/.profile
#

ENV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"

[[ -f $ENV ]] && . $ENV
[[ -f $RC ]] && . $RC

# Exit here if we're in a tmux session
[[ -n "$TMUX" ]] && exit

# Start X at login on first TTY
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx $XINITRC

