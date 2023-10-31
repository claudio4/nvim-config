local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "cssls",
  "dockerls",
  "gopls",
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
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

