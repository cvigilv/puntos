" colorscheme setup
set cursorline
set termguicolors

" tmux color compatibility
if exists("$TMUX")
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
	
" Change colorscheme based in window/pane/tab focus
function s:colores()
	highlight Normal     ctermfg=white   guifg='#F1F1F1'
	highlight Comment    cterm=italic    gui=italic
	highlight CursorLine ctermbg=236     guibg='#2B2E3B'
	highlight link       GitGutterAdd    DiffAdd
	highlight link       GitGutterChange DiffChange
	highlight link       GitGutterDelete DiffDelete

	let g:lightline = {
		\ 'colorscheme' : "tokyonight",
		\ 'active' : {
		\	'left':[ ['mode', 'paste'],
		\			 ['gitbranch','readonly','filename','modified', 'extension']],
		\	'right':[['filetype'], ['LineInfo' ]]
		\	},
		\ 'component': {
		\	'LineInfo': "ℓ %l/%L · ⅽ %c/%{strwidth(getline('.'))}"
		\	},
		\ 'component_function': {
		\	'filename': 'Lightline_filepath',
		\   'gitbranch': 'FugitiveHead'
		\	}
		\ }
	
	call lightline#enable()
endfunction

augroup ColorsByFocus
	autocmd!
	autocmd ColorScheme * call s:colores()
augroup END

colorscheme tokyonight

" quick-scope colors
highlight QuickScopePrimary guifg='#afff5f' gui=underline,bold ctermfg=155 cterm=underline,bold
highlight QuickScopeSecondary guifg='#5fffff' gui=underline,bold ctermfg=81 cterm=underline,bold
