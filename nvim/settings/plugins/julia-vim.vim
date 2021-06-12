" Misc
let g:latex_to_unicode_suggestions = 1			" Autocompletion popup for Unicode characters

" Latex to Unicode on-demand
noremap <F7>  LaTeXtoUnicode#Init()
noremap! <F7> LaTeXtoUnicode#Init()
