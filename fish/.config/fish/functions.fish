#!/usr/bin/env fish

# Left prompt
function fish_prompt
  if set -q VIRTUAL_ENV
    printf '%s%s%s ' (set_color white) (basename $VIRTUAL_ENV) (set_color normal)
  end
  printf '%s%s %s· ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

# Right prompt
function fish_right_prompt
  printf '%s%s %s%s' (set_color yellow) (gbranch) (set_color blue) (date "+%H:%M")
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

# edit commandline in editor
function edit_cmdline
  set -q EDITOR; or return 1
  set -l tmpfile (mktemp); or return 1
  commandline > $tmpfile
  eval $EDITOR $tmpfile
  commandline -r -- (cat $tmpfile)
  rm $tmpfile
end

# (un)comment commandline
function comment_cmdline
  set -l cmd (commandline)
  if test (echo $cmd | cut -c1) = "#"
    commandline (echo $cmd | cut -c2-)
  else
    commandline \#$cmd
  end
  commandline -f repaint
end

# quote commandline
function quote_cmdline
  set -l cmd (commandline)
  commandline \'$cmd\'
  commandline -f repaint
end
