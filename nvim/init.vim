" The Almighty Leader (Key)
let mapleader="\<Space>"

" General configuration
filetype plugin on             " Load ftplugin.vim in 'runtimepath'
syntax enable                  " Enable syntax highlight
set nocompatible
set encoding=UTF-8             " Character encoding inside of Vim
set fileencoding=UTF-8         " Character encoding for the file in the buffer
set noshowmode                 " Don't show the ugly standard vim mode indicator at the end of the file
set nowrap                     " Don't wrap lines
set number                     " Add line numbering
set relativenumber             " Add relative numbering, this is a must in my opinion
set tabstop=4                  " Tab of size equal to 4 spaces
set softtabstop=4              " Tabs are actually 4 spaces
set shiftwidth=4               " If tab character is found, show as indent of size equal to 4 spaces
set autoindent				   " Enable autoindent, this for Vim is copying indentation for new line
set smartindent				   " Autoindent for C-like style programs
set hlsearch                   " Highlight searched word
set incsearch                  " Start searching  before pressing <Enter>
set smartcase                  " Smart case sensitivity for easier searching
set wildmenu                   " Command-line completion operates in enhanced way
set wildmode=longest,list,full " Completition mode used to showcase options
set scrolloff=5                " Leave some lines in the top and end of the file to have context
set laststatus=2               " Enable the 'pretty' statusline
set splitbelow                 " Horizontal splitting will be automatically placed on the bottom
set splitright                 " Vertical splitting will be automatically placed on the right
set conceallevel=0             " Don't hide formatting characters
set autochdir                  " Change current working directory to wherever is the file
set formatoptions-=cro         " Stop newline continuation of comments
set clipboard=unnamedplus      " Copy paste between vim and everything else
set mouse=a					   " Activate mouse
set timeoutlen=500
set signcolumn=number          " Replace number with sign
let g:vimsyn_embed='lPr'       " Highlight embedded code
let g:netrw_dirhistmax=0       " No Netrw history
 
" Source everything else (it's cleaner this way)
runtime settings/vim-plug.vim
runtime settings/lsp.vim
runtime settings/treesitter.vim
runtime settings/color.vim
runtime settings/netwr.vim
runtime settings/mappings.vim
runtime! settings/plugins/*.vim
