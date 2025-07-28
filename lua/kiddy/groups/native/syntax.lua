local M = {}
function M.get(colors, options)
	return {
		Constant = { fg = colors.pastel7 },
		String = { fg = colors.pastel5 },
		Character = { fg = colors.pastel5 },
		Number = { fg = colors.pastel3 },
		Boolean = { fg = colors.pastel7 },
		Float = { fg = colors.pastel3 },
		Identifier = { fg = colors.pastel15 },
		Function = { fg = colors.sec9 },
		Statement = { fg = colors.pastel6 },
		Conditional = { fg = colors.pastel6 },
		Repeat = { fg = colors.pastel6 },
		Label = { fg = colors.pastel6 },
		Operator = { fg = colors.pastel12 },
		Keyword = { fg = colors.pastel6 },
		PreProc = { fg = colors.sec3 },
		Type = { fg = colors.sec9 },
		Structure = { fg = colors.sec9 },
		Special = { fg = colors.pastel12 },
		Todo = { fg = colors.sec8, bold = true },
		Error = { fg = colors.hue0 },
		MarkdownHeading = { fg = colors.pastel15, bold = true },
		MarkdownLinkText = { fg = colors.sec9, underline = true },
		MarkdownLinkUrl = { fg = colors.pastel12 },
		GitAdd = { fg = colors.git.add },
		GitChange = { fg = colors.git.change },
		GitDelete = { fg = colors.git.delete },
		SpellBad = { sp = colors.hue0, undercurl = true },
		SpellCap = { sp = colors.pastel6, undercurl = true },
		SpellLocal = { sp = colors.pastel6, undercurl = true },
		SpellRare = { sp = colors.pastel6, undercurl = true },
		Whitespace = { fg = colors.none },
	}
end

return M
