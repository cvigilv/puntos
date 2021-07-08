-- Which-Key setup
require("which-key").setup{
	plugins = {
		marks     = true,
		registers = true,
		presets = {
			operators    = true,
			motions      = false,
			text_objects = false, 
			windows      = false,
			nav          = false,
			z            = true,
			g            = true,
		},
	},
	icons = {
		breadcrumb = "+",
		separator  = "→",
		group      = "!",
	},
	ignore_missing = true,
}

-- Standard mappings
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
	a = {':EasyAlign<CR>',  'EasyAlign'},
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
