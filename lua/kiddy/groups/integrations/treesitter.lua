local m = {}

function m.get(colors)
	return {
		-- base elements
		["@none"] = { link = "none" },
		["@annotation"] = { fg = colors.sec1 },
		["@attribute"] = { fg = colors.sec2 },

		-- booleans
		["@boolean"] = { fg = colors.sec3, bold = true },
		["@boolean.true"] = { fg = colors.sec3, bold = true },
		["@boolean.false"] = { fg = colors.sec3, bold = true },

		-- characters
		["@character"] = { fg = colors.sec4 },
		["@character.printf"] = { fg = colors.sec4 },
		["@character.special"] = { fg = colors.sec4 },

		-- comments
		["@comment"] = { fg = colors.sec5, italic = true },
		["@comment.error"] = { fg = colors.sec1, bold = true },
		["@comment.hint"] = { fg = colors.sec6 },
		["@comment.info"] = { fg = colors.sec7 },
		["@comment.note"] = { fg = colors.sec8 },
		["@comment.todo"] = { fg = colors.fruit1, bold = true },
		["@comment.warning"] = { fg = colors.fruit2, bold = true },
		["@comment.documentation"] = { fg = colors.sec5 },

		-- constants
		["@constant"] = { fg = colors.sec9 },
		["@constant.builtin"] = { fg = colors.sec10 },
		["@constant.macro"] = { fg = colors.sec11 },

		-- constructors
		["@constructor"] = { fg = colors.sec12 },
		["@constructor.tsx"] = { fg = colors.sec12 },

		-- diff
		["@diff.delta"] = { fg = colors.fruit3 },
		["@diff.minus"] = { fg = colors.fruit1 },
		["@diff.plus"] = { fg = colors.fruit2 },

		-- functions
		["@function"] = { fg = colors.sec13 },
		["@function.builtin"] = { fg = colors.sec14 },
		["@function.call"] = { fg = colors.sec13 },
		["@function.macro"] = { fg = colors.sec15 },
		["@function.method"] = { fg = colors.sec13 },
		["@function.method.call"] = { fg = colors.sec13 },

		-- keywords
		["@keyword"] = { fg = colors.sec1, bold = true },
		["@keyword.conditional"] = { fg = colors.sec2, bold = true },
		["@keyword.debug"] = { fg = colors.sec3 },
		["@keyword.directive"] = { fg = colors.sec4 },
		["@keyword.exception"] = { fg = colors.sec5, bold = true },
		["@keyword.function"] = { fg = colors.sec6 },
		["@keyword.import"] = { fg = colors.sec7 },
		["@keyword.operator"] = { fg = colors.sec8 },
		["@keyword.repeat"] = { fg = colors.sec9 },
		["@keyword.return"] = { fg = colors.sec10 },

		-- types
		["@type"] = { fg = colors.sec11 },
		["@type.builtin"] = { fg = colors.sec12 },
		["@type.definition"] = { fg = colors.sec13 },

		-- variables
		["@variable"] = { fg = colors.sec14 },
		["@variable.builtin"] = { fg = colors.sec15 },
		["@variable.parameter"] = { fg = colors.sec1 },
		["@variable.member"] = { fg = colors.sec2 },

		-- fields & methods
		["@field"] = { fg = colors.sec3 },
		["@field.key"] = { fg = colors.sec4 },
		["@method"] = { fg = colors.sec5 },
		["@method.call"] = { fg = colors.sec6 },

		-- text elements
		["@text.literal"] = { fg = colors.sec7 },
		["@text.reference"] = { fg = colors.sec8, underline = true },
		["@text.title"] = { fg = colors.def2, bold = true },
		["@text.todo"] = { fg = colors.todo, bold = true },
		["@text.warning"] = { fg = colors.warning, bold = true },
		["@text.danger"] = { fg = colors.warn, bold = true },
	}
end

return m
