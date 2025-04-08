-- ~/.config/nvim/lua/plugins/quarto.lua

return {
  {
    "quarto-dev/quarto-nvim",
    version = "1.2.2",
    ft = { "quarto" },
    dev = false,
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {},
  },
}
