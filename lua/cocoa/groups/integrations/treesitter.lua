local M = {}

function M.get(colors, options)
	return {
		-- base elements
		["@none"]                         = { link = "none" },
		["@annotation"]                   = { link = "PreProc" },
		["@attribute"]                    = { link = "PreProc" },

		-- booleans
		["@boolean"]                      = { link = "Boolean" },
		["@boolean.true"]                 = { link = "Boolean" },
		["@boolean.false"]                = { link = "Boolean" },

		-- characters
		["@character"]                    = { link = "Character" },
		["@character.printf"]             = { link = "SpeacialChar" },
		["@character.special"]            = { link = "SpecialChar" },

		-- comments
		["@comment"]                      = { link = "Comment" },
		["@comment.error"]                = { link = "Error" },
		["@comment.hint"]                 = { fg = colors.hint },
		["@comment.info"]                 = { fg = colors.info },
		["@comment.note"]                 = { link = "Note" },
		["@comment.todo"]                 = { link = "Todo" },
		["@comment.warning"]              = { link = colors.warning },
		["@comment.documentation"]        = { link = "Comment" },

		-- constants
		["@constant"]                     = { link = "Constant" },
		["@constant.builtin"]             = { link = "Special" },
		["@constant.macro"]               = { link = "Define" },

		-- constructors
		["@constructor"]                  = { fg = colors.def6 },
		["@constructor.tsx"]              = { link = "PreProc" },

		-- diff
		["@diff.delta"]                   = { link = "DiffChange" },
		["@diff.minus"]                   = { link = "DiffDelete" },
		["@diff.plus"]                    = { link = "DiffAdd" },

		-- functions
		["@function"]                     = { link = "Function" },
		["@function.builtin"]             = { link = "Special" },
		["@function.call"]                = { link = "@Function" },
		["@function.macro"]               = { link = "Macro" },
		["@function.method"]              = { link = "Function" },
		["@function.method.call"]         = { link = "@function.method" },

		-- keywords
		["@keyword"]                      = { link = "Keyword" },
		["@keyword.conditional"]          = { link = "Conditional" },
		["@keyword.debug"]                = { link = "Debug" },
		["@keyword.directive"]            = { link = "PreProc" },
		["@keyword.exception"]            = { link = "Exception" },
		["@keyword.function"]             = { link = "Function" },
		["@keyword.import"]               = { link = "Include" },
		["@keyword.operator"]             = { link = "@operator" },
		["@keyword.repeat"]               = { link = "Repeat" },
		["@keyword.return"]               = { link = "Return" },
		["@keyword.storage"]              = { link = "StorageClass" },

		-- markups
		["@markup"]                       = { link = "@none" },
		["@markup.emphasis"]              = { italic = true },
		["@markup.environment"]           = { link = "Macro" },
		["@markup.environment.name"]      = { link = "Type" },
		["@markup.heading"]               = { link = "Title" },
		["@markup.italic"]                = { italic = true },
		["@markup.link"]                  = { fg = colors.def4 },
		["@markup.link.label"]            = { link = "SpecialChar" },
		["@markup.link.label.symbol"]     = { link = "Identifier" },
		["@markup.link.url"]              = { link = "Underlined" },
		["@markup.list"]                  = { fg = colors.tone2 },                        -- For special punctutation that does not fall in the categories before.
		["@markup.list.checked"]          = { fg = colors.named[options.themeconf].green }, -- For brackets and parens.
		["@markup.list.markdown"]         = { fg = colors.named[options.themeconf].orange, bold = true },
		["@markup.list.unchecked"]        = { fg = colors.named[options.themeconf].blue }, -- For brackets and parens.
		["@markup.math"]                  = { link = "Special" },
		["@markup.raw"]                   = { link = "String" },
		["@markup.raw.markdown_inline"]   = { bg = colors.bg_visual, fg = colors.named[options.themeconf].blue },
		["@markup.strikethrough"]         = { strikethrough = true },
		["@markup.strong"]                = { bold = true },
		["@markup.underline"]             = { underline = true },

		-- others
		["@module"]                       = { link = "Include" },
		["@module.builtin"]               = { fg = colors.named[options.themeconf].red }, -- Variable names that are defined by the languages, like `this` or `self`.
		["@namespace.builtin"]            = { link = "@variable.builtin" },
		["@number"]                       = { link = "Number" },
		["@number.float"]                 = { link = "Float" },
		["@operator"]                     = { link = "Opterator" },                        -- For any operator: `+`, but also `->` and `*` in C.
		["@property"]                     = { fg = colors.named[options.themeconf].green },
		["@punctuation.bracket"]          = { fg = colors.fg_dark },                       -- For brackets and parens.
		["@punctuation.delimiter"]        = { fg = colors.named[options.themeconf].blue }, -- For delimiters ie: `.`
		["@punctuation.special"]          = { fg = colors.tone2 },                         -- For special symbols (e.g. `{}` in string interpolation)
		["@punctuation.special.markdown"] = { fg = colors.named[options.themeconf].orange }, -- For special symbols (e.g. `{}` in string interpolation)

		-- strings
		["@string"]                       = { link = "String" },
		["@string.documentation"]         = { fg = colors.named[options.themeconf].yellow },
		["@string.escape"]                = { fg = colors.named[options.themeconf].magenta }, -- For escape characters within a string.
		["@string.regexp"]                = { fg = colors.accent6 },                        -- For regexes.

		-- tags
		["@tag"]                          = { link = "Label" },
		["@tag.attribute"]                = { link = "@property" },
		["@tag.delimiter"]                = { link = "Delimiter" },
		["@tag.delimiter.tsx"]            = { fg = colors.named[options.themeconf].yellow },
		["@tag.tsx"]                      = { fg = colors.named[options.themeconf].red },
		["@tag.javascript"]               = { fg = colors.named[options.themeconf].red },

		-- types
		["@type"]                         = { link = "Type" },
		["@type.builtin"]                 = { link = "TypeBuiltin" },
		["@type.definition"]              = { link = "TypeDef" },
		["@type.qualifier"]               = { link = "@keyword" },

		-- variables
		["@variable"]                     = { link = "Identifier" },
		["@variable.builtin"]             = { link = "Special" },
		["@variable.member"]              = { link = "Field" },
		["@variable.parameter"]           = { link = "Parameter" },
		["@variable.parameter.builtin"]   = { fg = colors.named[options.themeconf].yellow }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

		-- fields & methods
		["@field"]                        = { link = "Field" },
		["@field.key"]                    = { link = "Property" },
		["@method"]                       = { link = "Method" },
		["@method.call"]                  = { link = "Method" },

		-- text elements
		["@text.literal"]                 = { link = "String" },
		["@text.reference"]               = { link = "Identifier" },
		["@text.title"]                   = { link = "Title" },
		["@text.todo"]                    = { link = "Todo" },
		["@text.warning"]                 = { link = "WarningMsg" },
		["@text.danger"]                  = { link = "ErrorMsg" },
	}
end

return M
