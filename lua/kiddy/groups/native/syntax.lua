local M = {}
function M.get(colors, options)
	return {
		-- Basic syntax elements
		Constant = { fg = colors.hue4 }, -- Warm gold for constants
		String = { fg = colors.sec4 }, -- Sage green strings
		Character = { fg = colors.sec4 },
		Number = { fg = colors.hue3 }, -- Bright amber numbers
		Boolean = { fg = colors.hue3, bold = true }, -- Bold amber booleans
		Float = { fg = colors.hue2 }, -- Slightly different orange for floats

		-- Variables and identifiers
		Identifier = { fg = colors.pastel15 }, -- Cream identifiers
		Function = { fg = colors.def4 }, -- Soft blue functions

		-- Statements and control flow
		Statement = { fg = colors.def6, bold = true }, -- Purple statements
		Conditional = { fg = colors.hue11, bold = true }, -- Pink conditionals
		Repeat = { fg = colors.hue11, bold = true }, -- Pink loops
		Label = { fg = colors.accent7 }, -- Yellow labels
		Operator = { fg = colors.tone2 }, -- Subtle blue operators
		Keyword = { fg = colors.def6, bold = true }, -- Purple keywords

		-- Preprocessor and types
		PreProc = { fg = colors.accent1, italic = true }, -- Muted purple preprocessor
		Type = { fg = colors.def5 }, -- Light blue types
		Structure = { fg = colors.def5, bold = true }, -- Bold light blue structures

		-- Special elements
		Special = { fg = colors.accent4 }, -- Coral special characters
		Todo = { fg = colors.accent7, bold = true }, -- Bright yellow todos
		Error = { fg = colors.hue0, bold = true }, -- Red errors

		-- Markdown highlighting
		MarkdownHeading = { fg = colors.pastel15, bold = true },
		MarkdownLinkText = { fg = colors.def4, underline = true },
		MarkdownLinkUrl = { fg = colors.tone3 }, -- Soft teal URLs

		-- Git integration
		GitAdd = { fg = colors.git.add },
		GitChange = { fg = colors.git.change },
		GitDelete = { fg = colors.git.delete },

		-- Spell checking
		SpellBad = { sp = colors.hue0, undercurl = true },
		SpellCap = { sp = colors.def4, undercurl = true },
		SpellLocal = { sp = colors.def4, undercurl = true },
		SpellRare = { sp = colors.def4, undercurl = true },

		-- Whitespace and visual elements
		Whitespace = { fg = colors.extra.neutral7 }, -- Subtle whitespace
		NonText = { fg = colors.extra.neutral6 }, -- Non-text characters
		SpecialKey = { fg = colors.extra.neutral6 }, -- Special keys

		-- Enhanced syntax elements
		Delimiter = { fg = colors.pastel12 }, -- Delimiters
		Comment = { fg = colors.fg_dark, italic = true }, -- Soft italic comments

		-- Search and selection
		Search = { bg = colors.accent7, fg = colors.base0 }, -- Yellow search highlight
		IncSearch = { bg = colors.hue3, fg = colors.base0 }, -- Orange incremental search

		-- Cursor and visual
		Cursor = { bg = colors.pastel4, fg = colors.base0 }, -- Golden cursor
		CursorLine = { bg = colors.bg_highlight }, -- Subtle line highlight
		Visual = { bg = colors.bg_visual }, -- Visual selection

		-- Line numbers
		LineNr = { fg = colors.extra.neutral5 }, -- Line numbers
		CursorLineNr = { fg = colors.pastel4, bold = true }, -- Current line number
	}
end

return M
