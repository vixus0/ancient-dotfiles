#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Simple prompt
PS1="$(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]root@\h\[\033[01;34m\] \W'; else echo '\[\033[01;34m\]\w'; fi) \$(if [[ \$? != 0 ]]; then echo \"\[\033[01;31m\]\"; else echo \"\[\033[01;32m\]\"; fi)\\$\[\033[00m\] "

. $HOME/.bash_environment
. $HOME/.bash_aliases
