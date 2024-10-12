#!/bin/bash

# Activate vi mode
set -o vi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Misc settings
export PROMPT_DIRTRIM='2' # Trim directory to the last 2 folders
export HISTSIZE=
export HISTSIZEFILE=    # Infinite history
shopt -s histappend     # Append to history instead of overwriting
shopt -s expand_aliases # Aliases are stored in history as complete command
shopt -s checkwinsize
complete -cf sudo

# Environmental variables
export SHELL=/bin/bash
export EDITOR=nvim
export GITDIR=$HOME/git/
export ZETTELDIR=$HOME/zk/
export PATH=$PATH:$GITDIR/tools

export VBOX_USB=usbfs

[[ -f "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"
[[ -f "$GITDIR/polyglot/polyglot.sh" ]] && . "$GITDIR/polyglot/polyglot.sh"
if [[ -d "$GITDIR/secretos" ]]; then
	for SECRETFILE in "$GITDIR"/secretos/*; do
		source "$SECRETFILE"
	done
fi

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
*:/Users/carlosvigil/.juliaup/bin:*) ;;

*)
	export PATH=/Users/carlosvigil/.juliaup/bin${PATH:+:${PATH}}
	;;
esac

# <<< juliaup initialize <<<
. "$HOME/.cargo/env"
