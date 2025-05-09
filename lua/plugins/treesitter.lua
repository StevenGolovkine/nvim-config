-- ~/.config/nvim/lua/plugins/treesitter.lua

return {

  {
    "nvim-treesitter/nvim-treesitter",
    dev = false,
    dependencies = {
      {
        "nvim-treesitter/nvim-treesitter-textobjects",
      },
    },
    run = ":TSUpdate",
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("nvim-treesitter.configs").setup({
        auto_install = true,
        ensure_installed = {
          -- LaTeX LaTeX
          -- "bibtex",
          -- "latex",
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
          -- "markdown",
          -- "markdown_inline",
          -- "mermaid",
          -- "norg",
        },
        highlight = {
          enable = true,
          disable = { "latex", "markdown" },
          additional_vim_regex_highlighting = { "latex", "markdown" },
        },
        indent = {
          enable = true,
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            scope_incremental = "grc",
            node_decremental = "grm",
          },
        },
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              -- You can use the capture groups defined in textobjects.scm
              ["af"] = "@function.outer",
              ["if"] = "@function.inner",
              ["ac"] = "@class.outer",
              ["ic"] = "@class.inner",
            },
          },
          move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
              ["]m"] = "@function.outer",
              ["]]"] = "@class.inner",
            },
            goto_next_end = {
              ["]M"] = "@function.outer",
              ["]["] = "@class.outer",
            },
            goto_previous_start = {
              ["[m"] = "@function.outer",
              ["[["] = "@class.inner",
            },
            goto_previous_end = {
              ["[M"] = "@function.outer",
              ["[]"] = "@class.outer",
            },
          },
        },
      })
    end,
  },
}
