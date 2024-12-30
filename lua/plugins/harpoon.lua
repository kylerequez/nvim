return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	keys = {
		{
			mode = "n",
			"<leader>hm",
			'<CMD>lua require("harpoon.mark").add_file()<CR>',
			desc = "[H]arpoon [M]ark file",
		},
		{
			mode = "n",
			"<leader>hs",
			'<CMD>lua require("harpoon.ui").toggle_quick_menu()<CR>',
			desc = "[H]arpoon [S]how marks",
		},
	},
}
