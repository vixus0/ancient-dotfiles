#!/bin/bash

id=`xdotool getactivewindow 2> /dev/null`
if [[ -n $id ]]; then
  xwininfo -id $id | awk '/^xwininfo/ {split($0, a, "\""); print a[2]}'
fi
