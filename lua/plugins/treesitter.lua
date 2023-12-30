return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    --lazy = false,
    event = { "VeryLazy", "BufReadPre", "BufNewFile" },
    dependecies = {
      "windwp/nvim-ts-autotag",
    },
    config = function()
      local opts = {
        autotag = true,
        auto_install = true,
        ensure_installed = {
          "bash",
          "c",
          "c_sharp",
          "cpp",
          "css",
          "csv",
          "dockerfile",
          "git_config",
          "git_rebase",
          "gitignore",
          "go",
          "gomod",
          "gosum",
          "gowork",
          "html",
          "ini",
          "javascript",
          "jsdoc",
          "jsonc",
          "lua",
          "luadoc",
          "make",
          "python",
          "query",
          "regex",
          "rust",
          "scss",
          "sql",
          "toml",
          "typescript",
          "vim",
          "vimdoc",
          "xml",
          "yaml",
        },
        highlight = {
          enable = true,
        },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
          },
        },
      }

      require("nvim-treesitter.configs").setup(opts)
    end,
  },
}
