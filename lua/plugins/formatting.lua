return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {
        go = { "goimports", "gofmt" },
        rust = { "rustfmt" },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        html = { { "prettierd", "prettier" } },
        css = { { "prettierd", "prettier" } },
        json = { { "prettierd", "prettier" } },
        yaml = { { "prettierd", "prettier" } },
        markdown = { { "prettierd", "prettier" } },
        lua = { "stylua" },
      },
      format_on_save = function(bufnr)
        -- local ignore_filetypes = { }
        -- if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
        --   return
        -- end

        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end

        local lsp_preferred_filetpes = { "go", "rust" }
        if vim.tbl_contains(lsp_preferred_filetpes, vim.bo[bufnr].filetype) then
          return { lsp_fallback = "always" }
        else
          return { timeout_ms = 500, lsp_fallback = true }
        end
      end,
    },
  }
}
