local M = {}
function M.get(colors, options)
	return {
		-- General syntax highlighting
		Constant = { fg = colors.sec8 },           -- Constants
		String = { fg = colors.sec4 },             -- Strings
		Character = { fg = colors.sec9 },          -- Characters
		Number = { fg = colors.base7 },            -- Numbers
		Boolean = { fg = colors.sec13 },           -- Booleans
		Float = { fg = colors.sec8 },              -- Floats
		Identifier = { fg = colors.sec12 },        -- Identifiers
		Function = { fg = colors.sec13, bold = true }, -- Functions
		Statement = { fg = colors.sec2, bold = true }, -- Statements
		Conditional = { fg = colors.sec7, bold = true }, -- Conditionals
		Repeat = { fg = colors.sec4, bold = true }, -- Repeat statements
		Label = { fg = colors.sec11, bold = true }, -- Labels
		Operator = { fg = colors.sec10 },          -- Operators
		Keyword = { fg = colors.accent6, bold = true }, -- Keywords
		PreProc = { fg = colors.sec6 },            -- Preprocessor directives
		Type = { fg = colors.sec8, bold = true },  -- Types
		Structure = { fg = colors.sec4, bold = true }, -- Structures
		Special = { fg = colors.accent7 },         -- Special characters

		-- Specific syntax highlightings
		Todo = { fg = colors.accent1, bg = colors.pastel1, bold = true }, -- TODO comments
		Error = { fg = colors.hue0, bg = colors.pastel8, bold = true }, -- Error highlights

		-- Markdown specific
		MarkdownHeading = { fg = colors.def7, bold = true }, -- Markdown headings
		MarkdownLinkText = { fg = colors.base2 },      -- Markdown link text
		MarkdownLinkUrl = { fg = colors.base3 },       -- Markdown link URLs

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
