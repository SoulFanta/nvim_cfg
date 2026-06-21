vim.api.nvim_create_user_command("Term", function()
  require("nvchad.term").toggle {
    pos = "float",
    id = "floatTerm",
    float_opts = {
      row = 0.1,
      col = 0.1,
      width = 0.8,
      height = 0.8,
    },
  }
end, {
  desc = "Toggle floating terminal",
})

vim.api.nvim_create_autocmd("TermOpen", {
  callback = function(event)
    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
      buffer = event.buf,
      silent = true,
      desc = "Exit terminal mode",
    })

    vim.keymap.set("n", "q", function()
      require("nvchad.term").toggle {
        pos = "float",
        id = "floatTerm",
        float_opts = {
          row = 0.1,
          col = 0.1,
          width = 0.8,
          height = 0.8,
        },
      }
    end, {
      buffer = event.buf,
      silent = true,
      desc = "Hide floating terminal",
    })
  end,
})
