## Set up Xorg
#

# Execute global scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# Set correct keymap and specify compose key
setxkbmap gb && setxkbmap -option compose:ralt

# Process PCF fonts
xset +fp ~/.fonts/PCF && xset fp rehash &

# Merge Xresources
xrdb -merge ~/.Xresources &

# Xmodmap
xmodmap ~/.Xmodmap &

# Host specific stuff
case `hostname` in
  vix60)
    # Dual monitor
    ~/.screenlayout/vix60-cniedell.sh
    # Mouse acceleration
    xset m 4 0 &
    # Set gamma correction
    xgamma -gamma 1.25 &
    # Assign tablet buttons
    sudo setkeycodes 67 42 6c 29 68 125 6b 56 71 103 6f 108 6e 105 6d 106 69 28 &
    ;;
  vixlap)
    # Set gamma coorection
    xgamma -gamma 1.1 &
    # HD TV Dual screen
    ~/.screenlayout/vixlap-lgtv.sh
    ;;
esac

## Start Programs
#

# set wallpaper with feh
feh --bg-tile ~/.wallpaper

# redshift for night viewing (kdy)
redshift -l 56.1107:3.1674 -t 6500:4800 &

# rxvt-unicode daemon
urxvtd -q -f -o &

# dzen applets
~/scripts/statdzen &

# flash screensaver disabler
~/scripts/flashdpms &

# composite manager
xcompmgr &

# Window Manager
exec herbstluftwm
