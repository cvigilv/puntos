#!/bin/bash


[[ -r "$HOME/.bashrc" ]] && source "$HOME/.bashrc"

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# Created by `pipx` on 2025-02-12 19:21:36
export PATH="$PATH:/Users/carlos/git/puntos/.local/bin"
