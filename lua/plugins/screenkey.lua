-- ~/.config/nvim/lua/plugins/screenkey.lua

return {
  -- Show screenkey
  {
    "NStefan002/screenkey.nvim",
    lazy = false,
    opts = {
      win_opts = {
        row = 1,
        col = vim.o.columns - 1,
        anchor = "NE",
      },
    },
  },
}
