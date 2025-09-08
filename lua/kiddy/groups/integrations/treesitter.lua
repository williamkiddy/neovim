local M = {}

function M.get(colors)
	return {
		-- Base elements
		["@none"] = { link = "None" },
		["@annotation"] = { link = "Identifier" },
		["@attribute"] = { link = "PreProc" },

		-- Booleans
		["@boolean"] = { link = "Boolean" },
		["@boolean.true"] = { link = "Boolean" },
		["@boolean.false"] = { link = "Boolean" },

		-- Characters
		["@character"] = { link = "Character" },
		["@character.printf"] = { link = "SpecialChar" },
		["@character.special"] = { link = "SpecialChar" },

		-- Comments
		["@comment"] = { link = "Comment" },
		["@comment.error"] = { link = "Error" },
		["@comment.hint"] = { link = "Hint" },
		["@comment.info"] = { link = "Info" },
		["@comment.note"] = { link = "Note" },
		["@comment.todo"] = { link = "Todo" },
		["@comment.warning"] = { link = "Warning" },
		["@comment.documentation"] = { link = "Comment" },

		-- Constants
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { link = "Special" },
		["@constant.macro"] = { link = "Define" },

		-- Constructors
		["@constructor"] = { link = "Function" },
		["@constructor.tsx"] = { link = "Function" },

		-- Diff
		["@diff.delta"] = { link = "DiffChange" },
		["@diff.minus"] = { link = "DiffDelete" },
		["@diff.plus"] = { link = "DiffAdd" },

		-- Functions
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Special" },
		["@function.call"] = { link = "Function" },
		["@function.macro"] = { link = "Define" },
		["@function.method"] = { link = "Function" },
		["@function.method.call"] = { link = "Function" },

		-- Keywords
		["@keyword"] = { link = "Keyword" },
		["@keyword.conditional"] = { link = "Conditional" },
		["@keyword.debug"] = { link = "Debug" },
		["@keyword.directive"] = { link = "PreProc" },
		["@keyword.exception"] = { link = "Exception" },
		["@keyword.function"] = { link = "Function" },
		["@keyword.import"] = { link = "Include" },
		["@keyword.operator"] = { link = "Operator" },
		["@keyword.repeat"] = { link = "Repeat" },
		["@keyword.return"] = { link = "Return" },

		-- Labels & markup
		["@label"] = { link = "Label" },
		["@markup"] = { link = "None" },
		["@markup.emphasis"] = { link = "Italic" },
		["@markup.heading"] = { link = "Title" },
		["@markup.link"] = { link = "Underlined" },
		["@markup.raw"] = { link = "None" },
		["@markup.strong"] = { link = "Bold" },
		["@markup.underline"] = { link = "Underlined" },

		-- Modules & namespaces
		["@module"] = { link = "Include" },
		["@module.builtin"] = { link = "Special" },
		["@namespace"] = { link = "Namespace" },
		["@namespace.builtin"] = { link = "Special" },

		-- Numbers
		["@number"] = { link = "Number" },
		["@number.float"] = { link = "Float" },
		["@number.binary"] = { link = "Number" },
		["@number.hex"] = { link = "Number" },

		-- Operators
		["@operator"] = { link = "Operator" },
		["@property"] = { link = "Identifier" },
		["@punctuation.bracket"] = { link = "Delimiter" },
		["@punctuation.delimiter"] = { link = "Delimiter" },
		["@punctuation.special"] = { link = "Delimiter" },

		-- Strings
		["@string"] = { link = "String" },
		["@string.documentation"] = { link = "Comment" },
		["@string.escape"] = { link = "SpecialChar" },
		["@string.regexp"] = { link = "String" },

		-- Tags
		["@tag"] = { link = "Tag" },
		["@tag.attribute"] = { link = "Identifier" },
		["@tag.delimiter"] = { link = "Delimiter" },

		-- Types
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "Special" },
		["@type.definition"] = { link = "Type" },

		-- Variables
		["@variable"] = { link = "Identifier" },
		["@variable.builtin"] = { link = "Special" },
		["@variable.parameter"] = { link = "Identifier" },
		["@variable.member"] = { link = "Identifier" },

		-- Fields & methods
		["@field"] = { link = "Identifier" },
		["@field.key"] = { link = "Identifier" },
		["@method"] = { link = "Function" },
		["@method.call"] = { link = "Function" },

		-- Text elements
		["@text.literal"] = { link = "String" },
		["@text.reference"] = { link = "Underlined" },
		["@text.title"] = { link = "Title" },
		["@text.todo"] = { link = "Todo" },
		["@text.warning"] = { link = "WarningMsg" },
		["@text.danger"] = { link = "ErrorMsg" },
	}
end

return M
