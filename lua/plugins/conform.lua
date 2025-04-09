-- ~/.config/nvim/lua/plugins/conform.lua

return {

  -- Autoformat
  {
    "stevearc/conform.nvim",
    enabled = true,
    keys = {
      { "<leader>cf", '<cmd>lua require("conform").format()<cr>', desc = "[f]ormat" },
    },

    opts = {
      notify_on_error = false,
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        quarto = { "injected" },
        markdown = { "injected" },
        r = { "styler" },
        tex = { "latexindent" },
      },
      formatters = {
        injected = {
          -- Set the options field
          options = {
            -- Set to true to ignore errors
            ignore_errors = false,
            -- Map of treesitter language to file extension
            -- A temporary file name with this extension will be generated during formatting
            -- because some formatters care about the filename.
            lang_to_ext = {
              bash = "sh",
              c_sharp = "cs",
              elixir = "exs",
              javascript = "js",
              julia = "jl",
              latex = "tex",
              markdown = "md",
              python = "py",
              ruby = "rb",
              rust = "rs",
              teal = "tl",
              r = "r",
              typescript = "ts",
            },
            -- Map of treesitter language to formatters to use
            -- (defaults to the value from formatters_by_ft)
            lang_to_formatters = {},
          },
        },
      },
    },
  },
}
