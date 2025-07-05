#!/bin/bash

# exa
alias ls='eza --group-directories-first'
alias ll='eza -lh --git --group-directories-first'
alias l.='eza -ad .* --group-directories-first'
alias ll.='eza -lhad --git --group-directories-first .*'

# n/vim
# alias nvim="env TERM=wezterm nvim"
alias v='nvim'
alias vi='nvim'
alias vim='nvim'
alias zc="cd $ORGDIR && nvim -c 'Org capture'; cd -"
alias za="cd $ORGDIR && nvim -c 'Org agenda g'; cd -"
alias zf="cd $ORGDIR && nvim -c 'Denote search'; cd -"
alias zn="cd $ORGDIR && nvim -c 'Denote note'; cd -"

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
alias gg="git graph -m simple -w none -l -r"
alias cc_scope="git log --oneline | cut -d' ' -f 2 | sed -n 's/.*(\([^()]*\)).*/\1/p' | sort -u"

# python
alias activate='source $HOME/.venv/$(ls -1 $HOME/.venv | fzf --height 1 --prompt "Select Python venv :: ")/bin/activate'

# julia
alias runic="julia --project=@runic -e 'using Runic; exit(Runic.main(ARGS))' --"
alias pluto='julia --project=@pluto -e "using Pluto; Pluto.run()"'

# misc
alias ..='cd ..'
alias :q='exit'
alias grep='grep --colour=auto'
alias tmux='tmux -2'

# functions / tools
function tab() {
	column -s, -t <"$1" | less -#2 -N -S
}

function getPDB() {
	wget "https://files.rcsb.org/download/${1}.pdb"
}
function getCIF() {
	wget "https://files.rcsb.org/download/${1}.cif"
}
function getAF() {
	wget "https://alphafold.ebi.ac.uk/files/${1}.pdb"
}

function getAF2() {
	wget "https://alphafold.ebi.ac.uk/files/AF-${1}-F1-model_v4.pdb"
}

function tf() {
	tmux a -t "$(tmux "ls" | cut -d':' -f 1 | fzf --height 10)"
}

function pdf2png() {
	pdftoppm -png "${1}" "${1%.*}"
}
