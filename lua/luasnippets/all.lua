-- ~/.config/nvim/luasnip/all.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {

  -- French accent
  s({ trig = "'e", snippetType = "autosnippet", hidden = true }, { t("é") }),
  s({ trig = "`e", snippetType = "autosnippet", hidden = true }, { t("è") }),
  s({ trig = "`a", snippetType = "autosnippet", hidden = true }, { t("à") }),
  s({ trig = "`u", snippetType = "autosnippet", hidden = true }, { t("ù") }),
  s({ trig = "^a", snippetType = "autosnippet", hidden = true }, { t("â") }),
  s({ trig = "^e", snippetType = "autosnippet", hidden = true }, { t("ê") }),
  s({ trig = "^i", snippetType = "autosnippet", hidden = true }, { t("î") }),
  s({ trig = "^o", snippetType = "autosnippet", hidden = true }, { t("ô") }),
  s({ trig = "^u", snippetType = "autosnippet", hidden = true }, { t("û") }),
  s({ trig = '"e', snippetType = "autosnippet", hidden = true }, { t("ë") }),
  s({ trig = '"i', snippetType = "autosnippet", hidden = true }, { t("ï") }),
  s({ trig = '"u', snippetType = "autosnippet", hidden = true }, { t("ü") }),

  s({ trig = "'E", snippetType = "autosnippet", hidden = true }, { t("É") }),
  s({ trig = "`E", snippetType = "autosnippet", hidden = true }, { t("È") }),
  s({ trig = "`A", snippetType = "autosnippet", hidden = true }, { t("À") }),
  s({ trig = "`U", snippetType = "autosnippet", hidden = true }, { t("Ù") }),
  s({ trig = "^A", snippetType = "autosnippet", hidden = true }, { t("Â") }),
  s({ trig = "^E", snippetType = "autosnippet", hidden = true }, { t("Ê") }),
  s({ trig = "^I", snippetType = "autosnippet", hidden = true }, { t("Î") }),
  s({ trig = "^O", snippetType = "autosnippet", hidden = true }, { t("Ô") }),
  s({ trig = "^U", snippetType = "autosnippet", hidden = true }, { t("Û") }),
  s({ trig = '"E', snippetType = "autosnippet", hidden = true }, { t("Ë") }),
  s({ trig = '"I', snippetType = "autosnippet", hidden = true }, { t("Ï") }),
  s({ trig = '"U', snippetType = "autosnippet", hidden = true }, { t("Ü") }),
}
