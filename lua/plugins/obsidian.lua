-- ~/.config/nvim/lua/plugins/obsidian.lua

return {

  -- Note in Obsidian
  {
    "epwalsh/obsidian.nvim",
    enabled = true,
    -- lazy = false,
    ft = "markdown",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>nd", ":ObsidianToday<cr>", desc = "obsidian [d]aily" },
      { "<leader>nt", ":e ~/notes/readme.md<cr>", desc = "obsidian [t]odo" },
      { "<leader>ny", ":ObsidianToday -1<cr>", desc = "obsidian [y]esterday" },
      { "<leader>nb", ":ObsidianBacklinks<cr>", desc = "obsidian [b]acklinks" },
      { "<leader>nl", ":ObsidianLink<cr>", desc = "obsidian [l]ink selection" },
      { "<leader>nf", ":ObsidianFollowLink<cr>", desc = "obsidian [f]ollow link" },
      { "<leader>nn", ":ObsidianNew<cr>", desc = "obsidian [n]ew" },
      { "<leader>ns", ":ObsidianSearch<cr>", desc = "obsidian [s]earch" },
      { "<leader>no", ":ObsidianQuickSwitch<cr>", desc = "obsidian [o]pen quickswitch" },
      { "<leader>nO", ":ObsidianOpen<cr>", desc = "obsidian [O]pen in app" },
    },
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require("obsidian").setup({
        ui = {
          enable = false,
        },
        completion = {
          default = nil,
          nvim_cmp = false,
          min_chars = 2,
        },
        workspaces = {
          {
            name = "notes",
            path = "~/Documents/notes",
          },
        },
        -- Optional, for templates (see below).
        templates = {
          default = nil,
          folder = "templates",
          date_format = "%Y-%m-%d",
          time_format = "%H:%M",
          -- A map for custom variables, the key should be the variable and the value a function
          substitutions = {},
        },
        daily_notes = {
          default = nil,
          -- Optional, if you keep daily notes in a separate directory.
          -- folder = "dailies",
          -- Optional, if you want to change the date format for the ID of daily notes.
          -- date_format = "%Y-%m-%d",
          -- Optional, if you want to change the date format of the default alias of daily notes.
          -- alias_format = "%B %-d, %Y",
          -- Optional, default tags to add to each new daily note created.
          -- default_tags = { "daily-notes" },
          -- Optional, if you want to automatically insert a template from your template directory like 'daily.md'
          template = "template-daily.md",
        },
        mappings = {
          default = nil,
          -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
          ["gf"] = {
            action = function()
              return require("obsidian").util.gf_passthrough()
            end,
            opts = { noremap = false, expr = true, buffer = true },
          },
          -- create and toggle checkboxes
          ["<cr>"] = {
            action = function()
              local line = vim.api.nvim_get_current_line()
              if line:match("%s*- %[") then
                require("obsidian").util.toggle_checkbox()
              elseif line:match("%s*-") then
                vim.cmd([[s/-/- [ ]/]])
                vim.cmd.nohlsearch()
              end
            end,
            opts = { buffer = true },
          },
        },
        -- Optional, customize how names/IDs for new notes are created.
        note_id_func = function(title)
          -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
          -- In this case a note with the title 'My new note' will be given an ID that looks
          -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
          local suffix = ""
          if title ~= nil then
            -- If title is given, transform it into valid file name.
            suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
          else
            -- If title is nil, just add 4 random uppercase letters to the suffix.
            for _ = 1, 4 do
              suffix = suffix .. string.char(math.random(65, 90))
            end
          end
          return tostring(os.time()) .. "-" .. suffix
        end,
      })
    end,
  },
}
