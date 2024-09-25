return {
  {
    "tris203/precognition.nvim",
    keys = {
      {
        "<leader>uP",
        function()
          if require("precognition").toggle() then
            vim.notify("precognition on")
          else
            vim.notify("precognition off")
          end
        end,
        desc = "Toggle precognition",
      },
    },
  },
}
