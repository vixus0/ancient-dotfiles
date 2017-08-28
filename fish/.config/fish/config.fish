#  | | o      | |    
#  | |     ,  | |    
#  |/  |  / \_|/ \   
#  |__/|_/ \/ |   |_/
#  |\                
#  |/                

# Pywal
wal -rt &

# Settings
set SHELL_CONFIG "$XDG_CONFIG_HOME/fish/config.fish"
set fish_greeting
set -g fish_color_cwd blue

# Aliases
source $XDG_CONFIG_HOME/bash/alias

# Functions
source $XDG_CONFIG_HOME/fish/functions.fish

# Keybinds
function fish_user_key_bindings
  bind \e\' quote_cmdline
  bind \e# comment_cmdline
  bind \e] edit_cmdline
end
funcsave fish_user_key_bindings

# Misc
eval (env TERM=screen-256color dircolors -c)
