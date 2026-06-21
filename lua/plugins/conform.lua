-- lua/plugins/conform.lua
return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      jsx = { "prettier" },
      tsx = { "prettier" },
      python = { "black" },
      go = { "gofmt" },
      rust = { "rustfmt" },
      lua = { "stylua" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },
}
