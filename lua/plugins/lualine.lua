return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", "WhoIsSethDaniel/lualine-lsp-progress" },
		event = { "VeryLazy" },
		opts = {
			options = {
				theme = "onedark",
			},
			sections = {
				lualine_c = {
					{ "filename" },
					{ "lsp_progress" },
				},
			},
		},
	},
}
