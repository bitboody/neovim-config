local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here

	use 'ellisonleao/gruvbox.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use 'nvim-tree/nvim-web-devicons'
	use 'nvim-treesitter/nvim-treesitter'
	use {
		'nvim-telescope/telescope.nvim',
		tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use 'neoclide/coc.nvim'
	use 'easymotion/vim-easymotion'
	use 'andweeb/presence.nvim'
	use 'tpope/vim-commentary'
	use 'tpope/vim-fugitive'
	use 'axvr/photon.vim'
	use 'm4xshen/autoclose.nvim'
	use 'nvim-lualine/lualine.nvim'
	use('nvim-treesitter/nvim-treesitter-context', {run = ':TSUpdate'})
	use 'theprimeagen/harpoon'
	use 'mbbill/undotree'
	use 'bluz71/vim-moonfly-colors'
	use 'stevearc/oil.nvim'
	use 'mhartington/formatter.nvim'
	use 'akinsho/bufferline.nvim'
	use 'rose-pine/neovim'
	use 'lifepillar/vim-solarized8'

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
