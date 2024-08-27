return  {
  "themaxmarchuk/tailwindcss-colors.nvim",
  module = "tailwindcss-colors",
  config = function ()
    require("tailwindcss-colors").setup()

    vim.keymap.set('t', '<leader>tt', ':TailwindColorsToggle<CR>', { desc = '[T]oggle [T]ailwind Colors' })
    vim.keymap.set('t', '<leader>tr', ':TailwindColorsRefresh<CR>', { desc = '[R]efresh [T]ailwind Colors' })
  end
}
