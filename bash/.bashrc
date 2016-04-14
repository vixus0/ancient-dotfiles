#!/usr/bin/env bash
#
#  | |   __,   ,  | |    
#  |/ \_/  |  / \_|/ \   
#   \_/ \_/|_/ \/ |   |_/
#
#        ~/.bashrc


# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Bash stuff
source "$XDG_CONFIG_HOME/bash/env"
source "$XDG_CONFIG_HOME/bash/config"
source "$XDG_CONFIG_HOME/bash/alias"
source "$XDG_CONFIG_HOME/bash/functions"
