local U = require("kiddy.utils")
local M = {}

function M.get(colors, options)
	local ret = {
		-- Base elements
		["@none"] = { link = "None" },
		["@annotation"] = { fg = colors.accent1 },
		["@attribute"] = { fg = colors.accent4 },

		-- Booleans - root: hue3, variations for true/false
		["@boolean"] = { fg = colors.hue3, bold = true },
		["@boolean.true"] = { fg = U.blend(colors.hue3, colors.hue5, 0.2) },
		["@boolean.false"] = { fg = U.blend(colors.hue3, colors.hue0, 0.2) },

		-- Characters - root: sec4
		["@character"] = { fg = colors.sec4 },
		["@character.printf"] = { fg = colors.pastel12 },
		["@character.special"] = { fg = colors.pastel12 },

		-- Comments - root: fg_dark
		["@comment"] = { fg = colors.fg_dark, italic = true },
		["@comment.error"] = { fg = colors.error, bold = true },
		["@comment.hint"] = { fg = colors.hint },
		["@comment.info"] = { fg = colors.info },
		["@comment.note"] = { fg = colors.hint },
		["@comment.todo"] = { fg = colors.todo, bold = true },
		["@comment.warning"] = { fg = colors.warning },
		["@comment.documentation"] = { fg = U.blend(colors.fg_dark, colors.pastel5, 0.3), italic = true },

		-- Constants - root: hue4
		["@constant"] = { fg = colors.hue4 },
		["@constant.builtin"] = { fg = colors.sec9, italic = true },
		["@constant.macro"] = { fg = colors.accent1 },
		["@constructor"] = { fg = colors.sec3 },
		["@constructor.tsx"] = { fg = colors.sec3 },

		-- Diff highlighting
		["@diff.delta"] = { fg = colors.git.change },
		["@diff.minus"] = { fg = colors.git.delete },
		["@diff.plus"] = { fg = colors.git.add },

		-- Functions - root: def4
		["@function"] = { fg = colors.def4 },
		["@function.builtin"] = { fg = colors.sec3, italic = true },
		["@function.call"] = { fg = U.blend(colors.def4, colors.pastel7, 0.2) },
		["@function.macro"] = { fg = colors.accent1 },
		["@function.method"] = { fg = colors.sec3 },
		["@function.method.call"] = { fg = U.blend(colors.def4, colors.accent6, 0.2) },

		-- Keywords - root: def6
		["@keyword"] = { fg = colors.def6, bold = true },
		["@keyword.conditional"] = { fg = colors.hue11, bold = true },
		["@keyword.debug"] = { fg = colors.accent1 },
		["@keyword.directive"] = { fg = colors.accent1 },
		["@keyword.exception"] = { fg = colors.hue0 },
		["@keyword.function"] = { fg = colors.sec3 },
		["@keyword.import"] = { fg = colors.sec9 },
		["@keyword.operator"] = { fg = colors.tone2 },
		["@keyword.repeat"] = { fg = colors.hue11, bold = true },
		["@keyword.return"] = { fg = U.blend(colors.hue11, colors.hue1, 0.2), bold = true },

		-- Labels and markup - root: pastel15
		["@label"] = { fg = colors.accent7 },
		["@markup"] = { link = "@none" },
		["@markup.emphasis"] = { fg = colors.pastel15, italic = true },
		["@markup.heading"] = { fg = colors.pastel15, bold = true },
		["@markup.heading.1"] = { fg = U.blend(colors.pastel15, colors.hue4, 0.1), bold = true },
		["@markup.heading.2"] = { fg = U.blend(colors.pastel15, colors.def4, 0.1), bold = true },
		["@markup.link"] = { fg = colors.def4, underline = true },
		["@markup.raw"] = { fg = colors.sec4 },
		["@markup.strong"] = { fg = colors.pastel15, bold = true },
		["@markup.underline"] = { underline = true },

		-- Modules and namespaces - root: def4
		["@module"] = { fg = colors.def4 },
		["@module.builtin"] = { fg = colors.sec9, italic = true },
		["@namespace"] = { fg = colors.def4 },
		["@namespace.builtin"] = { fg = colors.sec9, italic = true },

		-- Numbers - root: hue3
		["@number"] = { fg = colors.hue3 },
		["@number.float"] = { fg = colors.hue2 },
		["@number.binary"] = { fg = colors.accent5 },
		["@number.hex"] = { fg = colors.accent6 },

		-- Operators - root: tone2
		["@operator"] = { fg = colors.tone2 },
		["@property"] = { fg = colors.pastel15 },
		["@punctuation.bracket"] = { fg = colors.pastel12 },
		["@punctuation.delimiter"] = { fg = colors.pastel12 },
		["@punctuation.special"] = { fg = colors.pastel12 },

		-- Strings - root: sec4
		["@string"] = { fg = colors.sec4 },
		["@string.documentation"] = { fg = colors.pastel5, italic = true },
		["@string.escape"] = { fg = colors.sec7 },
		["@string.regexp"] = { fg = U.blend(colors.sec7, colors.hue1, 0.2) },

		-- Tags - root: def4
		["@tag"] = { fg = colors.def4 },
		["@tag.attribute"] = { fg = colors.accent4 },
		["@tag.delimiter"] = { fg = colors.pastel12 },

		-- Types - root: def5
		["@type"] = { fg = colors.def5 },
		["@type.builtin"] = { fg = colors.sec3, italic = true },
		["@type.definition"] = { fg = colors.def5, bold = true },

		-- Variables - root: pastel15
		["@variable"] = { fg = colors.pastel15 },
		["@variable.builtin"] = { fg = colors.sec9, italic = true },
		["@variable.parameter"] = { fg = U.blend(colors.pastel15, colors.accent4, 0.1), italic = true },
		["@variable.member"] = { fg = colors.accent4 },

		-- Fields and methods - using existing colors
		["@field"] = { fg = colors.accent4 },
		["@field.key"] = { fg = colors.def1 },
		["@method"] = { fg = colors.def4 },
		["@method.call"] = { fg = colors.def4 },

		-- Text elements
		["@text.literal"] = { fg = colors.sec4 },
		["@text.reference"] = { fg = colors.def4, underline = true },
		["@text.title"] = { fg = colors.pastel15, bold = true },
		["@text.todo"] = { fg = colors.todo, bold = true },
		["@text.warning"] = { fg = colors.warning, bold = true },
		["@text.danger"] = { fg = colors.error, bold = true },
	}

	-- Generate markdown heading highlights
	for i = 1, 6 do
		ret["@markup.heading." .. i .. ".markdown"] = { fg = colors.pastel15, bold = true }
	end

	return ret
end

return M
