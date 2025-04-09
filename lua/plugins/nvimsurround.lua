-- ~/.config/nvim/lua/nvimsurround.lua

return {

  -- add/delete/change can be done with the keymaps
  -- ys{motion}{char}, ds{char}, and cs{target}{replacement}
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {},
  },
}
