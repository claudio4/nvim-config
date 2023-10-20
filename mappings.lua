local M = {}

M.dap = {
  plugin = true,
  n = {
    -- ["<leader>db"] = {
    --   "<cmd> DapToggleBreakpoint <CR>",
    --   "Add breakpoint at line",
    -- },
    -- ["<leader>dr"] = {
    --   "<cmd> DapContinue <CR>",
    --   "Run or continue the debugger",
    -- },
    ["<leader>do"] = {
      "<cmd> DapStepOver <CR>",
      "Step over line in debugger",
    },
    ["<leader>dx"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate the debugger",
    },
  },
}

return M

