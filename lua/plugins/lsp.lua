return {
  {
    "neovim/nvim-lspconfig",
    event = { "VeryLazy", "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
      local lspconfig = require("lspconfig")
      local lsp_utils = require("lsp-utils")

      -- Change diagnotics symbols
      local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
      for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
      end

      local servers = {
        "cssls",
        "dockerls",
        "eslint",
        -- "gopls", Handled by ray-x/go plugin
        "golangci_lint_ls",
        "html",
        "jsonls",
        "marksman",
        "rust_analyzer",
        "sqlls",
        -- "tsserver", Handle by typescript-tools plugin
        "vimls",
        "yamlls",
      }

      for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup({
          capabilities = lsp_utils.capabilities,
        })
      end

      lspconfig["lua_ls"].setup({
        capabilities = lsp_utils.capabilities,
        on_attach = lsp_utils.on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = {
                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                [vim.fn.stdpath("config") .. "/lua"] = true,
              },
            },
          },
        },
      })
    end,
  },
  {
    "ray-x/go.nvim",
    ft = { "go", "gomod" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    -- build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    config = function()
      local capabilities = require("lsp-utils").capabilities

      require("go").setup({
        lsp_cfg = {
          capabilities = capabilities,
        },
      })
    end,
  },
  {
    "pmizio/typescript-tools.nvim",
    ft = { "typescript", "javascript" },
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = function()
      local capabilities = require("lsp-utils").capabilities

      return {
        capabilities = capabilities,
        settings = {
          expose_as_code_action = "all",
        },
      }
    end,
  },
}
