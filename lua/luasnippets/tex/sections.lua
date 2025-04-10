-- ~/.config/nvim/lua/luasnippets/tex/sections.lua

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin

-- Define sections
return {

  s(
    {
      trig = "h1",
      desc = "Section",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \section{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    ),
    { condition = line_begin }
  ),

  s(
    {
      trig = "h2",
      desc = "Subsection",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \subsection{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    ),
    { condition = line_begin }
  ),

  s(
    {
      trig = "h3",
      desc = "Subsubsection",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \subsubsection{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    ),
    { condition = line_begin }
  ),
}
