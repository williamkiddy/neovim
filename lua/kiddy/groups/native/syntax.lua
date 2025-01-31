local M = {}

function M.get(colors, options)
	return {
		-- General syntax highlighting
		Constant = { fg = colors.def7 },               -- Constants
		String = { fg = colors.tone3 },                -- Strings
		Character = { fg = colors.pastel7 },           -- Characters
		Number = { fg = colors.accent6 },              -- Numbers
		Boolean = { fg = colors.base2 },               -- Booleans
		Float = { fg = colors.pastel1 },               -- Floats
		Identifier = { fg = colors.def8 },             -- Identifiers
		Function = { fg = colors.base3, bold = true }, -- Functions
		Statement = { fg = colors.hue0, bold = true }, -- Statements
		Conditional = { fg = colors.pastel11, bold = true }, -- Conditionals
		Repeat = { fg = colors.accent4, bold = true }, -- Repeat statements
		Label = { fg = colors.tone4, bold = true },    -- Labels
		Operator = { fg = colors.accent4 },            -- Operators
		Keyword = { fg = colors.pastel7, bold = true }, -- Keywords
		PreProc = { fg = colors.pastel12 },            -- Preprocessor directives
		Type = { fg = colors.tone7, bold = true },     -- Types
		Structure = { fg = colors.accent0, bold = true }, -- Structures
		Special = { fg = colors.tone7 },               -- Special characters

		-- Specific syntax highlightings
		Todo = { fg = colors.accent1, bg = colors.pastel1, bold = true }, -- TODO comments
		Error = { fg = colors.hue0, bg = colors.pastel8, bold = true }, -- Error highlights

		-- Markdown specific
		MarkdownHeading = { fg = colors.def7, bold = true }, -- Markdown headings
		MarkdownLinkText = { fg = colors.base2 },      -- Markdown link text
		MarkdownLinkUrl = { fg = colors.base3 },       -- Markdown link URLs

		-- Git specific
		GitAdd = { fg = colors.git.add, bg = colors.accent0, bold = true }, -- Git additions
		GitChange = { fg = colors.git.change, bg = colors.accent5, bold = true }, -- Git changes
		GitDelete = { fg = colors.git.remove, bg = colors.pastel7, bold = true }, -- Git deletions

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
