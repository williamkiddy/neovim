local M = {}

function M.get(colors, options)
	return {
		Constant = { fg = colors[options.themeconf].blue },
		String = { fg = colors[options.themeconf].green },
		Character = { fg = colors[options.themeconf].cyan },
		Number = { fg = colors[options.themeconf].blue },
		Boolean = { fg = colors[options.themeconf].yellow, bold = true },
		Float = { fg = colors[options.themeconf].blue },

		Identifier = { fg = colors[options.themeconf].blue },
		Function = { fg = colors[options.themeconf].orange },

		Statement = { fg = colors[options.themeconf].yellow, bold = true },
		Conditional = { fg = colors[options.themeconf].orange, bold = true },
		Repeat = { fg = colors[options.themeconf].magenta, bold = true },
		Label = { fg = colors[options.themeconf].cyan },
		Operator = { fg = colors[options.themeconf].yellow },
		Keyword = { fg = colors[options.themeconf].green, bold = true },

		PreProc = { fg = colors[options.themeconf].purple, italic = true },
		Type = { fg = colors[options.themeconf].yellow },
		Structure = { fg = colors[options.themeconf].cyan, bold = true },

		Special = { fg = colors[options.themeconf].yellow },
		Todo = { fg = colors.fruit1, bold = true },
		Error = { fg = colors.fruit2, bold = true },

		MarkdownHeading = { fg = colors[options.themeconf].pink, bold = true },
		MarkdownLinkText = { fg = colors[options.themeconf].purple, underline = true },
		MarkdownLinkUrl = { fg = colors[options.themeconf].magenta },

		GitAdd = { fg = colors.git.add },
		GitChange = { fg = colors.git.change },
		GitDelete = { fg = colors.git.delete },

		SpellBad = { sp = colors.change0, undercurl = true },
		SpellCap = { sp = colors.change1, undercurl = true },
		SpellLocal = { sp = colors[options.themeconf].green, undercurl = true },
		SpellRare = { sp = colors[options.themeconf].yellow, undercurl = true },

		Whitespace = { fg = colors[options.themeconf].red },
		NonText = {},
	}
end

return M
