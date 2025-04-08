-- ~/.config/nvim/lua/plugins/blink.lua

return {

  {
    "saghen/blink.cmp",
    enabled = true,
    version = not vim.g.lazyvim_blink_main and "*",
    dev = false,
    lazy = false,
    dependencies = {
      { "moyiz/blink-emoji.nvim" },
      { "Kaiser-Yang/blink-cmp-git" },
      {
        "saghen/blink.compat",
        opts = {
          impersonate_nvim_cmp = true,
          enable_events = true,
          debug = true,
        },
      },
      { "jmbuhr/cmp-pandoc-references" },
      { "kdheepak/cmp-latex-symbols" },
    },
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "enter",
        ["<c-y>"] = { "show_documentation", "hide_documentation" },
      },
      cmdline = {
        enabled = false,
      },
      sources = {
        default = { "lazydev", "lsp", "path", "references", "git", "snippets", "buffer", "emoji" },
        providers = {
          emoji = {
            module = "blink-emoji",
            name = "Emoji",
            score_offset = -1,
          },
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
          git = {
            module = "blink-cmp-git",
            name = "Git",
            opts = {},
            enabled = function()
              return vim.tbl_contains({ "octo", "gitcommit", "git" }, vim.bo.filetype)
            end,
          },
          references = {
            name = "pandoc_references",
            module = "cmp-pandoc-references.blink",
            score_offset = 2,
          },
          symbols = { name = "symbols", module = "blink.compat.source" },
        },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 100,
          treesitter_highlighting = true,
        },
        menu = {
          auto_show = true,
        },
      },
      signature = { enabled = true },
    },
  },
}
