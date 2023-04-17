require('toggleterm').setup({
    direction = 'horizontal',
    size = 15,
    open_mapping = [[<M-;>]]
})

-- enter normal mode from terminal mode
vim.keymap.set('t', "<esc>", [[<C-\><C-n>]], { noremap = true, silent = false })
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], { noremap = true, silent = false })
