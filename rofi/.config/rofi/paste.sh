#!/usr/bin/env bash

if test -z "$@"; then
  echo parimary secondary clipboard | xargs -n1 -IXX xclip -o -selection XX
else
  $@
fi
