local M = {}

function M.get(colors, options)
	return {
		Constant = { fg = colors.named[options.themeconf].green },
		String = { fg = colors.named[options.themeconf].green },
		Character = { fg = colors.named[options.themeconf].cyan },
		Number = { fg = colors.named[options.themeconf].green },
		Boolean = { fg = colors.named[options.themeconf].yellow, bold = true },
		Float = { fg = colors.named[options.themeconf].green },

		Identifier = { fg = colors.named[options.themeconf].green },
		Function = { fg = colors.named[options.themeconf].orange },

		Statement = { fg = colors.named[options.themeconf].yellow, bold = true },
		Conditional = { fg = colors.named[options.themeconf].orange, bold = true },
		Repeat = { fg = colors.named[options.themeconf].magenta, bold = true },
		Label = { fg = colors.named[options.themeconf].cyan },
		Operator = { fg = colors.named[options.themeconf].yellow },
		Keyword = { fg = colors.named[options.themeconf].green, bold = true },

		PreProc = { fg = colors.named[options.themeconf].purple, italic = true },
		Type = { fg = colors.named[options.themeconf].yellow },
		Structure = { fg = colors.named[options.themeconf].cyan, bold = true },

		Special = { fg = colors.named[options.themeconf].yellow },
		Todo = { fg = colors.todo, bold = true },
		Error = { fg = colors.error, bold = true },

		MarkdownHeading = { fg = colors.named[options.themeconf].pink, bold = true },
		MarkdownLinkText = { fg = colors.named[options.themeconf].purple, underline = true },
		MarkdownLinkUrl = { fg = colors.named[options.themeconf].magenta },

		GitAdd = { fg = colors.git.add },
		GitChange = { fg = colors.git.change },
		GitDelete = { fg = colors.git.delete },

		SpellBad = { sp = colors.change0, undercurl = true },
		SpellCap = { sp = colors.change1, undercurl = true },
		SpellLocal = { sp = colors.named[options.themeconf].green, undercurl = true },
		SpellRare = { sp = colors.named[options.themeconf].yellow, undercurl = true },

		Whitespace = { fg = colors.named[options.themeconf].red },
		NonText = {},
	}
end

return M
