-- ~/.config/nvim/lua/luasnippets/tex/siunitx.lua

local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- For siunitx package
return {

  s(
    {
      trig = "SI",
      desc = "The siunitx package's SI{}{} command",
    },
    fmt(
      [[
        \SI{<>}{<>}
      ]],
      {
        i(1, "number"),
        i(2, "units"),
      },
      { delimiters = "<>" }
    )
  ),
}
