colorscheme jellybeans
set background=dark
set termguicolors
set cursorline

" tmux color compatibility
if exists("$TMUX")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" Jellybeans customization
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
	\    'background': { 'guibg': '1c1c1c' },
	\}
endif
