# Session
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
export GTK_IM_MODULE="xim"

# Settings
(setxkbmap gb && setxkbmap -option compose:ralt) &
xgamma -gamma 1.25 &
xrdb -merge ~/.Xresources

# Tablet buttons for pekwm menus
(sudo setkeycodes 68 122 6c 135 6b 136 6e 140 6d 141 71 142 6f 143 &&
 xmodmap ~/.Xmodmap) &

# Autostart
urxvtd &
feh --bg-center ~/img/wall/busstop.jpg &
tint2 &
tidybattery &
~/dev/netmon/netmon &
conky -c ~/.conky.conf &

# Window Manager
exec pekwm 
