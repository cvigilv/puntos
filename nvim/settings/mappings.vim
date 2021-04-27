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

" Autocomplete
"" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
nnoremap <silent> <leader>H :lua vim.lsp.buf.hover()<CR>
set completeopt=menuone,noinsert,noselect	" Better completion experience
set shortmess+=c							" Avoid showing extra messages
let g:completion_matching_smart_case = 3	" Activate for keyword of more than 3 characters
let g:completion_trigger_on_delete = 1		" Activate on delete
