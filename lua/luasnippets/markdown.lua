-- ~/.config/nvim/luasnip/all.lua

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node

return {

  -- French accent
  s({ trig = "'e", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("é") }),
  s({ trig = "`e", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("è") }),
  s({ trig = "`a", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("à") }),
  s({ trig = "`u", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("ù") }),
  s({ trig = "^a", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("â") }),
  s({ trig = "^e", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("ê") }),
  s({ trig = "^i", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("î") }),
  s({ trig = "^o", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("ô") }),
  s({ trig = "^u", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("û") }),
  s({ trig = '"e', snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("ë") }),
  s({ trig = '"i', snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("ï") }),
  s({ trig = '"u', snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("ü") }),

  s({ trig = "'E", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("É") }),
  s({ trig = "`E", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("È") }),
  s({ trig = "`A", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("À") }),
  s({ trig = "`U", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Ù") }),
  s({ trig = "^A", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Â") }),
  s({ trig = "^E", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Ê") }),
  s({ trig = "^I", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Î") }),
  s({ trig = "^O", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Ô") }),
  s({ trig = "^U", snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Û") }),
  s({ trig = '"E', snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Ë") }),
  s({ trig = '"I', snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Ï") }),
  s({ trig = '"U', snippetType = "autosnippet", hidden = true, wordTrig = false }, { t("Ü") }),
}
