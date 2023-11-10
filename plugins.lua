local plugins = {
  {
    "ggandor/leap.nvim",
    lazy = false,
    config = function ()
      require('leap').add_default_mappings()
    end
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local conf = require "plugins.configs.cmp"
      table.insert(conf.sources, {name = "crates"})
      return conf
    end,
  },
  {
   "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "nvim-lua/plenary.nvim",
    lazy = true,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return require "custom.configs.treesitter"
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    after = "nvim-lspconfig",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.none-ls"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    lazy = true,
    config = function ()
      require "custom.configs.dap"
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "pmizio/typescript-tools.nvim",
    ft = { "typescript", "javascript"},
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = function ()
      return require "custom.configs.typescript"
    end,
  },
  {
    "saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = {"neovim/nvim-lspconfig"},
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    main = "rust-tools",
  },
  {
    "williamboman/mason.nvim",
    opts = function()
       return require "custom.configs.mason"
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap"},
    keys = {
      {
        "<leader>db", "<cmd>DapToggleBreakpoint<CR>", desc = "Add breakpoint at line"
      },
      {
        "<leader>dr", "<cmd>DapContinue<CR>", desc = "Run or continue the debugger"
      },
      {
        "<F5>", "<cmd>DapContinue<CR>", desc = "Run or continue the debugger"
      }
    },
    config = function ()
      require "custom.configs.dap-ui"
    end
  },
  {
  "ray-x/go.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
      require "custom.configs.go"
  end,
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}

}


return plugins

