lua << EOF
require'compe'.setup {
  enabled          = true;
  autocomplete     = true;
  debug            = false;
  min_length       = 1;
  preselect        = 'disable';
  documentation    = true;
  source = {
    path      = true;
    nvim_lsp  = true;
    ultisnips = true;
  };
}

local function t(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

function _G.clever_tab()
	-- Check where is the cursor
    local col = vim.fn.col(".") - 1

	-- if popup menu exists, go to next item
	if vim.fn.pumvisible() == 1 then
		return t'<C-n>'
	-- If whitespace, insert <Tab>
	elseif col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
		return t'<Tab>'
	-- Else, open completion menu
	else
		return vim.fn["compe#complete"]()
	end
end

function _G.clever_s_tab()
	-- if popup menu exists, go to next item
	if vim.fn.pumvisible() == 1 then
		return t'<C-p>'
	-- Else, insert <S-Tab>
	else
		return t'<S-Tab>'
	end

end

vim.api.nvim_set_keymap("i", "<Tab>",   "v:lua.clever_tab()",   {expr = true, noremap = true})
vim.api.nvim_set_keymap("s", "<Tab>",   "v:lua.clever_tab()",   {expr = true, noremap = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.clever_s_tab()", {expr = true, noremap = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.clever_s_tab()", {expr = true, noremap = true})
EOF

inoremap <silent><expr> <C-u> compe#scroll({ 'delta': -4 }) 
inoremap <silent><expr> <C-d> compe#scroll({ 'delta': +4 })
