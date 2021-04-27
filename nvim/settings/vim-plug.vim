call plug#begin('~/.local/share/neovim/plugged')
	" Misc
	Plug 'mhinz/vim-startify'
	" Ease-of-use
	Plug 'itchyny/lightline.vim'
	Plug 'unblevable/quick-scope'
	Plug 'christoomey/vim-tmux-navigator'
	Plug 'liuchengxu/vim-which-key'
	Plug 'junegunn/vim-easy-align'
	Plug 'jpalardy/vim-slime'
	"Git
	Plug 'airblade/vim-gitgutter'
	" Syntax
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'JuliaEditorSupport/julia-vim'
	Plug 'donRaphaco/neotex', { 'for': 'tex' }
	" Colorscheme
	Plug 'nanotech/jellybeans.vim'
	Plug 'cormacrelf/vim-colors-github'
	" LSP
	Plug 'nvim-lua/diagnostic-nvim'
	Plug 'nvim-lua/completion-nvim'
	Plug 'neovim/nvim-lsp'
	Plug 'neovim/nvim-lspconfig'
call plug#end()
