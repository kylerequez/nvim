return {
  'EvgeniGenchev/comment-nvim',
  config = function()
    -- Change the default singleline comment
    vim.api.nvim_set_keymap('n', '<leader>/', ':Comment<CR>', { noremap = true, silent = false })

    -- Change the visual mode multiline comment
    vim.api.nvim_set_keymap('v', '<leader>/', ':CommentMore<CR>', { noremap = true, silent = false })
  end,
}
