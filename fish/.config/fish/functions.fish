#!/usr/bin/env fish

set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'

# Right prompt
function fish_right_prompt
  printf '%s%s' (set_color blue) (date "+%H:%M")
end

# Pad out command output
function pre_cmd --on-event fish_preexec
  echo
end

function post_cmd --on-event fish_postexec
  echo
end

# xdg-open
function o
  xdg-open $argv &
end

