let g:NetrwIsOpen=0
let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=4
let g:netrw_winsize=20

function! ToggleNetrw()
	if g:NetrwIsOpen
		let i = bufnr("$")
		while (i >= 1)
			if (getbufvar(i, "&filetype") == "netrw")
				silent exe "bwipeout " . i
			endif
			let i-=1
		endwhile
		let g:NetrwIsOpen=0
	else
		let g:NetrwIsOpen=1
		silent Lexplore
	endif
endfunction

function! OpenToRight()
	:normal v
	let g:path=expand('%:p')
	:q!
	execute 'belowright vnew' g:path
	:normal <C-l>
endfunction

function! OpenBelow()
	:normal v
	let g:path=expand('%:p')
	:q!
	execute 'belowright new' g:path
	:normal <C-l>
endfunction

nnoremap <leader>t :call ToggleNetrw()<CR>
function! NetrwMappings()
	noremap <buffer> V :call OpenToRight()<CR>
	noremap <buffer> H :call OpenBelow()<CR>
endfunction

augroup netrw_mappings
	autocmd!
	autocmd filetype netrw call NetrwMappings()
augroup END

autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
