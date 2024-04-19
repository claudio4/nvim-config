return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<F2>", vim.lsp.buf.rename, desc = "Rename" }
      keys[#keys + 1] = { "<F3>", vim.lsp.buf.format, desc = "Format code (LSP)" }
    end,
  },
}
