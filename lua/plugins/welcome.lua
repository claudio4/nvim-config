return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = { 'VimEnter' },
    config = function()
      local dashboard = require('alpha.themes.dashboard')
      dashboard.section.header.val = {
        [[ ██████╗██╗      █████╗ ██╗   ██╗██████╗ ██╗ ██████╗ ██╗  ██╗]],
        [[██╔════╝██║     ██╔══██╗██║   ██║██╔══██╗██║██╔═══██╗██║  ██║]],
        [[██║     ██║     ███████║██║   ██║██║  ██║██║██║   ██║███████║]],
        [[██║     ██║     ██╔══██║██║   ██║██║  ██║██║██║   ██║╚════██║]],
        [[╚██████╗███████╗██║  ██║╚██████╔╝██████╔╝██║╚██████╔╝     ██║]],
        [[ ╚═════╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝      ╚═╝]],
      }

      dashboard.section.buttons.val = {
        dashboard.button("e", "  > New File", "<cmd>ene<CR>"),
        dashboard.button("SPC e", "  > Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
        dashboard.button("SPC ff", "󰱼  > Find File", "<cmd>Telescope find_files<CR>"),
        dashboard.button("SPC fg", "  > Live grep", "<cmd>Telescope live_grep<CR>"),
        dashboard.button("SPC fo", "󰁯  > Explore Previous files", "<cmd>Telescope oldfiles<CR>"),
      }

      require('alpha').setup(dashboard.config)
    end
  }
}
