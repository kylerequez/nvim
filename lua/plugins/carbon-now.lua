return {
	"ellisonleao/carbon-now.nvim",
	lazy = true,
	cmd = "CarbonNow",
	config = function()
		vim.keymap.set("v", "<leader>cn", ":CarbonNow<CR>", { desc = "[C]arbon [N]ow", silent = true })
	end,
}
