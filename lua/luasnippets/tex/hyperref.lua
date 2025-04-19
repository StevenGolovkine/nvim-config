-- ~/.config/nvim/lua/luasnippets/tex/hyperref.lua

local ls = require("luasnip")
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt
-- local rep = require("luasnip.extras").rep

-- For hyperref package
return {

  s(
    {
      trig = "hr",
      desc = "The hyperref package's href{}{} command (for url links)",
    },
    fmt(
      [[
        \href{<>}{<>}
      ]],
      {
        i(1, "url"),
        i(2, "display name"),
      },
      { delimiters = "<>" }
    )
  ),
}
