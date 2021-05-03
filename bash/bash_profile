#!/bin/bash

if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

set -o vi
export EDITOR=nvim
export ZETTEL_DIR=/home/$USER/Dropbox

[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
