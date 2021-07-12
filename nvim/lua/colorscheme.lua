-- Define overrides
local execute = vim.cmd
local function override_colorscheme()
	execute "highlight Normal     ctermbg=none    guibg=none"
	execute "highlight Comment    cterm=italic    gui=italic"
	execute "highlight CursorLine ctermbg=236     guibg='#2B2E3B'"
	execute "highlight link       GitGutterAdd    DiffAdd"
	execute "highlight link       GitGutterChange DiffChange"
	execute "highlight link       GitGutterDelete DiffDelete"
end

-- Load colorscheme
execute "colorscheme xresources"
override_colorscheme()
