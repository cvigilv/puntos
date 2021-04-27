" Sign column always on
let g:signcolumn= 1

" Make Git Gutter column the same colour as the number column
highlight SignColumn guibg='#1c1c1c' ctermbg=234

" Disable Git Gutter remaps, only interested in the sign column
let g:gitgutter_map_keys = 0
