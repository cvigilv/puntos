autocmd BufEnter,BufRead,VimEnter * lua require'completion'.on_attach()
autocmd FileType julia setlocal omnifunc=v:lua.vim.lsp.onmifunc
