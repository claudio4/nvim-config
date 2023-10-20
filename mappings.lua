local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>do"] = {
      "<cmd> DapStepOver <CR>",
      "Step over line in debugger",
    },
    ["<leader>di"] = {
      "<cmd> DapStepInto <CR>",
      "Step into line in debugger",
    },
    ["<leader>df"] = {
      "<cmd> DapStepOut <CR>",
      "Step into line in debugger",
    },
    ["<leader>dx"] = {
      "<cmd> DapTerminate <CR>",
      "Terminate the debugger",
    },
  },
}

return M

