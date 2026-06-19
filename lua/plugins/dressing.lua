return {
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = {
      input = {
        enabled = true,
        default_prompt = "Input:",
        trim_prompt = true,
        relative = "editor",
        border = "rounded",
        winblend = 0,
      },
      select = {
        enabled = true,
        backend = { "telescope", "builtin" },
        telescope = require("telescope.themes").get_dropdown({
          winblend = 10,
        }),
      },
    },
    config = function(_, opts)
      require("dressing").setup(opts)
    end,
  },
}
