" Remove arrow navigation in NORMAL mode, 'cause... why not?
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Navigation with '<++>' markers
map <leader>j <Esc>/<++><Enter>"_c4l
vnoremap <leader>j <Esc>/<++><Enter>"_c4l

" Splits
map <leader>+ :vertical resize +5<CR>
map <leader>- :vertical resize -5<CR>
map <leader>= <C-w>=

" Tabs
nnoremap gf <C-w>gf
inoremap gf <C-w>gfi
nnoremap H gT
nnoremap L gt
