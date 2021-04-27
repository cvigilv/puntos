au BufRead,BufNewFile *.tex :NeoTexOn
au BufRead,BufNewFile *.tex :!zathura $(echo % | sed "s/.tex/.pdf/g") &

let g:neotex_enabled = 1
let g:neotex_delay = 250
let g:neotex_latexdiff = 1
"let g:neotex_latexdiff_options = 
"let g:neotex_pdflatex_add_options = 
"let g:neotex_pdflatex_alternative = 'xelatex'
let g:neotex_subfile = 0
