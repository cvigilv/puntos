function! s:focus_writing()
	Limelight
	set wrap
	set linebreak
	set breakindent
	set breakindentopt=shift:2,min:70,sbr
	set showbreak=↪
endfunction

autocmd! User GoyoEnter nested call <SID>focus_writing()
autocmd! User GoyoLeave q
