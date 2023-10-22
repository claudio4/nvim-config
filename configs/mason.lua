local M = {
  ensure_installed = {
    -- general
    "codespell",

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
    "json-lsp",

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
    -- "yamllint",

    -- sql
    "sqlfluff",
    "sqlls",

    -- shell
    "shellcheck",
  }
}

return M
