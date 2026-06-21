-- lua/custom/configs/lspconfig.lua
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")
local configs = require("nvchad.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

-- Расширенный on_attach с Inlay Hints
local enhanced_on_attach = function(client, bufnr)
  on_attach(client, bufnr)

  -- Если сервер поддерживает inlay hints
  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(bufnr, true)
  end
end

-- 1) LSP с дефолтным конфигом (html, cssls, и т.п.)
local servers_default = { "html", "cssls" }
for _, lsp in ipairs(servers_default) do
  lspconfig[lsp].setup({
    on_attach = enhanced_on_attach,
    capabilities = capabilities,
  })
end

-- 2) TypeScript/JavaScript (если нужен)
Включите, если установили typescript-language-server через Mason
lspconfig.tsserver.setup({
  on_attach = enhanced_on_attach,
  capabilities = capabilities,
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact" },
  init_options = {
    preferences = {
      includeCompletionsForImportStatements = true,
      allowImportsFromTsExtensions = true,
    },
  },
})

-- 3) Lua (lua-language-server) с inlay hints
lspconfig.lua_ls.setup({
  on_attach = enhanced_on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      hint = { enable = true },
    },
  },
})
