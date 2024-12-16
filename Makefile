macos:
	# Change SHELL to bash (why zsh...)
	chsh -s /bin/bash

	# Create directories
	mkdir ~/git

	# Install homebrew
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	# Install dependent repos
	cd ~/git; gh repo clone agkozak/polyglot
	cd ~/git; gh repo clone agkozak/polyglot


	# Install julia
	curl -fsSL https://install.julialang.org | sh

	# Install nightly-neovim
	brew tap benjiwolff/neovim-nightly
	brew install neovim-nightly

	# Install basics
	brew install bash
	brew install ripgrep
	brew install bash-completion@2
	brew install coreutils
	brew install rust
	cargo install git-graph
