-- do not create annoying backup and swap files
vim.opt.backup = false 
vim.opt.swapfile = false
vim.opt.writebackup = false

-- allow access to system clipboard
vim.opt.clipboard = "unnamedplus" 

-- more space for displaying messages
vim.opt.cmdheight = 2

-- for cmp
vim.opt.completeopt = { "menuone", "noselect" } 

-- make `` visible in markdown files
vim.opt.conceallevel = 0 

vim.opt.fileencoding = "utf-8"

vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- pop up menu height
vim.opt.pumheight = 10 

-- show tabs
vim.opt.showmode = true 

-- smart things
vim.opt.smartcase = true
vim.opt.smartindent = true

-- more intuitive splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- wait time for mapped sequence
vim.opt.timeoutlen = 1000

-- persisten undo
vim.opt.undofile = true

-- faster completion
vim.opt.updatetime = 300

-- tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- lines
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.signcolumn = "yes"

-- -- scrolling
-- vim.opt.scrolloff = 8
-- vim.opt.sidescrolloff = 8

-- -- characters to move to next/previous line
-- vim.cmd "set whichwrap+=<,>,[,],h,l"
