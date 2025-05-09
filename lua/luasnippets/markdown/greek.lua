-- ~/.config/nvim/lua/luasnip/tex/greek.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

-- Greek letter snippets, autotriggered for efficiency
return {

  s({ trig = ";G", snippetType = "autosnippet", hidden = true }, { t("\\Gamma") }),
  s({ trig = ";D", snippetType = "autosnippet", hidden = true }, { t("\\Delta") }),
  s({ trig = ";L", snippetType = "autosnippet", hidden = true }, { t("\\Lambda") }),
  s({ trig = ";F", snippetTYpe = "autosnippet", hidden = true }, { t("\\Phi") }),
  s({ trig = ";P", snippetType = "autosnippet", hidden = true }, { t("\\Pi") }),
  s({ trig = ";C", snippetType = "autosnippet", hidden = true }, { t("\\Psi") }),
  s({ trig = ";S", snippetType = "autosnippet", hidden = true }, { t("\\Sigma") }),
  s({ trig = ";Th", snippetType = "autosnippet", hidden = true }, { t("\\Theta") }),
  s({ trig = ";Y", snippetType = "autosnippet", hidden = true }, { t("\\Upsilon") }),
  s({ trig = ";J", snippetType = "autosnippet", hidden = true }, { t("\\Xi") }),
  s({ trig = ";O", snippetType = "autosnippet", hidden = true }, { t("\\Omega") }),

  s({ trig = ";a", snippetType = "autosnippet", hidden = true }, { t("\\alpha") }),
  s({ trig = ";b", snippetType = "autosnippet", hidden = true }, { t("\\beta") }),
  s({ trig = ";g", snippetType = "autosnippet", hidden = true }, { t("\\gamma") }),
  s({ trig = ";d", snippetType = "autosnippet", hidden = true }, { t("\\delta") }),
  s({ trig = ";e", snippetType = "autosnippet", hidden = true }, { t("\\epsilon") }),
  s({ trig = ";z", snippetType = "autosnippet", hidden = true }, { t("\\zeta") }),
  s({ trig = ";h", snippetType = "autosnippet", hidden = true }, { t("\\eta") }),
  s({ trig = ";th", snippetType = "autosnippet", hidden = true }, { t("\\theta") }),
  s({ trig = ";i", snippetType = "autosnippet", hidden = true }, { t("\\iota") }),
  s({ trig = ";k", snippetType = "autosnippet", hidden = true }, { t("\\kappa") }),
  s({ trig = ";l", snippetType = "autosnippet", hidden = true }, { t("\\lambda") }),
  s({ trig = ";m", snippetType = "autosnippet", hidden = true }, { t("\\mu") }),
  s({ trig = ";n", snippetType = "autosnippet", hidden = true }, { t("\\nu") }),
  s({ trig = ";j", snippetType = "autosnippet", hidden = true }, { t("\\xi") }),
  s({ trig = ";p", snippetType = "autosnippet", hidden = true }, { t("\\pi") }),
  s({ trig = ";r", snippetType = "autosnippet", hidden = true }, { t("\\rho") }),
  s({ trig = ";s", snippetType = "autosnippet", hidden = true }, { t("\\sigma") }),
  s({ trig = ";t", snippetType = "autosnippet", hidden = true }, { t("\\alpha") }),
  s({ trig = ";y", snippetType = "autosnippet", hidden = true }, { t("\\tau") }),
  s({ trig = ";f", snippetType = "autosnippet", hidden = true }, { t("\\phi") }),
  s({ trig = ";x", snippetType = "autosnippet", hidden = true }, { t("\\xhi") }),
  s({ trig = ";c", snippetType = "autosnippet", hidden = true }, { t("\\psi") }),
  s({ trig = ";o", snippetType = "autosnippet", hidden = true }, { t("\\omega") }),
  s({ trig = ";dg", snippetType = "autosnippet", hidden = true }, { t("\\digamma") }),
  s({ trig = ";ve", snippetType = "autosnippet", hidden = true }, { t("\\varepsilon") }),
  s({ trig = ";vf", snippetType = "autosnippet", hidden = true }, { t("\\varphi") }),
  s({ trig = ";vp", snippetType = "autosnippet", hidden = true }, { t("\\varpsi") }),
  s({ trig = ";vr", snippetType = "autosnippet", hidden = true }, { t("\\varrho") }),
  s({ trig = ";vs", snippetType = "autosnippet", hidden = true }, { t("\\varsigma") }),
  s({ trig = ";vt", snippetType = "autosnippet", hidden = true }, { t("\\vartheta") }),
}
