local M = {}

M.Format = function(args)
  local range = nil
  if args.count ~= -1 then
    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
    range = {
      start = { args.line1, 0 },
      ["end"] = { args.line2, end_line:len() },
    }
  end
  require("conform").format({ async = true, lsp_fallback = true, range = range })
end
vim.api.nvim_create_user_command("Format", M.Format, { desc = "Format document or selection" })

M.FormatOnSaveToggle = function(args)
  local notify = require("notify")

  if args.bang then
    vim.b.disable_autoformat = not vim.b.disable_autoformat
    notify(
      "Auto format on save has been " .. (vim.b.disable_autoformat and "disabled" or "enabled") .. ".",
      "INFO",
      { title = "Conform", timeout = 500 }
    )
  else
    vim.g.disable_autoformat = not vim.g.disable_autoformat
    notify(
      "Auto format on save has been " .. (vim.g.disable_autoformat and "disabled" or "enabled") .. ".",
      "INFO",
      { title = "Conform", timeout = 500 }
    )
  end
end
vim.api.nvim_create_user_command("FormatOnSaveToggle", M.FormatOnSaveToggle, { desc = "Toggle autoformat on save" })



end

return M
