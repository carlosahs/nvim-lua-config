local configs = require("nvim-treesitter.configs")

configs.setup {
  ensure_installed = { "c", "python", "java", "rust", "lua" },
  sync_install = false,
  ignore_install = { "" },
  highlight = {
    enable = true,
    -- disable = { "" },
    additional_vim_regex_highlighting = false,
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = true,
  },
}
