local M = {}

function M.get(colors)
	return {
		-- base elements
		["@none"] = { link = "none" },
		["@annotation"] = { link = "Annotation" },
		["@attribute"] = { link = "Attribute" },

		-- booleans
		["@boolean"] = { link = "Boolean" },
		["@boolean.true"] = { link = "Boolean" },
		["@boolean.false"] = { link = "Boolean" },

		-- characters
		["@character"] = { link = "Character" },
		["@character.printf"] = { link = "Character" },
		["@character.special"] = { link = "Character" },

		-- comments
		["@comment"] = { link = "Comment" },
		["@comment.error"] = { link = "Error" },
		["@comment.hint"] = { link = "Hint" },
		["@comment.info"] = { link = "Info" },
		["@comment.note"] = { link = "Note" },
		["@comment.todo"] = { link = "Todo" },
		["@comment.warning"] = { link = "Warning" },
		["@comment.documentation"] = { link = "Comment" },

		-- constants
		["@constant"] = { link = "Constant" },
		["@constant.builtin"] = { link = "Builtin" },
		["@constant.macro"] = { link = "Macro" },

		-- constructors
		["@constructor"] = { link = "Constructor" },
		["@constructor.tsx"] = { link = "Constructor" },

		-- diff
		["@diff.delta"] = { link = "DiffAdd" },
		["@diff.minus"] = { link = "DiffDelete" },
		["@diff.plus"] = { link = "DiffChange" },

		-- functions
		["@function"] = { link = "Function" },
		["@function.builtin"] = { link = "Builtin" },
		["@function.call"] = { link = "Function" },
		["@function.macro"] = { link = "Macro" },
		["@function.method"] = { link = "Method" },
		["@function.method.call"] = { link = "Method" },

		-- keywords
		["@keyword"] = { link = "Keyword" },
		["@keyword.conditional"] = { link = "Conditional" },
		["@keyword.debug"] = { link = "Debug" },
		["@keyword.directive"] = { link = "Directive" },
		["@keyword.exception"] = { link = "Exception" },
		["@keyword.function"] = { link = "Function" },
		["@keyword.import"] = { link = "Include" },
		["@keyword.operator"] = { link = "Operator" },
		["@keyword.repeat"] = { link = "Repeat" },
		["@keyword.return"] = { link = "Return" },

		-- types
		["@type"] = { link = "Type" },
		["@type.builtin"] = { link = "TypeBuiltin" },
		["@type.definition"] = { link = "TypeDef" },

		-- variables
		["@variable"] = { link = "Identifier" },
		["@variable.builtin"] = { link = "Special" },
		["@variable.parameter"] = { link = "Parameter" },
		["@variable.member"] = { link = "Field" },

		-- fields & methods
		["@field"] = { link = "Field" },
		["@field.key"] = { link = "Property" },
		["@method"] = { link = "Method" },
		["@method.call"] = { link = "Method" },

		-- text elements
		["@text.literal"] = { link = "String" },
		["@text.reference"] = { link = "Identifier" },
		["@text.title"] = { link = "Title" },
		["@text.todo"] = { link = "Todo" },
		["@text.warning"] = { link = "WarningMsg" },
		["@text.danger"] = { link = "ErrorMsg" },
	}
end

return M
