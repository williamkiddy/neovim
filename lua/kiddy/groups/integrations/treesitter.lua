local U = require("kiddy.utils")

local M = {}

function M.get(colors, options)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = { link = "PreProc"},
    ["@attribute"]                  = { link = "PreProc"},
    ["@boolean"]                    = { link = "Boolean"},
    ["@character"]                  = { link = "Character"},
    ["@character.printf"]           = { link = "SpecialChar"},
    ["@character.special"]          = { link = "SpecialChar"},
    ["@comment"]                    = { link = "Comment" },
    ["@comment.error"]              = { fg =colors.error },
    ["@comment.hint"]               = { fg =colors.hint },
    ["@comment.info"]               = { fg =colors.info },
    ["@comment.note"]               = { fg =colors.hint },
    ["@comment.todo"]               = { fg =colors.todo },
    ["@comment.warning"]            = { fg =colors.warning },
    ["@constant"]                   = { link = "Constant"},
    ["@constant.builtin"]           = { link = "Special"},
    ["@constant.macro"]             = { link = "Define"},
    ["@constructor"]                = { fg =colors.tone1 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@constructor.tsx"]            = { fg =colors.tone6},
    ["@diff.delta"]                 = { link = "DiffChange"},
    ["@diff.minus"]                 = { link = "DiffDelete"},
    ["@diff.plus"]                  = { link = "DiffAdd"},
    ["@function"]                   = { link = "Function"},
    ["@function.builtin"]           = { link = "Special"},
    ["@function.call"]              = { link = "@function"},
    ["@function.macro"]             = { link = "Macro" },
    ["@function.method"]            = { link = "Function"},
    ["@function.method.call"]       = { link = "@function.method"},
    ["@keyword"]                    = { fg =colors.tone1 },
    ["@keyword.conditional"]        = { link = "Conditional"},
    ["@keyword.coroutine"]          = { link = "@keyword"},
    ["@keyword.debug"]              = { link = "Debug"},
    ["@keyword.directive"]          = { link = "PreProc"},
    ["@keyword.directive.define"]   = { link = "Define"},
    ["@keyword.exception"]          = { link = "Exception"},
    ["@keyword.function"]           = { fg =colors.tone1 },
    ["@keyword.import"]             = { link = "Include"},
    ["@keyword.operator"]           = { link = "@operator"},
    ["@keyword.repeat"]             = { link = "Repeat"},
    ["@keyword.return"]             = { link = "@keyword" },
    ["@keyword.storage"]            = { link = "StorageClass" },
    ["@label"]                      = { fg =colors.tone6 }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = { link = "@none"},
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = { link = "Macro"},
    ["@markup.environment.name"]    = { link = "Type" },
    ["@markup.heading"]             = { link = "Title"},
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg =colors.def8 },
    ["@markup.link.label"]          = { link = "SpecialChar" },
    ["@markup.link.label.symbol"]   = { link = "Identifier" },
    ["@markup.link.url"]            = { link = "Underlined" },
    ["@markup.list"]                = { fg =colors.tone0 }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg =colors.def8 }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg =colors.tone8, bold = true },
    ["@markup.list.unchecked"]      = { fg =colors.tone6 }, -- For brackets and parens.
    ["@markup.math"]                = { link = "Special"},
    ["@markup.raw"]                 = { link ="String" },
    ["@markup.raw.markdown_inline"] = { bg =colors.bg_dark, fg = colors.base4 },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = { link = "Include"},
    ["@module.builtin"]             = { fg =colors.red }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"]          = { link = "@variable.builtin" },
    -- ["@none"]                       = {},
    ["@number"]                     = { link = "Number"},
    ["@number.float"]               = { link = "Float"},
    ["@operator"]                   = { fg =colors.tone6 }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"]                   = { fg =colors.tone2 },
    ["@punctuation.bracket"]        = { fg =colors.def5 }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg =colors.def4 }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg =colors.def4 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg =colors.def8 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = { link = "String" },
    ["@string.documentation"]       = { fg =colors.def2 },
    ["@string.escape"]              = { fg =colors.def5 }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg =colors.tone6 }, -- For regexes.
    ["@tag"]                        = { link = "Label"},
    ["@tag.attribute"]              = { link = "@property"},
    ["@tag.delimiter"]              = { link = "Delimiter"},
    ["@tag.delimiter.tsx"]          = { fg = U.blend(colors.def4,colors.bg, 0.7) },
    ["@tag.tsx"]                    = { fg =colors.def0 },
    ["@tag.javascript"]             = { fg =colors.def0 },
    ["@type"]                       = { link = "Type"},
    ["@type.builtin"]               = { fg = U.blend(colors.def4,colors.bg, 0.8) },
    ["@type.definition"]            = { link = "Typedef"},
    ["@type.qualifier"]             = { link = "@keyword"},
    ["@variable"]                   = { fg =colors.fg }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg =colors.sec3 }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg =colors.sec2 }, -- For fields.
    ["@variable.parameter"]         = { fg =colors.def2 }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = U.blend(colors.base4,colors.bg, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
  }

	for i, colors_i in ipairs(ret) do
		ret["@markup.heading." .. i .. ".markdown"] = { fg = colors_i, bold = true }
	end
	return ret
end

return M
