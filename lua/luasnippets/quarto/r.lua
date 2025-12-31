-- ~/.config/nvim/lua/luasnippets/quarto/r.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {

  -- Pipe operator
  s({ trig = "\\s", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("|>") }),

  -- Assignment operator
  s({ trig = "\\a", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("<-") }),
}
