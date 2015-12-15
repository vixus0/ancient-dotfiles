#  | | o      | |    
#  | |     ,  | |    
#  |/  |  / \_|/ \   
#  |__/|_/ \/ |   |_/
#  |\                
#  |/                

# Settings
set SHELL_CONFIG "$XDG_CONFIG_HOME/fish/config.fish"
set fish_greeting
set -g fish_color_cwd blue

# Aliases
source $XDG_CONFIG_HOME/bash/alias

# Functions
source $XDG_CONFIG_HOME/fish/functions.fish

# Keybinds
bind \e# comment_cmdline
bind \e] edit_cmdline

# Misc
eval (env TERM=screen-256color dircolors -c)
eval (python -m virtualfish)
