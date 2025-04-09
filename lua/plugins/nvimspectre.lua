-- ~/.config/nvim/lua/plugins/nvimspectre.lua

return {
  -- interactive global search and replace
  {
    "nvim-pack/nvim-spectre",
    cmd = { "Spectre" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
