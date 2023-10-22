local null_ls = require "null-ls"

local actions = null_ls.builtins.code_actions
local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

local sources = {
  -- general
  lint.codespell,
  formatting.codespell,

  -- web dev
  actions.eslint_d,
  formatting.prettier,
  lint.eslint_d,

  -- go
  actions.gomodifytags,
  actions.impl,
  formatting.goimports_reviser,

  -- lua
  formatting.stylua,

  -- markdown
  lint.misspell.with({ filetypes = { "markdown" } }),

  -- shell
  actions.shellcheck,
  lint.shellcheck,

  -- sql
  lint.sqlfluff,

  -- yaml
  -- lint.yamllint,
}

null_ls.setup {
   debug = true,
   sources = sources,
}
