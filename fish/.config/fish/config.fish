#  | | o      | |    
#  | |     ,  | |    
#  |/  |  / \_|/ \   
#  |__/|_/ \/ |   |_/
#  |\                
#  |/                

# Pywal
command -s wal; and wal -rt &

# Settings
set XDG_CONFIG_HOME "$HOME/.config"
set  XDG_CACHE_HOME "$HOME/.cache"
set   XDG_DATA_HOME "$HOME/.local/share"

set SHELL_CONFIG "$XDG_CONFIG_HOME/fish/config.fish"
set fish_greeting

# Aliases
test -f $XDG_CONFIG_HOME/bash/alias; and source $XDG_CONFIG_HOME/bash/alias
test -f $XDG_CONFIG_HOME/fish/alias.fish; and source $XDG_CONFIG_HOME/fish/alias.fish

# Functions
source $XDG_CONFIG_HOME/fish/functions.fish

# Keybinds
fish_vi_mode

# Misc
eval (env TERM=screen-256color dircolors -c)
