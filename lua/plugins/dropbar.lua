-- ~/.config/nvim/lua/plugins/dropbar.lua

return {

  -- Show symbols in the current file as breadcrumbs
  {
    "Bekaboo/dropbar.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      -- turn off global option for windowline
      vim.opt.winbar = nil
      vim.keymap.set("n", "<leader>ls", require("dropbar.api").pick, { desc = "[s]ymbols" })
    end,
  },
}
