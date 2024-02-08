return {
	{
		"github/copilot.vim",
		cmd = "Copilot",
		init = function()
			vim.g.copilot_no_tab_map = true
			vim.g.copilot_assume_mapped = true
			vim.g.copilot_enabled = false
		end,
	},
}
