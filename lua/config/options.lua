-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.opt.colorcolumn = "80"
vim.opt.linebreak = true

vim.cmd([[
    highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
  ]])

-- Proper colors
vim.opt.termguicolors = true

-- Python
vim.g.lazyvim_python_lsp = "pyright"
vim.g.lazyvim_python_ruff = "ruff"
