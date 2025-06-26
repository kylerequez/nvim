return {
	"folke/persistence.nvim",
	event = "BufReadPre",
	opts = {},
	keys = function()
		local persistence = require("persistence")
		return {
			{
				mode = "n",
				"<leader>ps",
				function()
					persistence.load()
				end,
				desc = "[P]ersist [S]ession",
			},
			{
				mode = "n",
				"<leader>pS",
				function()
					persistence.select()
				end,
				desc = "[P]ersist [S]elect",
			},
			{
				mode = "n",
				"<leader>pl",
				function()
					persistence.load({ last = true })
				end,
				desc = "[P]ersist [L]oad Last",
			},
			{
				mode = "n",
				"<leader>pd",
				function()
					persistence.stop()
				end,
				desc = "[P]ersist [D]on't Save",
			},
		}
	end,
}
