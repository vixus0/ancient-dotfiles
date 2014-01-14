# Set correct keymap and specify compose key
(setxkbmap gb && setxkbmap -option compose:ralt) &

# Merge Xresources
xrdb -merge ~/.Xresources

# For Infinality font package
source ~/.infinality.sh

# Host-specific autostart
bash ~/.config/`hostname`/xstart

# Window Manager
[[ `hostname` == "vix60" ]] && exec pekwm
[[ `hostname` == "vixlap" ]] && exec herbstluftwm 
