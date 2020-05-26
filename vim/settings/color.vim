" colorscheme setup
set background=dark
set cursorline

" tmux color compatibility
if exists("$TMUX")
	set t_Co=256
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
else
	set termguicolors
endif

" jellybeans customization
let g:jellybeans_use_term_italics = 1		" Use italics
if has('termguicolors') && &termguicolors	" CORRECT background color
	let g:jellybeans_overrides = {
	\    'background':	{
	\		'ctermbg': 'none', 
	\		'256ctermbg': 'none', 
	\		'guibg': 'none' 
	\		},
	\}
else
	let g:jellybeans_overrides = {
	\	'background': { 
	\		'guibg': '1c1c1c',
	\		'ctermbg': '234'
	\		},
	\}
endif
colorscheme jellybeans

" quick-scope colors
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
