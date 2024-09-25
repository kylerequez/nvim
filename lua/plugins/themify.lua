return {
	"lmantw/themify.nvim",

	lazy = false,
	priority = 999,
	opts = {
		async = false,
		"folke/tokyonight.nvim",
		"Yazeed1s/minimal.nvim",
		"sho-87/kanagawa-paper.nvim",
		"catppuccin/nvim",
		"ellisonleao/gruvbox.nvim",
		-- Built-in colorschemes are also supported.
		-- (Also works with any colorschemes that are installed via other plugin manager, just make sure the colorscheme is loaded before Themify is loaded.)
		"default",
		-- "habamax",
	},
	keys = {
		{ mode = "n", "<leader>fT", "<CMD>:Themify<CR>", desc = "[F]ind [T]heme" },
	},
}
