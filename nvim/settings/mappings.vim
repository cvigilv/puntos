" Remove arrow navigation in NORMAL mode, 'cause... why not
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Tabs
nnoremap H gT
nnoremap L gt

" Autocomplete
"" Use <C-j>/<Down>/<Tab> and <C-k>/<Up>/<S-Tab> to navigate through popup menu
inoremap <expr><C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><C-k>   pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr><Down>  pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><Up>    pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr><Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" WhichKey
lua << EOF
require("which-key").setup({
	plugins = { spelling = { enabled = true, suggestions = 10,      },
				presets  = { operators = false,    motions = false,
							 text_objects = false, windows = false,
							 nav = false,          g = true,       } },
	layout = { height = { min = 4, max = 10 } },
})

require("which-key").register({
	g = {
		name = '+git',
		g = {':GitGutterBufferToggle<CR>',         'Toggle GitGutter'  },
		h = {':GitGutterLineHighlightsToggle<CR>', 'Highlight changes' },
		},
	l = {
		name = '+lsp',
		d = {'<cmd>lua vim.lsp.buf.definition()<CR>',      'Definition'  },
		i = {':LspInfo<CR>',                               'Server info' },
		k = {'<cmd>lua vim.lsp.buf.hover()<CR>',           'Hover'       },
		n = {'<cmd>lua vim.lsp.buf.rename()<CR>',          'Rename'      },
		r = {'<cmd>lua vim.lsp.buf.references()<CR>',      'References'  },
		s = {'<cmd>lua vim.lsp.buf.document_symbol()<CR>', 'Symbols'     },
		},
	-- m = {'<Esc>/<++><Enter>"_c4l', 'Go to mark'},
	w = {
		name = '+window',
		b    = {':vertical resize +5<CR>', 'Bigger split'  },
		s    = {':vertical resize -5<CR>', 'Smaller split' },
		e    = {'<C-w>=',                  'Equal split'   },
		},
	f = {
		name = '+telescope',
		f    = {'<cmd>Telescope find_files<cr>', 'Find files' },
		g    = {'<cmd>Telescope live_grep<cr>',  'Grep'       },
		b    = {'<cmd>Telescope buffers<cr>',    'Buffers'    },
		h    = {'<cmd>Telescope help_tags<cr>',  'Help tags'  },
		},
}, { prefix = "<leader>" })

require("which-key").register({
	a = {':EasyAlign<CR>',  'EasyAlign'   },
	c = {':Commentary<CR>', 'Comment out'},
	f = {
		name = '+Go to file under cursor',
		w    = {'gf',       'Current window'  },
		v    = {'<C-w>vgf', 'Vertical split'  },
		h    = {'<C-w>f',   'Horizonal split' },
		t    = {'<C-w>gf',  'New tab'         },
		},
}, { prefix = "g" })

require("which-key").register({
	a = {':EasyAlign<CR>',  'EasyAlign'   },
	c = {':Commentary<CR>', 'Comment out' },
}, { prefix = "g", mode = "v" })
EOF
