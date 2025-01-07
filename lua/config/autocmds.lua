-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
if vim.g.neovide then
  vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function()
      if vim.o.background == vim.v.option_old then
        return
      end
      if vim.o.background == "dark" then
        vim.cmd.colorscheme("onedark")
      else
        vim.cmd.colorscheme("onelight")
      end
    end,
  })
end
