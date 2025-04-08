-- ~/.config/nvim/lua/plugins/slime.lua

-- Plugin vim-slime - send code from Python/R/Qmd documents to  a terminal

return {
  "jpalardy/vim-slime",
  dev = false,

  -- Load for specific filetypes (optional, can be omitted for global availability)
  ft = { "python", "r", "quarto", "markdown" },

  -- Init runs before the plugin is loaded
  init = function()
    vim.b.quarto_is_python_chunk = false

    -- Define a global Lua function to check if in a Python code chunk
    Quarto_is_in_python_chunk = function()
      require("otter.tools.functions").is_otter_language_context("python")
    end

    -- Set up Quarto-specific escape override for sending multiline code to REPLs
    vim.cmd([[
      let g:slime_dispatch_ipython_pause = 100
      function SlimeOverride_EscapeText_quarto(text)
        call v:lua.Quarto_is_in_python_chunk()
        if exists('g:slime_python_ipython') && len(split(a:text,"\n")) > 1 && b:quarto_is_python_chunk && !(exists('b:quarto_is_r_mode') && b:quarto_is_r_mode)
          return ["%cpaste -q\n", g:slime_dispatch_ipython_pause, a:text, "--", "\n"]
        elseif exists('b:quarto_is_r_mode') && b:quarto_is_r_mode && b:quarto_is_python_chunk
          return [a:text, "\n"]
        else
          return [a:text]
        endif
      endfunction
    ]])

    -- General config
    vim.g.slime_target = "neovim"
    vim.g.slime_no_mappings = true
    vim.g.slime_python_ipython = 1
  end,

  -- Config runs after the plugin is loaded
  config = function()
    vim.g.slime_input_pid = false
    vim.g.slime_suggest_default = true
    vim.g.slime_menu_config = false
    vim.g.slime_neovim_ignore_unlisted = true

    -- Helper function to print the terminal job ID
    local function mark_terminal()
      local job_id = vim.b.terminal_job_id
      vim.notify("Slime terminal job_id: " .. tostring(job_id))
    end

    -- Helper function to (re)set the terminal as Slime target
    local function set_terminal()
      vim.fn["slime#config"]()
    end

    -- Keymaps
    vim.keymap.set("n", "<leader>cm", mark_terminal, { desc = "Slime: [m]ark terminal" })
    vim.keymap.set("n", "<leader>cs", set_terminal, { desc = "Slime: [s]et terminal" })
  end,
}
