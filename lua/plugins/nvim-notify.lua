return {
  {
    "rcarriga/nvim-notify",
    --lazy = false,            -- 1. Отключаем ленивую загрузку, плагин нужен сразу
    --priority = 1000,         -- 2. Загружаем раньше остальных UI плагинов
    event = "VeryLazy",
    config = function()
      local notify = require("notify")

      notify.setup({
        stages = "slide",
        timeout = 1200,
        background_colour = "Normal",
        render = "compact",
      })

      vim.notify = notify
    end,
  },
}
