local opts = { noremap = true, silent = true }

-- General
-- Removes any commands and goes to normal mode
vim.api.nvim_set_keymap('n', '<Esc>', '<Esc>:nohl<CR>', opts)
-- Resizes Current Buffer
vim.api.nvim_set_keymap('n', '<leader><left>', ':buffer vertical resize -5<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader><right>', ':buffer vertical resize +5<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader><up>', ':buffer resize -5<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader><down>', ':buffer resize +5<CR>', opts)

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

-- Toggle Term
-- Toggle terminal at the bottom half of the screen
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm direction=horizontal<CR>', opts)

-- Toggle terminal to the side
vim.api.nvim_set_keymap('n', '<leader>T', ':ToggleTerm direction=vertical<CR>', opts)
