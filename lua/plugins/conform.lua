return { -- Autoformat
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			mode = "n",
			"<leader>F",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		format_on_save = function(bufnr)
			-- Disable "format_on_save lsp_fallback" for languages that don't
			-- have a well standardized coding style. You can add additional
			-- languages here or re-enable it for the disabled ones.
			local ft = vim.bo[bufnr].filetype
			-- Use a set for O(1) lookup of disabled filetypes
			local disabled_fts = { c = true, cpp = true }

			return {
				timeout_ms = 500, -- Reduced timeout
				quiet = true, -- Reduce formatter noise
				lsp_format = disabled_fts[ft] and "never" or "fallback",
			}
		end,
		formatters_by_ft = {
			lua = { "stylua" },
			go = {
				"goimports-reviser", -- Handles imports grouping and ordering
				"gofumpt", -- Stricter gofmt
				"golines", -- Handle line length
				"goimports", -- Handle imports if goimports-reviser not available
				"gotests", -- Format generated tests
			},
			templ = { "templ", "tailwindcss-language-server", "prettierd", "prettier" },
			sql = { "sql-formatter" },
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use 'stop_after_first' to run the first available formatter from the list
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
		},
	},
}
