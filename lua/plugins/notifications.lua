return {
  {
    "rcarriga/nvim-notify",
    init = function()
      -- This function allow to lazy load the plugin while still replacing
      -- vim.notify with it.
      ---@diagnostic disable-next-line: duplicate-set-field
      vim.notify = function(message, level, opts)
        vim.notify = require("notify")
        return vim.notify(message, level, opts)
      end
    end,
    opts = {},
    config = function(_, opts)
      require("notify").setup(opts)

      local ok_telescope, telescope = pcall(require, "telescope")
      if ok_telescope and telescope then
        telescope.load_extension("notify")
      end
    end,
  },
}
