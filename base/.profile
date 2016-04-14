#!/usr/bin/env bash
#
#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#       ~/.profile
#

# Only source env vars if not in tmux instance
EV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"

# shellcheck source=.config/bash/env
test -f "$EV" -a -z "$TMUX" && . "$EV"

# shellcheck source=.bashrc
test -f "$RC" && . "$RC"

# Fix XDG directories to map to correct $HOME
USER_DIR_TMP="$XDG_CONFIG_HOME/user-dirs.tmp"
USER_DIR_DIRS="$XDG_CONFIG_HOME/user-dirs.dirs"
if test ! -f "$USER_DIR_DIRS"; then
  sed "s|\$HOME|${HOME}|g" "$USER_DIR_TMP" > "$USER_DIR_DIRS"
fi

# Start X
VTNR="${XDG_VTNR:-0}"
test -f "$XINITRC" && ln -sf "$XINITRC" "$HOME/.xinitrc"
test -z "${SSH_CONNECTION}${DISPLAY}" -a "$VTNR" -eq 1 && exec startx

# Import environment variables into systemd
systemctl --user import-environment
