-- ~/.config/nvim/lua/plugins/neogen.lua

return {
  -- Generate docstrings
  {
    "danymat/neogen",
    cmd = { "Neogen" },
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = true,
  },
}
