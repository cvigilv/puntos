#
# ~/.bash_profile
#
[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
	exec startx
fi

[[ -f "$HOME/.git-completion.bash" ]] && source "$HOME/.git-completion.bash"
# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
*:$HOME/.juliaup/bin:*) ;;

*)
	export PATH=$HOME.juliaup/bin${PATH:+:${PATH}}
	;;
esac

# <<< juliaup initialize <<<

eval "$(/opt/homebrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
		. "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
	else
		export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
	fi
fi
unset __conda_setup
# <<< conda initialize <<<
. "$HOME/.cargo/env"

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/opt/homebrew/opt/micromamba/bin/micromamba';
export MAMBA_ROOT_PREFIX='/Users/carlosvigil/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
