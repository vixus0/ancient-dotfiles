set TERM screen-256color
set fish_greeting

alias l "ls"
alias g "grep -Rni"
alias q "exit"
alias redot "source $XDG_CONFIG_HOME/fish/config.fish"

function fish_prompt
  printf '%s%s %s· ' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

function fish_right_prompt
  printf '%s%s %s%s' (set_color yellow) (gbranch) (set_color blue) (date "+%H:%M")
end

function line --on-variable _
  hr ─
end

eval (dircolors -c)
