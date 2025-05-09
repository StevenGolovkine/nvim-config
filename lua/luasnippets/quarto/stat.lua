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
local tex_utils = require("luasnippets.quarto.utils")

-- Stat related snippets
return {

  s(
    {
      trig = "EE",
      desc = "Expectation",
      snippettype = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{E}<>
      ]],
      {
        i(0),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "var",
      desc = "Variance",
      snippettype = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathrm{Var}<>
      ]],
      {
        i(0),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "cov",
      desc = "Covariance",
      snippettype = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathrm{Cov}<>  
      ]],
      {
        i(0),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "cor",
      desc = "Correlation",
      snippettype = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathrm{Corr}<>  
      ]],
      {
        i(0),
      },
      { delimiters = "<>" }
    )
  ),

  -- Distributions
  s(
    {
      trig = "loin",
      desc = "Gaussian distribution",
      snippettype = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathcal{N}_{<>}(<>, <>)
      ]],
      {
        i(1),
        i(2),
        i(3),
      },
      { delimiters = "<>" }
    )
  ),
}
