require("nvchad.mappings")

local map = vim.keymap.set

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })

map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })


-- surround
map("x", "S", "<Plug>(nvim-surround-visual)", { desc = "Surround selection" })
map("x", "gS", "<Plug>(nvim-surround-visual-line)", { desc = "Surround selection line" })


