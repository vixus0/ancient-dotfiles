#  | | o      | |    
#  | |     ,  | |    
#  |/  |  / \_|/ \   
#  |__/|_/ \/ |   |_/
#  |\                
#  |/                

# Settings
set TERM screen-256color
set SHELL_CONFIG "$XDG_CONFIG_HOME/fish/config.fish"
set fish_greeting
set -g fish_color_cwd blue

# Aliases
source $XDG_CONFIG_HOME/bash/alias

# Functions
source $XDG_CONFIG_HOME/fish/functions.fish

# Misc
eval (dircolors -c)
eval (python -m virtualfish)
