autocmd BufEnter * lua require'completion'.on_attach()

lua << EOF
    local lspconfig = require'lspconfig'
    local on_attach_vim = function()
        require'completion'.on_attach()
    end
    lspconfig.julials.setup({
		on_attach = on_attach_vim
	})
EOF

let g:diagnostic_auto_popup_while_jump = 0
let g:diagnostic_enable_virtual_text = 0
let g:diagnostic_enable_underline = 0
let g:completion_timer_cycle = 200 "default value is 80
