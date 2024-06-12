-- Save on edit for rust files
vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*.rs",
  command = "w",
  nested = true,
})
