return {
  'EvgeniGenchev/comment-nvim',
  config = function()
    -- Change the default singleline comment
    vim.api.nvim_set_keymap('n', 'gcc', ':Comment<CR>', { noremap = true, silent = false })

    -- Change the visual mode multiline comment
    vim.api.nvim_set_keymap('v', 'gcc', ':CommentMore<CR>', { noremap = true, silent = false })
  end,
}
