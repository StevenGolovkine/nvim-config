-- ~/.config/nvim/lua/luasnippets/tex/fonts.lua

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local get_visual = require("luasnippets.utils").get_visual

-- Change of fonts
return {

  s(
    {
      trig = "tt",
      desc = "\texttt{}",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \texttt{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "vtt",
      desc = "\texttt{} in visual mode",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \texttt{<>}
      ]],
      { d(1, get_visual) },
      { delimiters = "<>" }
    )
  ),
}
