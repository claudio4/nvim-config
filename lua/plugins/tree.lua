return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = { "NvimTreeToggle", "NvimTreeFocus", "NvimTreeFindFile", "NvimTreeCollapse" },
    keys = {
      { "<C-n>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle tree sidebar" },
      { "<leader>e", desc = "Focus tree sidebar" },
    },
    opts = {
      renderer = {
        indent_markers = {
          enable = true,
        },
      },
    },
    init = function()
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
    end,
    config = function(_, opts)
      require('nvim-tree').setup(opts) 

      local nvimTreeFocusOrToggle = function ()
        local nvimTree=require("nvim-tree.api")
        local currentBuf = vim.api.nvim_get_current_buf()
        local currentBufFt = vim.api.nvim_get_option_value("filetype", { buf = currentBuf })
        if currentBufFt == "NvimTree" then
          nvimTree.tree.toggle()
        else
          nvimTree.tree.focus()
        end
      end
      vim.keymap.set("n", "<leader>e", nvimTreeFocusOrToggle)
    end
  }
}
