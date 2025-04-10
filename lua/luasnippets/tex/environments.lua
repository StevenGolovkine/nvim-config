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
local tex_utils = require("luasnippets.tex.utils")

-- Define environments
return {

  s(
    {
      trig = "env",
      desc = "\begin{env} / end{env}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{<>}
          <>
        \end{<>}
      ]],
      { i(1), i(0), rep(1) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "table",
      desc = "\begin{table} / end{table}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
          \begin{table}
            \centering
            \caption{<>}
            \label{tab:<>}
            \begin{tabular}{<>}
              <>
            \end{tabular}
          \end{table}
        ]],
      { i(1), i(2), i(3), i(0) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "fig",
      desc = "\begin{figure} / end{figure}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{figure}
          \centering
          \includegraphics[width=0.8\textwidth]{<>}
          \caption{<>}
          \label{fig:<>}
        \end{figure}
      ]],
      { i(1), i(2), i(3) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "enum",
      desc = "\begin{enumerate} / end{enumerate}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{enumerate}
          \item <>
        \end{enumerate}
      ]],
      { i(0) },
      { delimiters = "<>" }
    )
  ),

  s({
    trig = "ii",
    desc = "Add item in enumerate environments",
    snippetType = "autosnippet",
    condition = tex_utils.in_enumerate,
  }, fmt([[ \item ]], {}, {})),

  s(
    {
      trig = "item",
      desc = "\begin{itemize} / end{itemize}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{itemize}
          \item <>
        \end{itemize}
      ]],
      { i(0) },
      { delimiters = "<>" }
    )
  ),

  s({
    trig = "ii",
    desc = "Add item in itemize environments",
    snippetType = "autosnippet",
    condition = tex_utils.in_itemize,
  }, fmt([[ \item ]], {}, {})),

  s(
    {
      trig = "desc",
      desc = "\begin{description} / end{description}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{description}
          \item[<>] <>
        \end{description}
      ]],
      { i(1), i(0) },
      { delimiters = "<>" }
    )
  ),

  s({
    trig = "ii",
    desc = "Add item in description environments",
    snippetType = "autosnippet",
    condition = tex_utils.in_description,
  }, fmt([[ \item[<>] <> ]], { i(1), i(0) }, { delimiters = "<>" })),

  s(
    {
      trig = "eq",
      desc = "\begin{equation} / end{equation}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{equation}
          <>
        \end{equation}
      ]],
      { i(0) },
      { delimiters = "<>" }
    )
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

  s(
    {
      trig = "dm",
      desc = "Display maths",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \[
          <>
        .\]
      ]],
      { i(0) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "ali",
      desc = "\begin{align} / end{align}",
      snippetType = "autosnippet",
      condition = line_begin,
    },
    fmt(
      [[
        \begin{align}
          <>
        \end{align}
      ]],
      { i(0) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "case",
      desc = "\begin{cases} / end{cases}",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \begin{cases}
          <>
        \end{cases}
      ]],
      { i(0) },
      { delimiters = "<>" }
    )
  ),

  s(
    {
      trig = "cvec",
      desc = "Column vector",
      snippetType = "autosnippet",
      condition = tex_utils.in_mathzone,
    },
    fmt(
      [[
        \begin{pmatrix}
          <> \\
          \vdots \\
          <>
        \end{pmatrix}
      ]],
      { i(1, "x_{1}"), i(2, "x_{n}") },
      { delimiters = "<>" }
    )
  ),
}
