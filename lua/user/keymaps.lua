local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<leader>l", "<C-w>l", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>h", "<C-w>h", opts)

-- Left explorer
keymap("n", "<leader>E", ":Lex 30<cr>", opts)

-- Window resizing
keymap("n", "<leader><leader>k", ":resize +2<cr>", opts)
keymap("n", "<leader><leader>j", ":resize -2<cr>", opts)
keymap("n", "<leader><leader>l", ":vertical resize +2<cr>", opts)
keymap("n", "<leader><leader>h", ":vertical resize -2<cr>", opts)

-- Buffer navigation
keymap("n", "<leader>bp", ":bprevious<cr>", opts)
keymap("n", "<leader>bn", ":bnext<cr>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "K", ":m .-2<cr>==", opts)
keymap("v", "J", ":m .+1<cr>==", opts)
keymap("v", "p", '"_dP', opts)

-- Terminal navigation
keymap("t", "<C-<leader>>l", "<C-\\><C-N><C-w>l", term_opts)
keymap("t", "<C-<leader>>k", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-<leader>>j", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-<leader>>h", "<C-\\><C-N><C-w>h", term_opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
keymap("n", "<C-t>", "<cmd>Telescope live_grep<cr>", opts)
