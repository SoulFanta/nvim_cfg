return {
  {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  config = function()
    require("nvim-surround").setup({})  -- keymaps創ставляются автоматически
  end,
}
}
