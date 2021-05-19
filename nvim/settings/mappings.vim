" Remove arrow navigation in NORMAL mode, 'cause... why not?
nnoremap <Left>  :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up>    :echoe "Use k"<CR>
nnoremap <Down>  :echoe "Use j"<CR>

" Tabs
nnoremap H gT
nnoremap L gt

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
	m = {'<Esc>/<++><Enter>"_c4l', 'Go to mark'},
	w = {
		name = '+window',
		b    = {':vertical resize +5<CR>', 'Bigger split'  },
		s    = {':vertical resize -5<CR>', 'Smaller split' },
		e    = {'<C-w>=',                  'Equal split'   },
		},
}, { prefix = "<leader>" })

require("which-key").register({
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
