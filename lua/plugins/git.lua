-- ~/.config/nvim/lua/plugins/git.lua

-- Git plugins

return {
  -- Interface for cycling through diffs for all modified files.
  { "sindrets/diffview.nvim" },

  -- Git UI
  {
    "NeogitOrg/neogit",
    lazy = true,
    cmd = "Neogit",
    keys = {
      { "<leader>gg", ":Neogit<cr>", desc = "neo[g]it" },
    },
    config = function()
      require("neogit").setup({
        disable_commit_confirmation = true,
        integrations = {
          diffview = true,
        },
      })
    end,
  },

  {
    "akinsho/git-conflict.nvim",
    version = "^2.1.0",
    init = function()
      require("git-conflict").setup({
        default_mappings = false,
        disable_diagnostics = true,
      })
    end,
    keys = {
      { "<leader>gco", ":GitConflictChooseOurs<cr>" },
      { "<leader>gct", ":GitConflictChooseTheirs<cr>" },
      { "<leader>gcb", ":GitConflictChooseBoth<cr>" },
      { "<leader>gc0", ":GitConflictChooseNone<cr>" },
      { "]x", ":GitConflictNextConflict<cr>" },
      { "[x", ":GitConflictPrevConflict<cr>" },
    },
  },

  {
    "f-person/git-blame.nvim",
    init = function()
      require("gitblame").setup({
        enabled = false,
      })
      vim.g.gitblame_display_virtual_text = 1
      -- vim.g.gitblame_enabled = 0
    end,
  },

  -- Github
  {
    "pwntester/octo.nvim",
    enabled = true,
    cmd = "Octo",
    config = function()
      require("octo").setup()
      vim.keymap.set("n", "<leader>gpl", ":Octo pr list<cr>", { desc = "octo [p]r list" })
      vim.keymap.set("n", "<leader>gpr", ":Octo review start<cr>", { desc = "octo [r]eview" })
    end,
  },
}
