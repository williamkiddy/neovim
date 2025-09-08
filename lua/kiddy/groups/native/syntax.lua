local M = {}

function M.get(colors, options)
	return {
		Constant = { fg = colors.hue4 },
		String = { fg = colors.sec4 },
		Character = { fg = colors.sec4 },
		Number = { fg = colors.tone1 },
		Boolean = { fg = colors.def1, bold = true },
		Float = { fg = colors.hue2 },

		Identifier = { fg = colors.def2 },
		Function = { fg = colors.def4 },

		Statement = { fg = colors.tone3, bold = true },
		Conditional = { fg = colors.tone6, bold = true },
		Repeat = { fg = colors.hue11, bold = true },
		Label = { fg = colors.accent7 },
		Operator = { fg = colors.tone2 },
		Keyword = { fg = colors.def2, bold = true },

		PreProc = { fg = colors.accent1, italic = true },
		Type = { fg = colors.def5 },
		Structure = { fg = colors.def5, bold = true },

		Special = { fg = colors.accent4 },
		Todo = { fg = colors.accent7, bold = true },
		Error = { fg = colors.hue0, bold = true },

		MarkdownHeading = { fg = colors.pastel15, bold = true },
		MarkdownLinkText = { fg = colors.def4, underline = true },
		MarkdownLinkUrl = { fg = colors.tone3 },

		GitAdd = { fg = colors.git.add },
		GitChange = { fg = colors.git.change },
		GitDelete = { fg = colors.git.delete },

		SpellBad = { sp = colors.hue0, undercurl = true },
		SpellCap = { sp = colors.def4, undercurl = true },
		SpellLocal = { sp = colors.def4, undercurl = true },
		SpellRare = { sp = colors.def4, undercurl = true },

		Whitespace = { fg = colors.extra.neutral7 },
		NonText = { fg = colors.extra.neutral6 },
		SpecialKey = { fg = colors.extra.neutral6 },

		Delimiter = { fg = colors.pastel12 },
		Comment = { fg = colors.fg_dark, italic = true },

		Search = { bg = colors.accent7, fg = colors.base0 },
		IncSearch = { bg = colors.hue3, fg = colors.base0 },

		Cursor = { bg = colors.pastel4, fg = colors.base0 },
		CursorLine = { bg = colors.bg_highlight },
		Visual = { bg = colors.bg_visual },

		LineNr = { fg = colors.extra.neutral5 },
		CursorLineNr = { fg = colors.pastel4, bold = true },
	}
end

return M
