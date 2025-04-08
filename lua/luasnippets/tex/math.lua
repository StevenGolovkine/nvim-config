-- ~/.config/nvim/lua/luasnippets/tex/math.lua

local ls = require("luasnip")
local s = ls.snippet
-- local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local tex_utils = require("luasnippets.tex.utils")

-- Math elated snippets
return {

  s(
    {
      trig = "//",
      desc = "\frac{}{}",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \frac{<>}{<>}
      ]],
      {
        i(1),
        i(2),
      },
      { delimiters = "<>" }
    ),
    { condition = tex_utils.in_mathzone }
  ),
}
