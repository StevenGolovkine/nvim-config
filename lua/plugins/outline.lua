-- ~/.config/nvim/lua/plugins/outline.lua

return {
  -- Show tree of symbols in the current file.
  {
    "hedyhli/outline.nvim",
    cmd = "Outline",
    keys = {
      { "<leader>lo", ":Outline<cr>", desc = "symbols outline" },
    },
    opts = {
      providers = {
        priority = { "markdown", "lsp", "norg" },
        -- Configuration for each provider (3rd party providers are supported)
        lsp = {
          -- Lsp client names to ignore
          blacklist_clients = {},
        },
        markdown = {
          -- List of supported ft's to use the markdown provider
          filetypes = { "markdown", "quarto" },
        },
      },
    },
  },
}
