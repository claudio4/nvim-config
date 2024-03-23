return {
  {
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      opts = {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = "<C-g>",
            accept_word = "<A-g>",
          },
        },
      },
      keys = {
        {
          "<leader>cot",
          function()
            local msg = "Copilot has been"
            if vim.g.copilot_enabled then
              vim.g.copilot_enabled = false
              vim.cmd("Copilot disable")
              msg = msg .. " disabled."
            else
              vim.g.copilot_enabled = true
              vim.cmd("Copilot enable")
              msg = msg .. " enabled."
            end

            vim.notify(msg, "INFO", { title = "Github Copilot", timeout = 500 })
          end,
          desc = "Toggle Copilot",
        },
      },
      init = function()
        vim.g.copilot_enabled = false
      end,
      config = function(_, opts)
        local copilot = require("copilot")
        copilot.setup(opts)
      end,
    },
  },
}
