-- ~/.config/nvim/lua/luasnippets/tex/math.lua

local ls = require("luasnip")
local s = ls.snippet
local ms = ls.multi_snippet
-- local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local get_visual = require("luasnippets.utils").get_visual
local tex_utils = require("luasnippets.tex.utils")

-- Math elated snippets
return {

  s(
    {
      trig = "ff",
      desc = "\frac{}{}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
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
    )
  ),

  s(
    {
      trig = "ff",
      desc = "\frac{}{} in visual mode",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
      priority = 10000,
    },
    fmt(
      [[
        \frac{<>}{<>}
      ]],
      {
        d(1, get_visual),
        i(2),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "bar",
      desc = "Add bar",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \overline{<>}
      ]],
      {
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "(%a+)bar",
      desc = "Postfix add bar",
      snippetType = "autosnippet",
      wordTrig = false,
      regTrig = true,
      condition = tex_utils.in_mathzone,
      priority = 10000,
    },
    fmt(
      [[
        \overline{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "hat",
      desc = "Add hat",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \widehat{<>}
      ]],
      {
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "(%a+)hat",
      desc = "Postfix add hat",
      snippetType = "autosnippet",
      wordTrig = false,
      regTrig = true,
      condition = tex_utils.in_mathzone,
      priority = 10000,
    },
    fmt(
      [[
        \widehat{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
      },
      { delimiters = "<>" }
    )
  ),

  ms(
    {
      "(%a+)(%.,)",
      "(%a+)(,%.)",
      common = {
        desc = "Postfix add vector",
        snippetType = "autosnippet",
        wordTrig = false,
        regTrig = true,
        condition = tex_utils.in_mathzone,
      },
    },
    fmt(
      [[
        \vec{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "ooo",
      desc = "Add infty",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \infty
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "~~",
      desc = "Add sim",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \sim
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "...",
      desc = "Add dots",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \dots
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "=>",
      desc = "Add implies",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \implies
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "=<",
      desc = "Add impliedby",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \impliedby
      ]],
      {},
      {}
    )
  ),
}
