return {
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "soft" -- soft / medium / hard
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme("everforest")
    end,
  },
}
