-- ~/.config/nvim/pluign/settings.lua

-- LuaSnip
local ls = require("luasnip")

ls.config.set_config({
  -- Enable autotriggered snippets
  enable_autosnippets = true,

  -- Use Tab to trigger visual selection
  store_selection_keys = "<Tab>",

  -- For text in the repeated node to update
  update_events = "TextChanged, TextChangedI",
})

vim.cmd([[
  " Expand or jump in insert mode
  imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'

  " Jump forward through tabstops in visual mode
  smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

  " Jump backward through snippet tabstops
  imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
  smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'

  " Cycle forward through choice nodes
  imap <silent><expr> <C-f> luasnip#choice_active(-1) ? '<Plug>luasnip-next-choice' : '<C-f>'
  smap <silent><expr> <C-f> luasnip#choice_active(-1) ? '<Plug>luasnip-next-choice' : '<C-f>'
]])

-- Manage snippets
require("luasnip.loaders.from_lua").lazy_load({ paths = { "~/.config/nvim/lua/luasnippets" } })

-- VimTex
vim.cmd([[
  " Trigger continuous compilation
  nmap <localleader>lk <Plug>(vimtex-compile)

  " Trigger single-shot compilation
  noremap <localleader>ll <Cmd>update<CR><Cmd>VimtexCompileSS<CR>

  " Trigger forward-search
  nmap <localleader>lf <Plug>(vimtex-view)

  " Returning focus to Neovim after inverse-search
  function! s:TexFocusVim()  abort
    silent execute "!open -a Ghostty"
    redraw!
  endfunction

  augroup vimtex_event_focus
    au!
    au User VimtexEventViewReverse call s:TexFocusVim()
  augroup END
]])

----
