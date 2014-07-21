#
# ~/.profile
#

EV="$HOME/.config/bash/env"
RC="$HOME/.bashrc"

[[ -f $EV ]] && . $EV
[[ -f $RC ]] && . $RC

# Ignore all this if running from tmux
if [[ -z "$TMUX" ]]; then

  # Start SSH agent
  eval $(ssh-agent)

  # Start X at login on first TTY
  [[ -z "$DISPLAY" && "$XDG_VTNR" -eq 1 ]] && exec startx $XINITRC

fi

# Fix XDG directories
sed "s|\$HOME|${HOME}|g" $XDG_CONFIG_HOME/user-dirs.tmp > $XDG_CONFIG_HOME/user-dirs.dirs
