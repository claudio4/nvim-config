local commands = require("commands")

local map = vim.keymap.set
local noremap = { noremap = true, silent = true }

map("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear highlights", noremap = true, silent = true })

-- Move in insert mode
map("i", "<C-h>", "<Left>", { desc = "Move cursor left", noremap = true, silent = true })
map("i", "<C-l>", "<Right>", { desc = "Move cursor right", noremap = true, silent = true })
map("i", "<C-j>", "<Down>", { desc = "Move cursor down", noremap = true, silent = true })
map("i", "<C-k>", "<Up>", { desc = "WMove cursor up", noremap = true, silent = true })

-- switch between windows
map("n", "<C-h>", "<C-w>h", { desc = "Window left", noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { desc = "Window right", noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { desc = "Window down", noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { desc = "Window up", noremap = true, silent = true })

-- Allow moving the cursor through wrapped lines with j, k, <Up> and <Down>
-- http://www.reddit.com/r/vim/comments/2k4cbr/problem_with_gj_and_gk/
map("n", "j", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, noremap = true, silent = true })
map("n", "k", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, noremap = true, silent = true })
map("n", "<Up>", 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', { expr = true, noremap = true, silent = true })
map("n", "<Down>", 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', { expr = true, noremap = true, silent = true })

-- Indent without losing selection
map("v", "<", "<gv", noremap)
map("v", ">", ">gv", noremap)

-- Paste without yanking
map("v", "p", '"_dP', noremap)

-- save
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file", noremap = true, silent = true })

-- Manage buffer
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "New buffer", noremap = true, silent = true })
map("n", "<leader>x", "<cmd>confirm bdelete<CR>", { desc = "Close current buffer", noremap = true, silent = true })

-- Splits
map("n", "<leader>h", "<cmd>split %<CR>", { desc = "Horizontal split", noremap = true, silent = true })
map("n", "<leader>v", "<cmd>vsplit %<CR>", { desc = "Vertical split", noremap = true, silent = true })

-- Comments
map("n", "<leader>/", function()
  require("Comment.api").toggle.linewise.current()
end, { desc = "Comment toggle (linewise)", noremap = true, silent = true })
map("n", "<leader>?", function()
  require("Comment.api").toggle.blockwise.current()
end, { desc = "Comment toggle (linewise)", noremap = true, silent = true })

map(
  "x",
  "<leader>/",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  { desc = "Comment toggle (linewise)", noremap = true, silent = true }
)
map(
  "x",
  "<leader>?",
  "<ESC><cmd>lua require('Comment.api').toggle.blockwise(vim.fn.visualmode())<CR>",
  { desc = "Comment toggle (linewise)", noremap = true, silent = true }
)

-- Debug (DAP)
map(
  "n",
  "<leader>db",
  "<cmd>DapToggleBreakpoint<CR>",
  { desc = "Add breakpoint at line", noremap = true, silent = true }
)
map("n", "<leader>dr", "<cmd>DapContinue<CR>", { desc = "Run or continue the debugger", noremap = true, silent = true })
map("n", "<F5>", "<cmd>DapContinue<CR>", { desc = "Run or continue the debugger", noremap = true, silent = true })
map("n", "<leader>do", "<cmd>DapStepOver<CR>", { desc = "Step over line in debugger", noremap = true, silent = true })
map("n", "<leader>di", "<cmd>DapStepInto<CR>", { desc = "Step into line in debugger", noremap = true, silent = true })
map("n", "<leader>df", "<cmd>DapStepOut<CR>", { desc = "Step out of line in debugger", noremap = true, silent = true })
map("n", "<leader>dx", "<cmd>DapTerminate<CR>", { desc = "Terminate debugger", noremap = true, silent = true })

-- Flash
map({ "n", "x", "o" }, "s", function()
  require("flash").jump()
end, { desc = "Flash", noremap = true, silent = true })
map({ "n", "x", "o" }, "S", function()
  require("flash").treesitter()
end, { desc = "Flash Treesitter", noremap = true, silent = true })
map("o", "r", function()
  require("flash").remote()
end, { desc = "Remote Flash", noremap = true, silent = true })
map({ "o", "x" }, "R", function()
  require("flash").treesitter_search()
end, { desc = "Treesitter Search", noremap = true, silent = true })
map("c", "<c-s>", function()
  require("flash").toggle()
end, { desc = "Toggle Flash Search", noremap = true, silent = true })

-- Format
map({ "n", "x" }, "<leader>cf", "Format", { desc = "Format code", noremap = true, silent = true })
map("n", "<leader>cF", function()
  commands.FormatOnSaveToggle({})
end, { desc = "Toggle autoformatting on save", noremap = true, silent = true })

-- Tree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file tree", noremap = true, silent = true })
map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file tree", noremap = true, silent = true })

-- Telescope
map(
  "n",
  "<leader>ff",
  "<cmd>Telescope find_files<CR>",
  { desc = "Find files with Telescope", noremap = true, silent = true }
)
map(
  "n",
  "<leader>fg",
  "<cmd>Telescope live_grep<CR>",
  { desc = "Live grep with Telescope", noremap = true, silent = true }
)
map(
  "n",
  "<leader>fb",
  "<cmd>Telescope buffers<CR>",
  { desc = "Find buffer with Telescope", noremap = true, silent = true }
)
map(
  "n",
  "<leader>fh",
  "<cmd>Telescope help_tags<CR>",
  { desc = "Explore help tags with Telescope", noremap = true, silent = true }
)
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "List old files", noremap = true, silent = true })
map(
  "n",
  "<leader>fc",
  "<cmd>Telescope grep_string<CR>",
  { desc = "Find string under cursor with Telescope", noremap = true, silent = true }
)
map(
  "n",
  "<leader>fn",
  "<cmd>Telescope notify<CR>",
  { desc = "Explore past notifcations", noremap = true, silent = true }
)
map(
  "n",
  "<F1>",
  "<cmd>Telescope commands<CR>",
  { desc = "Command runner inside Telescope", noremap = true, silent = true }
)

