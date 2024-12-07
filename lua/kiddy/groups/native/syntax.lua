local C = require("kiddy.colors") -- Use the Mufflora colors
local O = require("kiddy.config").options

return {
	-- General syntax highlighting
	Comment = { fg = C.pastel0, italic = O.italic_comments }, -- Comments (Soft Pink)
	Constant = { fg = C.hue3 }, -- Constants (Bright Green)
	String = { fg = C.pastel3 }, -- Strings (Soft Lemon)
	Character = { fg = C.pastel4 }, -- Characters (Light Ocean)
	Number = { fg = C.hue1 }, -- Numbers (Golden Orange)
	Boolean = { fg = C.hue2 }, -- Booleans (Lemon Yellow)
	Float = { fg = C.hue4 }, -- Floats (Bright Blue)
	Identifier = { fg = C.pastel6 }, -- Identifiers (Pale Purple)
	Function = { fg = C.pastel2, bold = true }, -- Functions (Lemon Yellow)
	Statement = { fg = C.hue0, bold = true }, -- Statements (Sunset Red)
	Conditional = { fg = C.hue7, bold = true }, -- Conditionals (Pink Violet)
	Repeat = { fg = C.hue5, bold = true }, -- Repeat statements (Ocean Blue)
	Label = { fg = C.pastel1, bold = true }, -- Labels (Golden Peach)
	Operator = { fg = C.accent4 }, -- Operators (Fresh Mint)
	Keyword = { fg = C.pastel7, bold = true }, -- Keywords (Light Peach)
	PreProc = { fg = C.hue6 }, -- Preprocessor directives (Vivid Purple)
	Type = { fg = C.hue8, bold = true }, -- Types (Golden Yellow)
	Structure = { fg = C.accent0, bold = true }, -- Structures (Sandy Rose)
	Special = { fg = C.hue5 }, -- Special characters (Ocean Blue)

	-- Specific syntax highlightings
	Todo = { fg = C.accent1, bg = C.pastel5, bold = true }, -- TODO comments (Baby Pink, Fresh Mint)
	Error = { fg = C.hue0, bg = C.pastel8, bold = true }, -- Error highlights (Sunset Red, Light Rose)

	-- Markdown specific
	MarkdownHeading = { fg = C.hue3, bold = true }, -- Markdown headings (Bright Green)
	MarkdownLinkText = { fg = C.base2 }, -- Markdown link text (Forest Moss)
	MarkdownLinkUrl = { fg = C.base4 }, -- Markdown link URLs (Sky Blue)

	-- Git specific
	GitAdd = { fg = C.pastel3, bg = C.accent0, bold = true }, -- Git additions (Soft Lemon, Sandy Rose)
	GitChange = { fg = C.pastel2, bg = C.accent5, bold = true }, -- Git changes (Lemon Yellow, Warm Taupe)
	GitDelete = { fg = C.hue7, bg = C.pastel7, bold = true }, -- Git deletions (Pink Violet, Light Peach)

	-- Spell Checking
	SpellBad = { sp = C.hue1, undercurl = true }, -- Bad spell check (Golden Orange)
	SpellCap = { sp = C.pastel6, undercurl = true }, -- Capitalization errors (Pale Purple)
	SpellLocal = { sp = C.accent4, undercurl = true }, -- Local spell check errors (Fresh Mint)
	SpellRare = { sp = C.hue5, undercurl = true }, -- Rare word check (Ocean Blue)

	-- Miscellaneous
	Whitespace = { fg = C.none }, -- Whitespace (Charcoal)
}
