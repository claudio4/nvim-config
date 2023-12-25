return {
  {
     "williamboman/mason.nvim",
     lazy = false,
     config = function()
        local mason = require("mason")

        mason.setup({
          ui = {
            icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗",
            },
          },
        })
     end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    events = { "VeryLazy" },
    opts = {
      ensure_installed = {
        "cssls",
        "html",
        "tsserver",
        "jsonls",
        "dockerls",
        "docker_compose_language_service",
        "lua_ls",
        "rust_analyzer",
        "gopls",
        "yamlls",
        "sqlls",
        "marksman",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    events = { "VeryLazy" },
    opts = {
      ensure_installed = {
        "codespell",
        "misspell",
        "stylua",
        "prettierd",
        "codelldb",
        "goimports",
        "goimports-reviser",
        "yamlfmt",
        "sqlfluff",
        "shellcheck",
      },
    },
  },
}
