require("github-theme").setup({
  theme_style = "dark",
  function_style = "italic",
  sidebars = { "qf", "vista_kind", "terminal", "packer" },

  -- -- Change the "hint" and "error" colors
  -- colors = { hint = "orange", error = "#ff0000" },

  -- -- Overwrite the highlight groups
  -- overrides = function(c)
  --   return {
  --     htmlTag = { fg = c.red, bg = "#282c34", sp = c.hint, style = "underline" },
  --     DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
  --     -- Remove highlight groups
  --     TSField = {},
  --   }
  -- end
})
