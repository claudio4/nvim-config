local function toggle_colorscheme()
  if vim.opt.background:get() == "dark" then
    vim.cmd.colorscheme("onelight")
  else
    vim.cmd.colorscheme("onedark")
  end
end
vim.api.nvim_create_user_command(
  "ToggleColorscheme",
  toggle_colorscheme,
  { desc = "Changes the colorscheme between onedark and onelight" }
)
