function theme(color)
	color = color or 'solarized8_flat'
	vim.cmd.colorscheme(color)

	-- Make background transparent
	-- vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	-- vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end


require("gruvbox").setup({
  undercurl = true,
  underline = true,
  bold = false,
  italic = {
    strings = false,
    comments = false,
    operators = false,
    folds = false,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = false,
})

theme()
