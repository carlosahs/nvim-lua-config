local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed = "maintained",
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    -- disable = { "" },
    additional_vim_regex_highlighting = false,
  },
  context_commnestring = {
    enable = true,
    enable_autocmd = true,
  },
}
