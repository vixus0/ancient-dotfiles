set TERM screen-256color
set fish_greeting

alias l "ls --group-directories-first --classify -h"
alias g "grep -Rni"
alias q "exit"
alias e "$EDITOR"
alias t "tmux -f $XDG_CONFIG_HOME/tmux/local.conf"
alias o "xdg-open"
alias cp "cp -i"
alias mv "mv -i"
alias rmr "rm -rfI"
alias su "su --login"
alias less "less -RS"
alias redot "source $XDG_CONFIG_HOME/fish/config.fish"

function fish_prompt
  if set -q VIRTUAL_ENV
    printf '%s%s%s ' (set_color white) (basename $VIRTUAL_ENV) (set_color normal)
  end
  printf '%s%s %s· ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function fish_right_prompt
  printf '%s%s %s%s' (set_color yellow) (gbranch) (set_color blue) (date "+%H:%M")
end

function line --on-variable _
  echo
end

eval (dircolors -c)
eval (python -m virtualfish)
