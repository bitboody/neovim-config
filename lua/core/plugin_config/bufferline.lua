require('bufferline').setup({})

vim.keymap.set('n', 'gb', '<CMD>BufferLinePick<CR>')
vim.keymap.set('n', '<A-x>ts', '<CMD>BufferLinePickClose<CR>')
vim.keymap.set('n', '<A-,>', '<CMD>BufferLineCycleNext<CR>')
vim.keymap.set('n', '<A-.>', '<CMD>BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<A->>', '<CMD>BufferLineMoveNext<CR>')
vim.keymap.set('n', '<A-<>', '<CMD>BufferLineMovePrev<CR>')
vim.keymap.set('n', 'gs', '<CMD>BufferLineSortByDirectory<CR>')
