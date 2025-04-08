-- ~/.config/nvim/lua/plugins/venv.lua

return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    opts = {
      settings = {
        search = {
          home_dir_venvs = {
            command = "fd '/bin/python3$' ~/.ve --full-path -I",
          },
        },
      },
    },
    event = "VeryLazy",
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { "<leader>vs", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same directory).
      { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
    },
  },
}
