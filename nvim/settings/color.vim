" colorscheme setup
set background=dark
set cursorline

" tmux color compatibility
if exists("$TMUX")
	set termguicolors
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

highlight Comment cterm=italic gui=italic
highlight CursorLine cterm=none ctermbg=235 guibg='#2c2c2c'

" quick-scope colors
highlight QuickScopePrimary guifg='#afff5f' gui=underline,bold ctermfg=155 cterm=underline,bold
highlight QuickScopeSecondary guifg='#5fffff' gui=underline,bold ctermfg=81 cterm=underline,bold
