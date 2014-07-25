#!/usr/bin/bash

# Dual monitor
xrandr \
  --output LVDS1 --primary --mode 1920x1080 --pos 0x0 --rotate normal \
  --output HDMI1 --mode 1360x768 --rotate normal --left-of LVDS1 \
  --output VIRTUAL1 --off \
  --output DP1 --off \
  --output VGA1 --off
    
# Set gamma coorection
xgamma -gamma 1.1 &

