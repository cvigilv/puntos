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
export EDITOR=nvim
export GITDIR=$HOME/git/
export ZETTELDIR=$HOME/zk/
export ORGDIR=$HOME/org/
export PATH=$PATH:$GITDIR/caja-de-herramientas:$HOME/.cargo/bin:$HOME/git/puntos/.local/bin:$HOME/.local/share/bob/nvim-bin
export VBOX_USB=usbfs

[[ -f "$HOME/.git-completion.bash" ]] && . "$HOME/.git-completion.bash"
[[ -f "$HOME/.bash_aliases" ]] && . "$HOME/.bash_aliases"
[[ -f "$GITDIR/caja-de-herramientas" ]] && PATH="$PATH:$GITDIR/caja-de-herramientas"
[[ -f "$GITDIR/polyglot/polyglot.sh" ]] && . "$GITDIR/polyglot/polyglot.sh"
if [[ -d "$GITDIR/secretos" ]]; then
	for SECRETFILE in "$GITDIR"/secretos/*; do
		source "$SECRETFILE"
	done
fi

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
*:/Users/carlos/.juliaup/bin:*) ;;

*)
	export PATH=/Users/carlos/.juliaup/bin${PATH:+:${PATH}}
	;;
esac

# <<< juliaup initialize <<<

# Created by `pipx` on 2025-02-12 19:21:36
export PATH="$PATH:/Users/carlos/git/puntos/.local/bin"

# opencode
export PATH=/Users/carlos/.opencode/bin:$PATH
