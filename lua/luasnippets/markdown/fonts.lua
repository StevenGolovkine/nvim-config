-- ~/.config/nvim/lua/luasnippets/tex/fonts.lua

local ls = require("luasnip")
local s = ls.snippet
-- local sn = ls.snippet_node
-- local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local get_visual = require("luasnippets.utils").get_visual
local tex_utils = require("luasnippets.markdown.utils")

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

  s(
    {
      trig = "it",
      desc = "\textit{}",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \textit{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "vit",
      desc = "\textit{} in visual mode",
      snippetType = "autosnippet",
    },
    fmt(
      [[
        \textit{<>}
      ]],
      { d(1, get_visual) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "mcal",
      desc = "mathcal{}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathcal{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "vmcal",
      desc = "mathcal{} in visual mode",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathcal{<>}
      ]],
      { d(1, get_visual) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "mbb",
      desc = "mathbb{}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "vmbb",
      desc = "mathbb{} in visual mode",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{<>}
      ]],
      { d(1, get_visual) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "mfrak",
      desc = "mathfrak{}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathfrak{<>}
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "vmfrak",
      desc = "mathfrak{} in visual mode",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathfrak{<>}
      ]],
      { d(1, get_visual) },
      { delimiters = "<>" }
    )
  ),
}