-- Terminal
map({ "n", "t" }, "<C-]>", commands.TermToggle, { desc = "Toggle terminal", noremap = false, silent = true })
map("n", "<leader>tt", commands.TermSelect, { desc = "Select terminal", noremap = true, silent = true })
map("n", "<leader>tn", commands.TermCreate, { desc = "New terminal", noremap = true, silent = true })

-- LSP
vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP mappings",
  callback = function(event)
    local opts = { buffer = event.buf }

    opts.desc = "LSP Hover information"
    map("n", "K", vim.lsp.buf.hover, opts)

    opts.desc = "Go to definition"
    map("n", "gd", vim.lsp.buf.definition, opts)

    opts.desc = "Go to declaration"
    map("n", "gD", vim.lsp.buf.declaration, opts)

    opts.desc = "List implemetations"
    map("n", "gi", vim.lsp.buf.implementation, opts)

    opts.desc = "Go to type definition"
    map("n", "go", vim.lsp.buf.type_definition, opts)

    opts.desc = "List references"
    map("n", "gr", vim.lsp.buf.references, opts)

    opts.desc = "Show signature help"
    map("n", "<leader>cs", vim.lsp.buf.signature_help, opts)

    opts.desc = "Rename symbol"
    map("n", "<F2>", vim.lsp.buf.rename, opts)

    opts.desc = "Format code (LSP)"
    map({ "n", "x" }, "<F3>", vim.lsp.buf.format, opts)
    -- map({ 'n', 'x' }, '<leader>cf', vim.lsp.buf.format, opts)

    opts.desc = "Code actions"
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

    opts.desc = "Show code diagnostics"
    map("n", "<leader>cd", vim.diagnostic.open_float, opts)

    opts.desc = "Go to previous diagnostic"
    map("n", "[d", vim.diagnostic.goto_prev, opts)

    opts.desc = "Go to next diagnostic"
    map("n", "]d", vim.diagnostic.goto_next, opts)
  end,
})
