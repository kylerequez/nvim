local set = vim.keymap.set
-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
set("n", "<leader>Q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Deletes current buffer without saving
set("n", "<leader>q", ":bdelete!<CR>", { desc = "[Q]uit Current Buffer", noremap = true, silent = true })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Create a keymap to create a new terminal buffer
set("n", "<leader>T", ":terminal<CR>", { desc = "Create [T]erminal", noremap = true, silent = true })

-- Allows easier transition from splits
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-h>", "<c-w><c-h>")
set("n", "<c-l>", "<c-w><c-l>")
