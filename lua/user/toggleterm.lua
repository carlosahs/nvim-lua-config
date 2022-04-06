local status_ok, toggleterm = pcall(require, "toggleterm")

if not status_ok then
  return
end

toggleterm.setup({
  size = 20,
  open_mapping = [[<C-\>\]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  persist_size = true,
  shell = vim.o.shell,
  float_opts = {
    border = "curved",
    winblend = 0,
    highlights = {
      border = "Normal",
      background = "Normal",
    },
  },
})

function _G.set_terminal_keymaps()
  local opts = { noremap = true }

  vim.api.nvim_buf_set_keymap(0, "t", "<ESC>", [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-\\>l", [[<C-\><C-n><C-w>l]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-\\>k", [[<C-\><C-n><C-w>k]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-\\>j", [[<C-\><C-n><C-w>j]], opts)
  vim.api.nvim_buf_set_keymap(0, "t", "<C-\\>h", [[<C-\><C-n><C-w>h]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")

local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _LAZYGIT_TOGGLE()
  lazygit:toggle()
end