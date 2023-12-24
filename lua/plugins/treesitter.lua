return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    --lazy = false,
    event = { 'VeryLazy', 'BufReadPre', 'BufNewFile' },
    config =  function ()
      local opts = {
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
        }
      }

      require('nvim-treesitter.configs').setup(opts)
    end
  }
}
