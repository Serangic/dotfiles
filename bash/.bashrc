#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cpufreq='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq'

BOLD=$(tput bold)
NORMAL=$(tput sgr0)

PS1=' [${BOLD}\[\e[1;34m\]\w\[\e[0m\]${NORMAL}] β '

export TERMINAL=alacritty
export PATH="$HOME/bin:$PATH"
export EDITOR=nvim
export VISUAL=nvim

