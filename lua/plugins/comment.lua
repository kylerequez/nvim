return {
  'numToStr/Comment.nvim',
  opts = {
    -- add any options here
  },
  config = function()
    require('Comment').setup({
      toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
      },
    })
  end
}
