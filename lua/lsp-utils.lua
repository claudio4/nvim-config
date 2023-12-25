local M = {}

local mappings = require("mappings")

M.on_attach = function(client, bufnr)
  mappings.register_lsp_mappings(bufnr)
end

M.capabilities = require("cmp_nvim_lsp").default_capabilities()

return M
