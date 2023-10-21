local M = {
  ensure_installed = {
    -- markdown
    "marksman",
    "misspell",

    -- lua
    "lua-language-server",
    "stylua",

    -- webdev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "prettier",
    "eslint_d",
    "js-debug-adapter",

    -- docker
    "dockerfile-language-server",
    "docker-compose-language-service",

    -- rust
    "rust-analyzer",
    "codelldb",

    -- go
    "gopls",
    "goimports",
    "goimports-reviser",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- sql
    "sqlfluff",
    "sqls",

    -- shell
    "shellcheck",
  }
}

return M
