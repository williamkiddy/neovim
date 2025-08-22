local M = {}

function M.get(colors, options)
	local ret = {
		-- Base elements
		["@none"] = { link = "None" },
		["@annotation"] = { fg = colors.accent1 },
		["@attribute"] = { fg = colors.accent1 },
		["@boolean"] = { fg = colors.hue3, bold = true }, -- Bright amber for booleans
		["@character"] = { fg = colors.sec4 }, -- Sage green for characters
		["@character.printf"] = { fg = colors.pastel12 },
		["@character.special"] = { fg = colors.pastel12 },

		-- Comments - soft and italic for readability
		["@comment"] = { fg = colors.fg_dark, italic = true },
		["@comment.error"] = { fg = colors.error },
		["@comment.hint"] = { fg = colors.hint },
		["@comment.info"] = { fg = colors.info },
		["@comment.note"] = { fg = colors.hint },
		["@comment.todo"] = { fg = colors.todo },
		["@comment.warning"] = { fg = colors.warning },

		-- Constants and variables
		["@constant"] = { fg = colors.hue4 }, -- Warm gold for constants
		["@constant.builtin"] = { fg = colors.sec9, italic = true },
		["@constant.macro"] = { fg = colors.accent1 },
		["@constructor"] = { fg = colors.sec3 },
		["@constructor.tsx"] = { fg = colors.sec3 },

		-- Diff highlighting
		["@diff.delta"] = { link = "GitChange" },
		["@diff.minus"] = { link = "GitDelete" },
		["@diff.plus"] = { link = "GitAdd" },

		-- Functions - vibrant and clear
		["@function"] = { fg = colors.def4 }, -- Soft blue for functions
		["@function.builtin"] = { fg = colors.sec3, italic = true },
		["@function.call"] = { fg = colors.pastel15 },
		["@function.macro"] = { fg = colors.accent1 },
		["@function.method"] = { fg = colors.sec3 },
		["@function.method.call"] = { fg = colors.pastel15 },

		-- Keywords - strong and distinctive
		["@keyword"] = { fg = colors.def6, bold = true }, -- Purple for keywords
		["@keyword.conditional"] = { fg = colors.hue11, bold = true }, -- Pink for conditionals
		["@keyword.debug"] = { fg = colors.accent1 },
		["@keyword.directive"] = { fg = colors.accent1 },
		["@keyword.exception"] = { fg = colors.hue0 },
		["@keyword.function"] = { fg = colors.sec3 },
		["@keyword.import"] = { fg = colors.sec9 },
		["@keyword.operator"] = { fg = colors.tone2 }, -- Subtle blue for operators
		["@keyword.repeat"] = { fg = colors.hue11, bold = true },

		-- Labels and markup
		["@label"] = { fg = colors.accent7 },
		["@markup"] = { link = "@none" },
		["@markup.emphasis"] = { italic = true },
		["@markup.heading"] = { fg = colors.pastel15, bold = true },
		["@markup.link"] = { fg = colors.def4, underline = true },
		["@markup.raw"] = { fg = colors.sec4 }, -- Code blocks in markup
		["@markup.strong"] = { bold = true },
		["@markup.underline"] = { underline = true },

		-- Modules and namespaces
		["@module"] = { fg = colors.def4 },
		["@module.builtin"] = { fg = colors.sec9, italic = true },
		["@namespace.builtin"] = { fg = colors.sec9, italic = true },

		-- Numbers - warm and distinctive
		["@number"] = { fg = colors.hue3 }, -- Warm orange for numbers
		["@number.float"] = { fg = colors.hue2 }, -- Slightly different for floats

		-- Operators and punctuation
		["@operator"] = { fg = colors.tone2 }, -- Soft blue operators
		["@property"] = { fg = colors.pastel15 },
		["@punctuation.bracket"] = { fg = colors.pastel12 },
		["@punctuation.delimiter"] = { fg = colors.pastel12 },
		["@punctuation.special"] = { fg = colors.pastel12 },

		-- Strings - warm and inviting
		["@string"] = { fg = colors.sec4 }, -- Sage green strings
		["@string.documentation"] = { fg = colors.pastel5 },
		["@string.escape"] = { fg = colors.sec7 },
		["@string.regexp"] = { fg = colors.sec7 },

		-- Tags and types
		["@tag"] = { fg = colors.def4 },
		["@tag.attribute"] = { fg = colors.accent4 }, -- Coral for attributes
		["@tag.delimiter"] = { fg = colors.pastel12 },
		["@type"] = { fg = colors.def5 }, -- Light blue for types
		["@type.builtin"] = { fg = colors.sec3, italic = true },
		["@type.definition"] = { fg = colors.def5, bold = true },

		-- Variables - clean and readable
		["@variable"] = { fg = colors.pastel15 },
		["@variable.builtin"] = { fg = colors.sec9, italic = true },
		["@variable.parameter"] = { fg = colors.pastel15, italic = true },
		["@variable.member"] = { fg = colors.accent4 }, -- Coral for object members

		-- Language-specific enhancements
		["@field"] = { fg = colors.accent4 }, -- Coral for fields
		["@field.key"] = { fg = colors.def1 }, -- Gold for keys
		["@method"] = { fg = colors.def4 }, -- Blue for methods
		["@method.call"] = { fg = colors.def4, bold = true },

		-- Enhanced semantic highlighting
		["@text.literal"] = { fg = colors.sec4 }, -- Code in text
		["@text.reference"] = { fg = colors.def4, underline = true }, -- References
		["@text.title"] = { fg = colors.pastel15, bold = true }, -- Titles
		["@text.todo"] = { fg = colors.todo, bold = true }, -- Todo items
		["@text.warning"] = { fg = colors.warning, bold = true }, -- Warnings
		["@text.danger"] = { fg = colors.error, bold = true }, -- Errors/dangers
	}

	-- Generate markdown heading highlights
	for i = 1, 6 do
		ret["@markup.heading." .. i .. ".markdown"] = { fg = colors.pastel15, bold = true }
	end

	return ret
end

return M
