local api = vim.api
local buf, win

local function open_window()
  buf = api.nvim_create_buf(false, true)
end
