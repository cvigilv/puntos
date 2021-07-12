-- The Almighty Leader (Key)
vim.g.mapleader=" "

-- General configuration
vim.opt.autochdir        = true                                  -- Change current working directory to wherever is the file
vim.opt.autoindent       = true                                  -- Enable autoindent, this for Vim is copying indentation for new line
vim.opt.clipboard        = "unnamedplus"                         -- Copy paste between vim and everything else
vim.opt.completeopt      = "menuone,noselect"                    -- Set completeopt to have a better completion experience
vim.opt.conceallevel     = 0                                     -- Don't hide formatting characters
vim.opt.cursorline       = true                                  -- Highlight current line
vim.opt.fileencoding     = 'UTF-8'                               -- Character encoding for the file in the buffer
vim.opt.formatoptions    = vim.opt.formatoptions - {'c','r','o'} -- Stop newline continuation of comments
vim.opt.hlsearch         = true                                  -- Highlight searched word
vim.opt.incsearch        = true                                  -- Start searching  before pressing <Enter>
vim.opt.laststatus       = 2                                     -- Enable the 'pretty' statusline
vim.opt.mouse            = "a"                                   -- Activate mouse
vim.opt.number           = true                                  -- Add line numbering
vim.opt.relativenumber   = true                                  -- Add relative numbering, this is a must in my opinion
vim.opt.scrolloff        = 5                                     -- Leave some lines in the top and end of the file to have context
vim.opt.shiftwidth       = 4                                     -- If tab character is found, show as indent of size equal to 4 spaces
vim.opt.shortmess        = vim.opt.shortmess + 'c'               -- Avoid showing message extra message when using completion
vim.opt.showmode         = false                                 -- Don't show the ugly standard vim mode indicator at the end of the file
vim.opt.signcolumn       = "auto"                                --Automatically add the sign column if necesary
vim.opt.smartcase        = true                                  -- Smart case sensitivity for easier searching
vim.opt.smartindent      = true                                  -- Autoindent for C-like style programs
vim.opt.softtabstop      = 4				                        -- Tabs are actually 4 spaces
vim.opt.splitbelow       = true                                  -- Horizontal splitting will be automatically placed on the bottom
vim.opt.splitright       = true                                  -- Vertical splitting will be automatically placed on the right
vim.opt.tabstop          = 4                                     -- Tab of size equal to 4 spaces
vim.opt.timeoutlen       = 100
vim.opt.wildmenu         = true                                  -- Command-line completion operates in enhanced way
vim.opt.wildmode         = 'longest,list,full'                   -- Completition mode used to showcase options
vim.opt.wrap             = false                                 -- Don't wrap lines
vim.g.loaded_netrwPlugin = 1					                 -- Disable netrw
vim.g.vimsyn_embed       = 'lPr'                                 -- Highlight embedded code

-- Source everything else (it's cleaner this way)
require("plugin")
require("colorscheme")
require("lsp")
require("mappings")
