" Misc
let g:latex_to_unicode_suggestions = 1			" Autocompletion popup for Unicode characters
"let g:latex_to_unicode_tab = 0					" Don't convert LaTeX into Unicode with Tab
let g:latex_to_unicode_file_types = ".*"		" Open possibiliti to convert LaTeX to Unicode everywhere

" Latex to Unicode on-demand
noremap <F7>  LaTeXtoUnicode#Init()
noremap! <F7> LaTeXtoUnicode#Init()
