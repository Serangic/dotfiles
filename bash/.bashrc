#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias batinfo="~/bin/batinfo.sh"

PS1=' [\[\e[1;34m\]\w\[\e[0m\]] $ '

export TERMINAL=alacritty
export PATH="$HOME/bin:$PATH"

sysupdate() {
	echo "Updating system and packages via Pacman..."
	sudo pacman -Syu
	echo -e "\e[1;32mUpdates have been completed.\e[0m"
}
