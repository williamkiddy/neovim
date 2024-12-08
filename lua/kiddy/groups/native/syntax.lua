local C = require("kiddy.colors") -- Use the Mufflora colors
local O = require("kiddy.config").options
local M = {}
function M.get(colors, options)
	return {
		-- General syntax highlighting
		Comment = { fg = C.base2, italic = O.italic_comments }, -- Comments
		Constant = { fg = C.def7 }, -- Constants
		String = { fg = C.tone3 }, -- Strings
		Character = { fg = C.hue7 }, -- Characters
		Number = { fg = C.accent6 }, -- Numbers
		Boolean = { fg = C.hue2 }, -- Booleans
		Float = { fg = C.hue6 }, -- Floats
		Identifier = { fg = C.def8 }, -- Identifiers
		Function = { fg = C.tone4, bold = true }, -- Functions
		Statement = { fg = C.hue0, bold = true }, -- Statements
		Conditional = { fg = C.hue7, bold = true }, -- Conditionals
		Repeat = { fg = C.accent4, bold = true }, -- Repeat statements
		Label = { fg = C.tone4, bold = true }, -- Labels
		Operator = { fg = C.accent4 }, -- Operators
		Keyword = { fg = C.pastel7, bold = true }, -- Keywords
		PreProc = { fg = C.hue6 }, -- Preprocessor directives
		Type = { fg = C.tone7, bold = true }, -- Types
		Structure = { fg = C.accent0, bold = true }, -- Structures
		Special = { fg = C.tone7 }, -- Special characters

		-- Specific syntax highlightings
		Todo = { fg = C.accent1, bg = C.pastel1, bold = true }, -- TODO comments
		Error = { fg = C.hue0, bg = C.pastel8, bold = true }, -- Error highlights

		-- Markdown specific
		MarkdownHeading = { fg = C.def7, bold = true }, -- Markdown headings
		MarkdownLinkText = { fg = C.base2 }, -- Markdown link text
		MarkdownLinkUrl = { fg = C.base4 }, -- Markdown link URLs

		-- Git specific
		GitAdd = { fg = C.pastel3, bg = C.accent0, bold = true }, -- Git additions
		GitChange = { fg = C.pastel2, bg = C.accent5, bold = true }, -- Git changes
		GitDelete = { fg = C.hue7, bg = C.pastel7, bold = true }, -- Git deletions

		-- Spell Checking
		SpellBad = { sp = C.hue1, undercurl = true }, -- Bad spell check
		SpellCap = { sp = C.pastel6, undercurl = true }, -- Capitalization errors
		SpellLocal = { sp = C.accent4, undercurl = true }, -- Local spell check errors
		SpellRare = { sp = C.hue5, undercurl = true }, -- Rare word check

		-- Miscellaneous
		Whitespace = { fg = C.none }, -- Whitespace
	}
end
return M
