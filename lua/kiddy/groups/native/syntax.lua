local M = {}
function M.get(colors, options)
	return {
		-- General syntax highlighting
		Constant = { fg = colors.pastel8 }, -- Constants
		String = { fg = colors.pastel5 }, -- Strings
		Character = { fg = colors.pastel9 }, -- Characters
		Number = { fg = colors.pastel8 }, -- Numbers
		Boolean = { fg = colors.pastel4 }, -- Booleans
		Float = { fg = colors.pastel3 }, -- Floats
		Identifier = { fg = colors.pastel2 }, -- Identifiers
		Function = { fg = colors.pastel11, bold = true }, -- Functions
		Statement = { fg = colors.pastel3, bold = true }, -- Statements
		Conditional = { fg = colors.pastel6, bold = true }, -- Conditionals
		Repeat = { fg = colors.pastel9, bold = true }, -- Repeat statements
		Label = { fg = colors.pastel11, bold = true }, -- Labels
		Operator = { fg = colors.pastel9 }, -- Operators
		Keyword = { fg = colors.pastel1, bold = true }, -- Keywords
		PreProc = { fg = colors.pastel7 }, -- Preprocessor directives
		Type = { fg = colors.pastel2, bold = true }, -- Types
		Structure = { fg = colors.pastel11, bold = true }, -- Structures
		Special = { fg = colors.pastel3 }, -- Special characters

		-- Specific syntax highlightings
		Todo = { fg = colors.accent1, bg = colors.pastel1, bold = true }, -- TODO comments
		Error = { fg = colors.hue0, bg = colors.pastel8, bold = true }, -- Error highlights

		-- Markdown specific
		MarkdownHeading = { fg = colors.def7, bold = true }, -- Markdown headings
		MarkdownLinkText = { fg = colors.base2 }, -- Markdown link text
		MarkdownLinkUrl = { fg = colors.sec13 }, -- Markdown link URLs

		-- Git specific
		GitAdd = { fg = colors.git.add, bold = true }, -- Git additions
		GitChange = { fg = colors.git.change, bold = true }, -- Git changes
		GitDelete = { fg = colors.git.remove, bold = true }, -- Git deletions

		-- Spell Checking
		SpellBad = { sp = colors.hue1, undercurl = true }, -- Bad spell check
		SpellCap = { sp = colors.pastel6, undercurl = true }, -- Capitalization errors
		SpellLocal = { sp = colors.accent4, undercurl = true }, -- Local spell check errors
		SpellRare = { sp = colors.hue5, undercurl = true }, -- Rare word check

		-- Miscellaneous
		Whitespace = { fg = colors.none }, -- Whitespace
	}
end

return M
