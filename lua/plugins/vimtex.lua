-- ~/.config/nvim/lua/plugins/vimtex.lua

return {
  "lervag/vimtex",
  lazy = false,
  config = function()
    vim.g.vimtex_view_enabled = 1
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_view_skim_sync = 1
    vim.g.vimtex_view_skim_activate = 1
    vim.g.vimtex_quickfix_mode = 0
    vim.g.tex_conceal = "abdmg"
  end,
}
