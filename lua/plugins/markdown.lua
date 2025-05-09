-- ~/.config/nvim/lua/plugins/markdown.lua

return {
  {
    "preservim/vim-markdown",
    enabled = true,
    config = function()
      vim.g.vim_markdown_math = 1
    end,
  },

  {
    "vim-pandoc/vim-pandoc-syntax",
    enabled = false,
    ft = { "markdown", "pandoc", "quarto" },
    config = function()
      -- Optional: set some recommended settings
      vim.g["pandoc#syntax#conceal#use"] = 0
    end,
  },
}
