-- ~/.config/nvim/lua/luasnippets/tex/math.lua

local ls = require("luasnip")
local s = ls.snippet
-- local ms = ls.multi_snippet
-- local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local d = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local get_visual = require("luasnippets.utils").get_visual
local tex_utils = require("luasnippets.markdown.detect-mathzone")

-- Math related snippets
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
      desc = "add bar",
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
      desc = "postfix add bar",
      snippetType = "autosnippet",
      wordtrig = false,
      regtrig = true,
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
      desc = "add hat",
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
      desc = "postfix add hat",
      snippetType = "autosnippet",
      wordtrig = false,
      regtrig = true,
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

  --ms(
  --  {
  --    "(%a+)(%.,)",
  --    "(%a+)(,%.)",
  --    common = {
  --      desc = "postfix add vector",
  --      snippetType = "autosnippet",
  --      wordtrig = false,
  --      regtrig = true,
  --      condition = tex_utils.in_mathzone,
  --    },
  --  },
  --  fmt(
  --    [[
  --      \vec{<>}
  --    ]],
  --    {
  --      f(function(_, snip)
  --        return snip.captures[1]
  --      end),
  --    },
  --    { delimiters = "<>" }
  --  )
  --),

  s(
    {
      trig = "ooo",
      desc = "add infty",
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
      desc = "add sim",
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
      desc = "add dots",
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

  -- s(
  --   {
  --     trig = "=>",
  --     desc = "add implies",
  --     snippetType = "autosnippet",
  --     condition = tex_utils.in_mathzone,
  --   },
  --   fmt(
  --     [[
  --       \implies
  --     ]],
  --     {},
  --     {}
  --   )
  -- ),

  s(
    {
      trig = "=<",
      desc = "add impliedby",
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

  -- s(
  --   {
  --     trig = "->",
  --     desc = "add to",
  --     snippetType = "autosnippet",
  --     condition = tex_utils.in_mathzone,
  --   },
  --   fmt(
  --     [[
  --       \to
  --     ]],
  --     {},
  --     {}
  --   )
  -- ),

  -- s(
  --   {
  --     trig = "<->",
  --     desc = "add leftrightarrow",
  --     snippetType = "autosnippet",
  --     condition = tex_utils.in_mathzone,
  --   },
  --   fmt(
  --     [[
  --       \leftrightarrow
  --     ]],
  --     {},
  --     {}
  --   )
  -- ),

  -- s(
  --   {
  --     trig = "|>",
  --     desc = "add mapsto",
  --     snippetType = "autosnippet",
  --     condition = tex_utils.in_mathzone,
  --   },
  --   fmt(
  --     [[
  --       \mapsto
  --     ]],
  --     {},
  --     {}
  --   )
  -- ),

  s(
    {
      trig = "iff",
      desc = "add iff",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \iff
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "==",
      desc = "equals in align environment",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        &= <> \\
      ]],
      { i(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "!=",
      desc = "not equals",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \neq
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "<=",
      desc = "less or equals",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \leq
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = ">=",
      desc = "greater or equals",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \geq
      ]],
      {},
      {}
    )
  ),

  -- s(
  --   {
  --     trig = ">>",
  --     desc = "much greater than",
  --     snippetType = "autosnippet",
  --     condition = tex_utils.in_mathzone,
  --   },
  --   fmt(
  --     [[
  --       \gg
  --     ]],
  --     {},
  --     {}
  --   )
  -- ),

  s(
    {
      trig = "<<",
      desc = "much lesser than",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \ll
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "ee",
      desc = "it exists",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \exists
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "aa",
      desc = "for all",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \forall
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "lll",
      desc = "\\ell",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \ell
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "nab",
      desc = "\\nabla",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \nabla
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "xx",
      desc = "\\times",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \times
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "**",
      desc = "\\cdot",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \cdot
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "||",
      desc = "\\mid",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mid
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "cc",
      desc = "\\subset",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \subset
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "inn",
      desc = "\\in",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \in
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "notin",
      desc = "\\notin",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \not\in
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "mnn",
      desc = "\\cap",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \cap
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "iuu",
      desc = "\\cup",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \cup
      ]],
      {},
      {}
    )
  ),

  --ms(
  --  {
  --    "(%s)(cos)",
  --    "(%s)(sin)",
  --    "(%s)(arccot)",
  --    "(%s)(cot)",
  --    "(%s)(csc)",
  --    "(%s)(ln)",
  --    "(%s)(log)",
  --    "(%s)(exp)",
  --    "(%s)(star)",
  --    "(%s)(perp)",
  --    "(%s)(arcsin)",
  --    "(%s)(arccos)",
  --    "(%s)(arctan)",
  --    "(%s)(arccot)",
  --    "(%s)(arccsc)",
  --    "(%s)(pi)",
  --    "(%s)(zeta)",
  --    common = {
  --      desc = "apply latex to math",
  --      snippetType = "autosnippet",
  --      wordtrig = false,
  --      regtrig = true,
  --      condition = tex_utils.in_mathzone,
  --    },
  --  },
  --  fmt(
  --    [[
  --      \<>
  --    ]],
  --    {
  --      f(function(_, snip)
  --        return snip.captures[2]
  --      end),
  --    },
  --    { delimiters = "<>" }
  --  )
  --),

  s(
    {
      trig = "ceil",
      desc = "ceil",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left\lceil <> \right\rceil
      ]],
      {
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "floor",
      desc = "floor",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left\lfloor <> \right\rfloor
      ]],
      {
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lr(",
      desc = "left( right)",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left( <> \right)
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lr[",
      desc = "left[ right]",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left[ <> \right]
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lr{",
      desc = "left{ right}",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left{ <> \right}
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lr<",
      desc = "leftangle rightangle",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left\langle <> \right\rangle
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lr|",
      desc = "left| right|",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left| <> \right|
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lr||",
      desc = "left|| right||",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \left\| <> \right\|
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "sum",
      desc = "sum",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \sum_{<> = <>}^{<>} <>
      ]],
      {
        i(1, "i"),
        i(2, "1"),
        i(3, "n"),
        i(4, "x_i"),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "int",
      desc = "Integral",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \int_{<>}^{<>} <> <>
      ]],
      {
        i(1, "0"),
        i(2, "1"),
        d(3, get_visual),
        i(0),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "lim",
      desc = "Limit",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \lim_{<> \to <>} <>
      ]],
      {
        i(1, "n"),
        i(2, "\\infty"),
        i(0),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "prod",
      desc = "Product",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \prod_{<> = <>}^{<>} <>
      ]],
      {
        i(1, "i"),
        i(2, "1"),
        i(3, "n"),
        i(4, "x_i"),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "uuu",
      desc = "bigcup",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \bigcup_{<> \in <>} <>
      ]],
      {
        i(1, "i"),
        i(2, "I"),
        i(3, "x_i"),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "nnn",
      desc = "bigcap",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \bigcap_{<> \in <>} <>
      ]],
      {
        i(1, "i"),
        i(2, "I"),
        i(3, "x_i"),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "part",
      desc = "Partial derivative d/dx",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \frac{\partial <>}{\partial <>}
      ]],
      {
        i(1, "f"),
        i(2, "x"),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "sq",
      desc = "Square root",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \sqrt{<>}
      ]],
      {
        d(1, get_visual),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "tt",
      desc = "Text in math environment",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \text{<>}
      ]],
      {
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  -- Sets
  s(
    {
      trig = "set",
      desc = "Set",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \{ <> \}
      ]],
      {
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "OO",
      desc = "Empty set (varnothing)",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \varnothing
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "RR",
      desc = "Real set",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{{R}}
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "QQ",
      desc = "Rational set",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{{Q}}
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "ZZ",
      desc = "Integer set",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{{Z}}
      ]],
      {},
      {}
    )
  ),

  s(
    {
      trig = "NN",
      desc = "Natural set",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \mathbb{{N}}
      ]],
      {},
      {}
    )
  ),

  -- Subscripts
  s(
    {
      trig = "(%a)(%d)",
      desc = "Auto subscripts",
      snippetType = "autosnippet",
      wordTrig = false,
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>_{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        f(function(_, snip)
          return snip.captures[2]
        end),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "(%a)_(%d%d)",
      desc = "Auto subscripts",
      snippetType = "autosnippet",
      wordTrig = false,
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>_{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        f(function(_, snip)
          return snip.captures[2]
        end),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "(%a)__",
      desc = "Subscripts",
      snippetType = "autosnippet",
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>_{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  -- Superscripts
  s(
    {
      trig = "(%a)^t",
      desc = "Transpose",
      snippetType = "autosnippet",
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>^{\top}
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
      trig = "(%a)^^",
      desc = "Superscripts",
      snippetType = "autosnippet",
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>^{<>}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
        i(1),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "(%a)sr",
      desc = "Square ^{2}",
      snippetType = "autosnippet",
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>^{2}
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
      trig = "(%a)inv",
      desc = "Inverse",
      snippetType = "autosnippet",
      regTrig = true,
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        <>^{-1}
      ]],
      {
        f(function(_, snip)
          return snip.captures[1]
        end),
      },
      { delimiters = "<>" }
    )
  ),
}
