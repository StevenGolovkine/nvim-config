-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

-- Defines functions
local function smart_compile()
  local filetype = vim.bo.filetype -- Get current buffer's filetype

  -- Define compile commands per filetype
  local compile_commands = {
    tex = ":VimtexCompile", -- LaTeX (vimtex plugin)
    quarto = ":QuartoPreview", -- Quarto (quarto-nvim plugin)
    -- Add more filetypes as needed
  }

  -- Execute the appropriate command
  local cmd = compile_commands[filetype]
  if cmd then
    vim.cmd(cmd) -- Run the command
  else
    print("No compile command defined for filetype: " .. filetype)
  end
end

local is_code_chunk = function()
  local current, _ = require("otter.keeper").get_current_language_context()
  if current then
    return true
  else
    return false
  end
end

-- @param lang string
local insert_code_chunk = function(lang)
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<esc>", true, false, true), "n", true)
  local keys
  if is_code_chunk() then
    keys = [[o```<cr><cr>```{]] .. lang .. [[}<esc>o]]
  else
    keys = [[o```{]] .. lang .. [[}<cr>```<esc>O]]
  end
  keys = vim.api.nvim_replace_termcodes(keys, true, false, true)
  vim.api.nvim_feedkeys(keys, "n", false)
end

local insert_r_chunk = function()
  insert_code_chunk("r")
end

local insert_py_chunk = function()
  insert_code_chunk("python")
end

local insert_lua_chunk = function()
  insert_code_chunk("lua")
end

local insert_julia_chunk = function()
  insert_code_chunk("julia")
end

local insert_bash_chunk = function()
  insert_code_chunk("bash")
end

local insert_ojs_chunk = function()
  insert_code_chunk("ojs")
end

-- Keymap to compile files
vim.keymap.set("n", "<leader>c", smart_compile, { desc = "[c]ompile file" })

-- Keymaps relateed to VimTex
wk.add({
  {
    { "<localleader>l", group = "[l]vimtex" },
  },
}, { mode = "n" })

-- Keymaps related to Quarto
wk.add({
  {
    { "<localleader>q", group = "[q]uarto" },
    {
      "<localleader>qE",
      function()
        require("otter").export(true)
      end,
      desc = "[E]xport with overwrite",
    },
    { "<localleader>qa", ":QuartoActivate<cr>", desc = "[a]ctivate" },
    { "<localleader>qe", require("otter").export, desc = "[e]xport" },
    { "<localleader>qh", ":QuartoHelp ", desc = "[h]elp" },
    { "<localleader>qp", ":lua require'quarto'.quartoPreview()<cr>", desc = "[p]review" },
    { "<localleader>qq", ":lua require'quarto'.quartoClosePreview()<cr>", desc = "[q]uiet preview" },
    { "<localleader>qr", group = "[r]un" },
    { "<localleader>qra", ":QuartoSendAll<cr>", desc = "run [a]ll" },
    { "<localleader>qrb", ":QuartoSendBelow<cr>", desc = "run [b]elow" },
    { "<localleader>qrr", ":QuartoSendAbove<cr>", desc = "to cu[r]sor" },
  },
}, { mode = "n" })

-- Keymaps related to Otter
wk.add({
  {
    { "<localleader>o", group = "[o]tter & c[o]de" },
    { "<localleader>oa", require("otter").activate, desc = "otter [a]ctivate" },
    { "<localleader>ob", insert_bash_chunk, desc = "[b]ash code chunk" },
    { "<localleader>oc", "O# %%<cr>", desc = "magic [c]omment code chunk # %%" },
    { "<localleader>od", require("otter").activate, desc = "otter [d]eactivate" },
    { "<localleader>oj", insert_julia_chunk, desc = "[j]ulia code chunk" },
    { "<localleader>ol", insert_lua_chunk, desc = "[l]lua code chunk" },
    { "<localleader>oo", insert_ojs_chunk, desc = "[o]bservable js code chunk" },
    { "<localleader>op", insert_py_chunk, desc = "[p]ython code chunk" },
    { "<localleader>or", insert_r_chunk, desc = "[r] code chunk" },
  },
}, { mode = "n" })

-- Keymaps related to Molten
wk.add({
  {
    { "<localleader>m", group = "[m]olten" },
  },
}, { mode = "n" })
