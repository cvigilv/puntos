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

function! Lightline_filepath()
	return expand('%')
endfunction
