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
      require('alpha').setup(dashboard.config)
    end
  }
}
