local execute = vim.api.nvim_command
local fn = vim.fn

-- Ensure `packer.nvim` is installed on any machine
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

-- `packer.nvim` configuration
execute 'packadd packer.nvim'
require('packer').startup(
{
	function()
		use 'christoomey/vim-tmux-navigator'
		use 'folke/which-key.nvim'
		use 'hrsh7th/nvim-compe'
		use 'JuliaEditorSupport/julia-vim'
		use 'junegunn/vim-easy-align'
		use 'lervag/vimtex'
		use 'lewis6991/gitsigns.nvim'
		use 'nekonako/xresources-nvim'
		use 'neovim/nvim-lspconfig'
		use 'nvim-lua/plenary.nvim'
		use 'nvim-lua/popup.nvim'
		use 'nvim-telescope/telescope.nvim'
		use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
		use 'sirver/ultisnips'
		use 'unblevable/quick-scope'
		use 'wbthomason/packer.nvim'
		use 'lukas-reineke/indent-blankline.nvim'
		use 'RRethy/vim-illuminate'
	end,

	config = {
		max_jobs = 12,
	}
})

-- Installed packages configurations
require('plugin/nvim-treesitter')
require('plugin/which-key-nvim')
require('plugin/gitsigns-nvim')
require('plugin/quick-scope')
require('plugin/nvim-compe')
require('plugin/indent-blankline-nvim')
