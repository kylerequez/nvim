local opts = { noremap = true, silent = true }

-- General
-- Removes any commands and goes to normal mode
vim.api.nvim_set_keymap('n', '<Esc>', '<Esc>:nohl<CR>', opts)

-- BarBar
-- Move to previous/next
vim.api.nvim_set_keymap('n', '<leader>h', '<Cmd>BufferPrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>l', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
vim.api.nvim_set_keymap('n', '<leader>H', '<Cmd>BufferMovePrevious<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>L', '<Cmd>BufferMoveNext<CR>', opts)
-- Close buffer
vim.api.nvim_set_keymap('n', '<leader>x', '<Cmd>BufferClose<CR>', opts)
-- Restore previously closed buffer
vim.api.nvim_set_keymap('n', '<leader>r', '<Cmd>BufferRestore<CR>', opts)


