require('core.plugin_config.gruvbox')
require('core.plugin_config.nvim-tree')
require('core.plugin_config.treesitter')
require('core.plugin_config.telescope')
require('core.plugin_config.barbar')
require('core.plugin_config.lualine')
require('core.plugin_config.treesitter-context')
require('core.plugin_config.harpoon')
require('core.plugin_config.undotree')

function theme(color)
	color = color or 'gruvbox'
	vim.cmd.colorscheme(color)

	-- Make background transparent
	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

theme()
