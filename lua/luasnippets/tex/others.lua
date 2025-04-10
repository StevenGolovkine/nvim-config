-- ~/.config/nvim/lua/luasnippets/tex/general.lua

local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

-- Define general commands
return {

  s(
    {
      trig = "pac",
      desc = "usepackage{}{}",
    },
    fmt(
      [[
        \usepackage[<>]{<>}
      ]],
      {
        i(1, "options"),
        i(2, "package"),
      },
      { delimiters = "<>" }
    )
  ),
}
