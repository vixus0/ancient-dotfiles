# Set correct keymap and specify compose key
setxkbmap gb && setxkbmap -option compose:ralt

# Process PCF fonts
xset +fp ~/.fonts/PCF
xset fp rehash

# Merge Xresources
xrdb -merge ~/.Xresources

# Host specific stuff
case `hostname` in
  vix60)
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

# rxvt-unicode daemon
urxvtd -q -f -o &

# set wallpaper with feh
feh --bg-tile ~/.wallpaper

# dzen applets
~/scripts/statdzen &

# flash screensaver disabler
~/scripts/flashdpms &

# composite manager
xcompmgr &

# Window Manager
exec herbstluftwm
