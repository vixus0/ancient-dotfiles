#!/bin/sh
xrandr \
  --output LVDS1 --primary --mode 1024x768 --pos 0x0 --rotate normal \
  --output VGA1 --mode 1280x1024 --rotate normal --right-of LVDS1 \
  --output VIRTUAL1 --off 
