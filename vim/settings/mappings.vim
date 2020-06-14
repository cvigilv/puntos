" Remove arrow navigation in NORMAL mode, 'cause... why not?
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Navigation with '<++>' markers
map <leader><leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader><leader> <Esc>/<++><Enter>"_c4l

" Splits
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <leader>+ :vertical resize +5<CR>
map <leader>- :vertical resize -5<CR>
map <leader>= <C-w>=
