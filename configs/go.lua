local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = require("plugins.configs.lspconfig").on_attach

require('go').setup({
  lsp_on_attach = on_attach,
  lsp_cfg = {
    capabilities = capabilities,
  },
})

