map = vim.api.nvim_set_keymap

map('n', '<Left>',  ':echoe "Use h"<CR>', {noremap = true})
map('n', '<Right>', ':echoe "Use l"<CR>', {noremap = true})
map('n', '<Up>',    ':echoe "Use k"<CR>', {noremap = true})
map('n', '<Down>',  ':echoe "Use j"<CR>', {noremap = true})
map('n', 'H', 'gT', {noremap = true})
map('n', 'L', 'gt', {noremap = true})
