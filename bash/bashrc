#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Activate vi mode
set -o vi

# Misc settings
export PROMPT_DIRTRIM='2' # Trim directory to the last 2 folders
export HISTSIZE= 
export HISTSIZEFILE=   # Infinite history
shopt -s histappend       # Append to history instead of overwriting
shopt -s expand_aliases   # Aliases are stored in history as complete command
shopt -s checkwinsize
complete -cf sudo

# Environmental variables
export SHELL=/bin/bash
export EDITOR=nvim
export PATH=$PATH:$HOME/documents/git/tools
export GITDIR=$HOME/documents/git
export ZETTELDIR=$HOME/documents/zk

[[ -f ~/.bash_aliases ]] && . "$HOME/.bash_aliases"
[[ -f ~/.polyglot.sh ]] && . "$HOME/.polyglot.sh"
[[ -f ~/.fzf.sh ]] && . "$HOME/.fzf.sh"
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

# Created by `pipx` on 2022-02-16 18:49:08
export PATH="$PATH:/home/carlos/.local/bin"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in *:/home/carlos/.julia/juliaup/bin:*);; *)
    export PATH=/home/carlos/.julia/juliaup/bin${PATH:+:${PATH}};;
esac

# <<< juliaup initialize <<<
