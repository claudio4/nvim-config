return {
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    keys = {
      { "<leader><leader>", "<cmd>Telescope smart_open<CR>", desc = "Smart open" },
    },
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    dependencies = {
      "kkharji/sqlite.lua",
      "nvim-telescope/telescope-fzy-native.nvim",
    },
  },
}
