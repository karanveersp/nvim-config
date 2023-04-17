-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})


-- Cut (Ctrl+X)
vim.api.nvim_set_keymap('v', '<C-X>', '"+x', { noremap = true, silent = false })

-- Copy (Ctrl+C)
vim.api.nvim_set_keymap('v', '<C-C>', '"+y', { noremap = true, silent = false })

-- Paste (Ctrl+V)
vim.api.nvim_set_keymap('n', '<C-V>', '"+P', { noremap = true, silent = false })
vim.api.nvim_set_keymap('i', '<C-V>', '<C-R>+', { noremap = true, silent = false })

-- Select all (Ctrl+A)
vim.api.nvim_set_keymap('n', '<C-A>', 'ggVG', { noremap = true, silent = false })


vim.keymap.set('n', '<leader>s', ':nohlsearch<CR>')


-- splits and navigation
vim.keymap.set("n", "<leader>sh", ":split<CR><c-w>j", { noremap = true, desc = "[S]plit [H]orizontal" })
vim.keymap.set("n", "<leader>sv", ":vsp<CR><c-w>l", { noremap = true, desc = "[S]plit [V]ertical" })
vim.keymap.set("n", "<leader>h", "<c-w>h", { noremap = true, desc = "To left window" })
vim.keymap.set("n", "<leader>l", "<c-w>l", { noremap = true, desc = "To right window" })
vim.keymap.set("n", "<leader>j", "<c-w>j", { noremap = true, desc = "To below window" })
vim.keymap.set("n", "<leader>k", "<c-w>k", { noremap = true, desc = "To above window" })
vim.keymap.set("n", "<leader>w", "<c-w>w", { noremap = true, desc = "To other window" })
