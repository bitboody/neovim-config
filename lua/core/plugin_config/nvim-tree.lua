vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('nvim-tree').setup()

vim.keymap.set('n', '<c-a>', ':NvimTreeFindFileToggle<CR>', { silent = true })
