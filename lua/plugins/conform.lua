-- ~/.config/nvim/lua/plugins/conform.lua

return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    timeout_ms = 3000,
    async = false, -- not recommended to changes
    quiet = false, -- not recommended to changes
    formatters_by_ft = {
      tex = { "latexindent" },
    },
  },
}
