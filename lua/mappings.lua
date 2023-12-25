local map = vim.keymap.set
local noremap = { noremap = true, silent = true }

map("n", "<Esc>", "<cmd>bog<CR>", { desc = "Clear highlights", noremap = true, silent = true })

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
map("n", "<leader>x", "<cmd>BDelete! this<CR>", { desc = "Close current buffer", noremap = true, silent = true })

-- Splits
map("n", "<leader>h", "<cmd>split %<CR>", { desc = "Horizontal split", noremap = true, silent = true })
map("n", "<leader>v", "<cmd>vsplit %<CR>", { desc = "Vertical split", noremap = true, silent = true })

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files with Telescope", noremap = true, silent = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep with Telescope", noremap = true, silent = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffer with Telescope", noremap = true, silent = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Explore help tags with Telescope", noremap = true, silent = true })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "List old files", noremap = true, silent = true })
map("n", "<leader>fc", "<cmd>Telescope grep_string<CR>", { desc = "Find string under cursor with Telescope", noremap = true, silent = true })
map("n", "<F1>", "<cmd>Telescope commands<CR>", { desc = "Command runner inside Telescope", noremap = true, silent = true })

