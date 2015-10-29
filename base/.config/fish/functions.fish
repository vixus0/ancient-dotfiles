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

# After every command
function line --on-variable _
  echo
end

# Pastebin
function pb
  if test (count $argv) -gt 0
    set data $argv[1]
    set vanity $argv[2]
  else
    set data -
  end

  printf "Posting file: %s with vanity: %s\n" $data $vanity
  curl -sF "c=@$data" -w "%{redirect_url}" "https://ptpb.pw/~$vanity"
end

# xdg-open
function o
  xdg-open $argv &
end
