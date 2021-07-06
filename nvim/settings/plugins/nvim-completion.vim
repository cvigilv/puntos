let g:completion_timer_cycle            = 200
let g:completion_trigger_on_delete      = 1
let g:completion_trigger_keyword_length = 2
let g:completion_matching_smart_case    = 1
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
let g:completion_enable_auto_hover      = 0

let g:completion_chain_complete_list = {
	\		'default': {
	\			'default': [
	\				{'complete_items': ['lsp', 'UltiSnips']},
	\				{'complete_items': ['path'], 'triggered_only': ['/']},
	\				{'mode': '<C-p>'},
	\				{'mode': '<C-n>'}
	\			]
	\		},
	\	}

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect,preview

" Avoid showing message extra message when using completion
set shortmess+=c
