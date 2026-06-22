local group = vim.api.nvim_create_augroup("DiagnosticsNotifyOnSave", { clear = true })

vim.api.nvim_create_autocmd("BufWritePost", {
  group = group,
  callback = function(args)
    local diags = vim.diagnostic.get(args.buf)

    local errors = 0
    local warns = 0

    for _, d in ipairs(diags) do
      if d.severity == vim.diagnostic.severity.ERROR then
        errors = errors + 1
      elseif d.severity == vim.diagnostic.severity.WARN then
        warns = warns + 1
      end
    end

    if errors == 0 and warns == 0 then
      return
    end

    vim.notify(
      "\nERROR: " .. errors .. "\nWARN: " .. warns .. "\n\nВведи :DiagList, чтобы открыть список ошибок",
      errors > 0 and vim.log.levels.ERROR or vim.log.levels.WARN,
      {
        title = "Diagnostics",
        timeout = 1000,
      }
    )
  end,
})
