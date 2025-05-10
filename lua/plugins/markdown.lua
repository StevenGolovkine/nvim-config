-- ~/.config/nvim/lua/plugins/markdown.lua

return {
  {
    "preservim/vim-markdown",
    enabled = true,
    config = function()
      vim.g.vim_markdown_math = 1
      vim.g.vim_markdown_folding_disabled = 1
      vim.g.vim_markdown_follow_anchor = 1
      vim.g.vim_markdown_strikethrough = 1
      vim.g.vim_markdown_new_list_item_indent = 0
      vim.g.vim_markdown_auto_insert_bullets = 0
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
