return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			local mason = require("mason")

			mason.setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		-- events = { "VeryLazy" },
		cmd = { "MasonToolsUpdate", "MasonToolsInstall", "MasonToolsClean" },
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				-- general
				"codespell",
				"tree-sitter-cli",

				-- markdown
				"marksman",
				"misspell",

				-- lua
				"lua-language-server",
				"stylua",

				-- webdev
				"css-lsp",
				"html-lsp",
				"typescript-language-server",
				"prettierd",
				"eslint-lsp",
				"js-debug-adapter",
				"json-lsp",

				-- docker
				"dockerfile-language-server",
				"docker-compose-language-service",

				-- rust
				"rust-analyzer",
				"codelldb",

				-- go
				"gopls",
				"goimports-reviser",
				"golangci-lint-langserver",

				-- yaml
				"yaml-language-server",
				"yamlfmt",
				-- "yamllint",

				-- sql
				"sqlfluff",
				"sqlls",

				-- shell
				"shellcheck",
			},
		},
	},
}
