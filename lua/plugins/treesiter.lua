return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "typescript",
        "javascript",
        "html",
        "css",
        "scss",
        "c_sharp",
        "python",
        "lua",
      },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
     
    },
  },
}
