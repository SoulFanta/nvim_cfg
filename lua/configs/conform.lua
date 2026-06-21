local options = {
  formatters_by_ft = {
    lua = { "stylua" },
     css = { "prettier" },
     html = { "prettier" },
  },

  --format_on_save = {
    -- conform.format()
    -- timeout_ms = 500,
   --  lsp_fallback = true,
  -- },
}

return options
