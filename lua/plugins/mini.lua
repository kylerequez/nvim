return { -- Collection of various small independent plugins/modules
	"echasnovski/mini.nvim",
	config = function()
		-- Better Around/Inside textobjects
		--
		-- Examples:
		--  - va)  - [V]isually select [A]round [)]paren
		--  - yinq - [Y]ank [I]nside [N]ext [Q]uote
		--  - ci'  - [C]hange [I]nside [']quote
		require("mini.ai").setup({ n_lines = 500 })

		-- Add/delete/replace surroundings (brackets, quotes, etc.)
		--
		-- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
		-- - sd'   - [S]urround [D]elete [']quotes
		-- - sr)'  - [S]urround [R]eplace [)] [']
		require("mini.surround").setup()

		-- Comment setup for unsupported languages
		local mini_comment = require("mini.comment")
		mini_comment.setup({
			-- Add custom hooks to modify commenting behavior
			hooks = {
				pre = function()
					-- Store original commentstring
					vim.b.minicomment_original_commentstring = vim.bo.commentstring
				end,
				post = function()
					-- Restore original commentstring
					if vim.b.minicomment_original_commentstring then
						vim.bo.commentstring = vim.b.minicomment_original_commentstring
						vim.b.minicomment_original_commentstring = nil
					end
				end,
			},
		})

		-- Set up autocmd for .templ files
		vim.api.nvim_create_autocmd({ "FileType" }, {
			pattern = "templ",
			callback = function()
				vim.bo.commentstring = "//%s"
			end,
		})

		-- Simple and easy statusline.
		--  You could remove this setup call if you don't like it,
		--  and try some other statusline plugin
		local statusline = require("mini.statusline")
		-- set use_icons to true if you have a Nerd Font
		statusline.setup({ use_icons = vim.g.have_nerd_font })

		-- You can configure sections in the statusline by overriding their
		-- default behavior. For example, here we set the section for
		-- cursor location to LINE:COLUMN
		---@diagnostic disable-next-line: duplicate-set-field
		statusline.section_location = function()
			return "%2l:%-2v"
		end

		-- ... and there is more!
		--  Check out: https://github.com/echasnovski/mini.nvim
	end,
}
