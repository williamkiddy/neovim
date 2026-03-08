local M = {}

function M.get(colors, options)
	return {
		-- Basics
		Constant = { fg = colors.B1 },
		String = { fg = colors.C3 },
		Character = { fg = colors.C3 },
		Number = { fg = colors.C5 },
		Boolean = { fg = colors.B3, bold = true },
		Float = { fg = colors.C5 },

		-- Variables and Functions
		Identifier = { fg = colors.A5 },
		Function = { fg = colors.C7 },

		-- Language Features
		Statement = { fg = colors.B1, bold = true },
		Conditional = { fg = colors.B0, bold = true },
		Repeat = { fg = colors.B0, bold = true },
		Label = { fg = colors.C11 },
		Operator = { fg = colors.B3 },
		Keyword = { fg = colors.B1, bold = true },

		-- Types and Pre-processing
		PreProc = { fg = colors.C9, italic = true },
		Type = { fg = colors.C4 },
		Structure = { fg = colors.C11, bold = true },

		-- Special and Errors
		Special = { fg = colors.B3 },
		Todo = { fg = colors.B3, bold = true },
		Error = { fg = colors.C1, bold = true },

		-- Markdown
		MarkdownHeading = { fg = colors.B0, bold = true },
		MarkdownLinkText = { fg = colors.B1, underline = true },
		MarkdownLinkUrl = { fg = colors.C7 },

		-- Git
		GitAdd = { fg = colors.C3 },
		GitChange = { fg = colors.C4 },
		GitDelete = { fg = colors.C0 },

		-- Spell Checking
		SpellBad = { sp = colors.C1, undercurl = true },
		SpellCap = { sp = colors.C4, undercurl = true },
		SpellLocal = { sp = colors.C3, undercurl = true },
		SpellRare = { sp = colors.B3, undercurl = true },

		-- UI Elements
		Whitespace = { fg = colors.A2 },
		NonText = { fg = colors.A2 },
	}
end

return M
