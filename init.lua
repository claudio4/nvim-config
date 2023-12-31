vim.opt.autoindent = true
vim.opt.expandtab = true
vim.o.foldmethod = "indent"
vim.o.foldlevelstart = 99
vim.opt.smartindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.wo.number = true
vim.wo.relativenumber = true
vim.g.mapleader = " "
vim.g.maplocalleader = " "

require("plugin-manager")
require("commands")
require("mappings")
