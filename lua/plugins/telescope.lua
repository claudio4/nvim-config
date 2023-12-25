return {
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    cmd = "Telescope",
    event = "VeryLazy",
    dependencies = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      'nvim-tree/nvim-web-devicons',
    },
    opts = function()
      local actions = require('telescope.actions')
      return {
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous, -- move to prev result
              ["<C-j>"] = actions.move_selection_next, -- move to next result
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
            },
          },
        }
      }
    end,
    config = function(_, opts)
      local tl = require('telescope')
      tl.setup(opts)
      tl.load_extension('fzf')
    end,
  },
}
