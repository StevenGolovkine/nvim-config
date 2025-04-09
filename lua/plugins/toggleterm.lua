-- ~/.config/nvim/lua/plugins/toggleterm.lua

return {

  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = [[<c-\>]],
      direction = "float",
    },
  },
}
