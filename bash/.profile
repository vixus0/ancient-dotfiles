#
# ~/.profile
#

ENV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"

[[ -f $ENV ]] && . $ENV
[[ -f $RC ]] && . $RC

# Start X at login on first TTY
[[ -z "$SSH_CLIENT" && -z "$TMUX" && -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx $XINITRC

