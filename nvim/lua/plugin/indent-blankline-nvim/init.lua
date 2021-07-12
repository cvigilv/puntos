-- Configuration
vim.g.indent_blankline_char = '│'
vim.g.ondent_blankline_enabled = false
vim.g.indent_blankline_filetype_exclude = {'help', 'terminal'}
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_disable_warning_message = true
vim.g.indent_blankline_indent_level = 4

-- Colors used for indentation markers
vim.cmd[[ highlight IndentBlanklineChar               ctermfg=red guifg=#00FF00 gui=nocombine ]]
vim.cmd[[ highlight IndentBlanklineSpaceChar          ctermfg=red guifg=#00FF00 gui=nocombine ]]
vim.cmd[[ highlight IndentBlanklineSpaceCharBlankline ctermfg=red guifg=#00FF00 gui=nocombine ]]
vim.cmd[[ highlight IndentBlanklineContextChar        ctermfg=red guifg=#00FF00 gui=nocombine ]]
