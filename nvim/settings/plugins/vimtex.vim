" Basic config
let g:vimtex_enabled=1
let g:vimtex_complete_enabled=1
let g:vimtex_complete_close_braces=1
let g:vimtex_parser_bib_backend='bibtex'
let g:vimtex_complete_bib = { 'simple':1,
			\ 'menu_fmt':'@author_short (@year), "@title"',
			\ 'abbr_fmt':'@key'}
let g:vimtex_view_method='zathura'
let g:vimtex_view_automatic=1
let g:vimtex_quickfix_mode=0

" Enable backward search from .pdf to (neo)vim
if empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

" Come magical stuff for a cleaner experience
function! CloseViewers()
	if executable('xdotool') && exists('b:vimtex') && exists('b:vimtex.viewer') && b:vimtex.viewer.xwin_id > 0
		call system('xdotool windowclose '. b:vimtex.viewer.xwin_id)
	endif
endfunction

augroup StartingVimtex
  autocmd!
  "autocmd User VimtexEventInitPost VimtexTocToggle
augroup END

augroup RunningVimtex
  autocmd!
  autocmd BufWritePost *.tex call vimtex#toc#refresh()
augroup END

augroup QuittingVimtex
  autocmd!
  autocmd User VimtexEventQuit VimtexClean!
  autocmd User VimtexEventQuit call CloseViewers()
augroup END

