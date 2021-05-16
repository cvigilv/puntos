" colorscheme setup
set cursorline

" tmux color compatibility
if exists("$TMUX")
	set termguicolors
	let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
	let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
else
	set termguicolors
endif
	
" Change colorscheme based in window/pane/tab focus
function s:FocusedColorscheme()
	colorscheme dracula

	" Some minor tweaks to the colorscheme
	highlight Normal ctermbg=none guibg=none
	highlight Comment cterm=italic gui=italic
	highlight CursorLine cterm=none ctermbg=235 guibg='#2B2E3B'
	
	let g:lightline = {
		\ 'colorscheme' : 'dracula',
		\ 'active' : {
		\	'left':[ ['mode', 'paste'],
		\			 ['readonly','filename','modified', 'extension']],
		\	'right':[['filetype'], [], [ 'LineInfo' ]]
		\	},
		\ 'component': {
		\	'LineInfo': 'ℓ %l/%L - 𝚌 %c'
		\	},
		\ 'component_function': {
		\	'filename': 'Lightline_filepath'
		\	}
		\ }
	
	call lightline#enable()
endfunction

function s:UnfocusedColorscheme()
	colorscheme atlas

	" Some minor tweaks to the colorscheme
	highlight Normal ctermbg=none guibg=none
	highlight Comment cterm=italic gui=italic
	highlight CursorLine cterm=none ctermbg=235 guibg='#2B2E3B'

	let g:lightline = {
		\ 'colorscheme' : 'atlas',
		\ 'active' : {
		\	'left':[ ['mode', 'paste'],
		\			 ['readonly','filename','modified', 'extension']],
		\	'right':[['filetype'], [], [ 'LineInfo' ]]
		\	},
		\ 'component': {
		\	'LineInfo': 'ℓ %l/%L - 𝚌 %c'
		\	},
		\ 'component_function': {
		\	'filename': 'Lightline_filepath'
		\	}
		\ }

	call lightline#enable()
endfunction

augroup ColorsByFocus
	autocmd!
	autocmd FocusGained,BufEnter * call s:FocusedColorscheme()
	autocmd FocusLost,BufLeave * call s:UnfocusedColorscheme()
augroup END

" quick-scope colors
highlight QuickScopePrimary guifg='#afff5f' gui=underline,bold ctermfg=155 cterm=underline,bold
highlight QuickScopeSecondary guifg='#5fffff' gui=underline,bold ctermfg=81 cterm=underline,bold
