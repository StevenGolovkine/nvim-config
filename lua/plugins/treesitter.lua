-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    auto_install = true,
    ensure_installed = {
      -- LaTeX LaTeX
      "bibtex",
      "latex",
      -- Programming languages
      "css",
      "html",
      "javascript",
      "julia",
      "lua",
      "python",
      "query",
      "r",
      "typescript",
      -- Config
      "bash",
      "dot",
      "vim",
      "vimdoc",
      "yaml",
      -- Misc
      "markdown",
      "markdown_inline",
      "mermaid",
      "norg",
    },
    highlight = {
      enable = true,
      disable = { "latex", "biblatex" }, -- Provide by VimTex
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true,
    },
  },
}
