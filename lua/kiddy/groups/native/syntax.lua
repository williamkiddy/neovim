local M = {}

function M.get(colors, options)
	return {
		Constant = { fg = colors.sec10 },
		String = { fg = colors.sec12 },
		Character = { fg = colors.sec14 },
		Number = { fg = colors.sec9 },
		Boolean = { fg = colors.sec13, bold = true },
		Float = { fg = colors.sec11 },

		Identifier = { fg = colors.sec15 },
		Function = { fg = colors.sec7 },

		Statement = { fg = colors.sec1, bold = true },
		Conditional = { fg = colors.sec2, bold = true },
		Repeat = { fg = colors.sec5, bold = true },
		Label = { fg = colors.sec6 },
		Operator = { fg = colors.sec13 },
		Keyword = { fg = colors.sec8, bold = true },

		PreProc = { fg = colors.sec3, italic = true },
		Type = { fg = colors.sec14 },
		Structure = { fg = colors.sec7, bold = true },

		Special = { fg = colors.sec4 },
		Todo = { fg = colors.fruit1, bold = true },
		Error = { fg = colors.fruit2, bold = true },

		MarkdownHeading = { fg = colors.fruit.strawberry.light, bold = true },
		MarkdownLinkText = { fg = colors.sec12, underline = true },
		MarkdownLinkUrl = { fg = colors.sec5 },

		GitAdd = { fg = colors.git.add },
		GitChange = { fg = colors.git.change },
		GitDelete = { fg = colors.git.delete },

		SpellBad = { sp = colors.change0, undercurl = true },
		SpellCap = { sp = colors.change1, undercurl = true },
		SpellLocal = { sp = colors.sec14, undercurl = true },
		SpellRare = { sp = colors.sec12, undercurl = true },

		Whitespace = { fg = colors.sec8 },
		NonText = { fg = colors.sec7 },
	}
end

return M
