-- ~/.config/nvim/lua/plugins/otter.lua

return {
  {
    -- For LSP features in coll cells / embedded code
    "jmbuhr/otter.nvim",
    dev = false,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "neovim/nvim-lspconfig",
    },
    opts = {
      verbose = {
        no_code_found = false,
      },
    },
  },
}
