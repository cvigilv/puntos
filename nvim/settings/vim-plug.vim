call plug#begin('~/.local/share/neovim/plugged')
	" Misc
	Plug 'mhinz/vim-startify'
	" Tools
	Plug 'liuchengxu/vim-which-key'
	Plug 'folke/which-key.nvim'
	Plug 'unblevable/quick-scope'
	Plug 'itchyny/lightline.vim'
	Plug 'jpalardy/vim-slime'
	" Ease-of-use
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'junegunn/vim-easy-align'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-commentary'
	Plug 'sirver/ultisnips'
	" Telescope
	Plug 'nvim-lua/popup.nvim'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	"Git
	Plug 'airblade/vim-gitgutter'
	Plug 'tpope/vim-fugitive'
	" Syntax
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'lervag/vimtex'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	" Colorscheme
	Plug 'nekonako/xresources-nvim'
	" LSP
	Plug 'kabouzeid/nvim-lspinstall'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/completion-nvim'
	" Plug 'hrsh7th/nvim-compe'
call plug#end()
