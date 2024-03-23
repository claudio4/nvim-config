-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.g.neovide then
  vim.g.guifont = "CaskaydiaCove_Nerd_Font:h13"
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_cursor_animate_command_line = false
  local keymapOpts = {
    silent = true,
    noremap = true,
  }
  vim.keymap.set({ "n", "v", "i" }, "<S-Insert>", "<C-R>+", keymapOpts)

  -- Fix scroll on buffer change
  vim.api.nvim_create_autocmd("BufLeave", {
    callback = function()
      vim.g.neovide_scroll_animation_length = 0
      -- vim.g.neovide_cursor_animation_length = 0
    end,
  })
  vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
      vim.fn.timer_start(70, function()
        vim.g.neovide_scroll_animation_length = 0.3
        -- vim.g.neovide_cursor_animation_length = 0.06
      end)
    end,
  })
end
