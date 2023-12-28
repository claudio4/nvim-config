return {
	{
		"mfussenegger/nvim-lint",
		ft = { "bash", "go", "html", "javascript", "rust", "sql", "sh", "typescript" },
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				bash = { "shellcheck", "codespell" },
				go = { "codespell" },
				html = { "codespell" },
				javascript = { "codespell" },
				rust = { "codespell" },
				sh = { "shellcheck", "codespell" },
				sql = { "sqlfluff" },
				typescript = { "codespell" },
			}

			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
