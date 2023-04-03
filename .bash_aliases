#!/bin/bash

# exa
alias ls='exa --group-directories-first'
alias ll='exa -lh --git --group-directories-first'
alias l.='exa -ad .* --group-directories-first'
alias ll.='exa -lhad --git --group-directories-first .*'

# n/vim
alias v='nvim'
alias vi='nvim'
alias vim='nvim'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gd='git diff'
alias gr='git restore'
alias gb='git branch'
alias go='git checkout'
alias gl='git logline'
alias groot='git root'

# python
alias activate='source $HOME/.venv/$(ls -1 $HOME/.venv | fzf --height 1 --prompt "Select Python venv :: ")/bin/activate'

# misc
alias ..='cd ..'
alias :q='exit'
alias pluto='julia -e "using Pluto; Pluto.run()"'
alias grep='grep --colour=auto'
alias tmux='tmux -2'
alias ?='cht.sh'

# functions / tools
function tab () {
	column -s, -t < "$1" | less -#2 -N -S
}

function getPDB () {
	wget "https://files.rcsb.org/download/${1^^}.pdb"
}
function getCIF () {
	wget "https://files.rcsb.org/download/${1^^}.cif"
}

function tf () {
	tmux a -t $(tmux ls | cut -d':' -f 1 | fzf --height 10)
}

function pdf2png () {
	pdftoppm -png "${1}" "${1%.*}"
}
