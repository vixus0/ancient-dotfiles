# Set correct keymap and specify compose key
setxkbmap gb && setxkbmap -option compose:ralt

# Process PCF fonts
xset +fp ~/.fonts/PCF
xset fp rehash

# Merge Xresources
xrdb -merge ~/.Xresources

# For Infinality font package
source ~/.infinality.sh

# Autostart X apps
bash ~/.xstart

# Window Manager
exec herbstluftwm 
