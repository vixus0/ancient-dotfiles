#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# This makes sure the first prompt won't have a newline, but subsequent ones will
export PROMPT_COMMAND="export PROMPT_COMMAND=echo"
PS1="\[\e[40m\] \t \$(if [[ \$? != 0 ]]; then echo \"\[\e[41m\]\[\e[30m\]⮀ \\W \[\e[0;31m\]⮀\"; else echo \"\[\e[42m\]\[\e[30m\]⮀ \\W \[\e[0;32m\]⮀\"; fi)\[\e[0m\] "

. $HOME/.bash_aliases
