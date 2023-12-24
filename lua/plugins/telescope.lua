return {
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    cmd = "Telescope",
    event = "VeryLazy",
    keys = {
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files with Telescope" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Live grep with Telescope" },
      { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Find buffer with Telescope" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Explore help tags with Telescope" },
      { "<leader>fc", "<cmd>Telescope commands<cr>", desc = "Command runner inside Telescope" },
      { "<F1>", "<cmd>Telescope commands<cr>", desc = "Command runner inside Telescope" },
    },
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function(_, opts)
      local tl = require('telescope')
      tl.setup(opts)
      tl.load_extension('fzf')
    end
  },
}
