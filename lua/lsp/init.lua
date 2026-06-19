local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("ts_ls", {
  capabilities = capabilities,
})

vim.lsp.config("html", {
  capabilities = capabilities,
})

vim.lsp.config("cssls", {
  capabilities = capabilities,
})

vim.lsp.config("pyright", {
  capabilities = capabilities,
})

vim.lsp.config("csharp_language_server", {
  capabilities = capabilities,
})

vim.lsp.config("eslint", {
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "vue",
    "svelte",
  },
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
})

vim.lsp.config("lua_ls", {
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

vim.lsp.enable({
  "ts_ls",
  "html",
  "cssls",
  "pyright",
  "csharp_language_server",
  "eslint",
  "lua_ls",
})
