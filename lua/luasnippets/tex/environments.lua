-- ~/.config/nvim/lua/luasnippets/tex/environments.lua

local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local f = ls.function_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep
local line_begin = require("luasnip.extras.expand_conditions").line_begin
local get_visual = require("luasnippets.utils").get_visual

-- Define environments
return {

  s(
    {
      trig = "env",
      desc = "\begin{env} / end{env}",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { i(1), i(2), rep(1) },
      { delimiters = "<>" }
    ),
    { condition = line_begin }
  ),

  s(
    {
      trig = "eq",
      desc = "\begin{equation} / end{equation}",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(1) },
      { delimiters = "<>" }
    ),
    { condition = line_begin }
  ),

  s(
    {
      trig = "([^%a])mm",
      desc = "Inline maths",
      wordTrig = false,
      regTrig = true,
      snippetType = "autosnippet",
    },
    fmt("<>$<>$", {
      f(function(_, snip)
        return snip.captures[1]
      end),
      d(1, get_visual),
    }, { delimiters = "<>" })
  ),
}
