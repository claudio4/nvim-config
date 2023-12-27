return {
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = {"neovim/nvim-lspconfig"},
    main = "rust-tools",
    opts = function ()
      local mason_registry = require "mason-registry"
      local capabilities = require("lsp-utils").capabilities

      local codelldb = mason_registry.get_package "codelldb"
      local extension_path = codelldb:get_install_path() .. "/extension/"
      local codelldb_path = extension_path .. "adapter/codelldb"
      local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

      -- Save on edit for rust files
      vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
        pattern = "*.rs",
        command = "w",
        nested = true,
      })

      return {
        dap = {
          adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
        },
        server = {
          capabilities = capabilities,
        },
      }
    end,
  },
}
