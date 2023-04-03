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
export GITDIR=$HOME/git
export ZETTELDIR=$HOME/zk
export PATH=$PATH:$GITDIR/tools

[[ -f "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"
[[ -f "$GITDIR/polyglot/polyglot.sh" ]] && . "$GITDIR/polyglot/polyglot.sh"

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/carlos/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/carlos/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh
export PATH=$ANACONDA_INSTALL_DIR/bin:$PATH