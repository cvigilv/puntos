" WhichKey
lua << EOF
require("which-key").register({
	s = {
		name = '+latex',
		c = {'<Plug>(vimtex-compile)',    'Compile file to PDF'             },
		C = {'<Plug>(vimtex-clean)',      'Clean auxiliary files'           },
		m = {'<Plug>(vimtex-imaps-list)', 'See `insert mode` mappings'      },
		s = {'<Plug>(vimtex-compile-ss)', 'Single-shot compile file to PDF' },
		t = {'<Plug>(vimtex-toc-toggle)', 'Table of contents'               },
		v = {'<Plug>(vimtex-view)',       'View PDF file'                   },
		},
}, { prefix = "<leader>" })
EOF

function! CleverTab()
	" If popup menu exists, go to next suggestion
	if pumvisible()
		return "\<C-N>"
	endif
	" If cursor at line start, insert <Tab>
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	" Or, popup the completion menu
	elseif exists('&omnifunc') && &omnifunc != ''
		return "\<C-X>\<C-O>"
	else
		return "\<C-N>"
	endif
endfunction

inoremap <Tab> <C-R>=CleverTab()<CR>
