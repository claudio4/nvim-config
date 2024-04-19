return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "<F2>", vim.lsp.buf.rename, mode = { "n", "i" }, desc = "Rename" }
      keys[#keys + 1] = { "<F3>", vim.lsp.buf.format, mode = { "n", "i" }, desc = "Format code (LSP)" }
    end,
  },
}
