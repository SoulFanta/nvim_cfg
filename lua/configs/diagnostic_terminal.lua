vim.api.nvim_create_user_command("Diag", function()
  vim.diagnostic.open_float(nil, {
    focusable = true,
    border = "rounded",
    source = "if_many",
    scope = "cursor",
  })
end, {
  desc = "Open diagnostic float",
})

vim.api.nvim_create_user_command("DiagList", function()
  vim.cmd("Trouble diagnostics toggle focus=true")
end, {
  desc = "Toggle diagnostics list",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "trouble",
  callback = function(event)
    vim.keymap.set("n", "q", "<cmd>close<cr>", {
      buffer = event.buf,
      silent = true,
      desc = "Close Trouble",
    })
  end,
})

