return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        denols = {},
        vtsls = {
          root_dir = function()
            local util = require("lspconfig.util")
            return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
              and util.root_pattern("tsconfig.json", "package.json", "jsconfig.json", ".git")
          end,
        },
      },
    },
  },
}
