local C = require 'Cirqla.colors' -- Adjust the module name as necessary
local O = require('Cirqla.config').options
return {
	-- General syntax highlighting
	Comment = { fg = C["000110"], italic = O.italic_comments }, -- Comments
	Constant = { fg = C["001010"] },                        -- Constants
	String = { fg = C["001100"] },                          -- Strings
	Character = { fg = C["001111"] },                       -- Characters
	Number = { fg = C["001001"] },                          -- Numbers
	Boolean = { fg = C["000101"] },                         -- Booleans
	Float = { fg = C["000100"] },                           -- Floats
	Identifier = { fg = C["011111"] },                      -- Identifiers
	Function = { fg = C["001000"], bold = true },           -- Functions
	Statement = { fg = C["001011"], bold = true },          -- Statements
	Conditional = { fg = C["000111"], bold = true },        -- Conditionals
	Repeat = { fg = C["001110"], bold = true },             -- Repeat statements
	Label = { fg = C["001001"], bold = true },              -- Labels
	Operator = { fg = C["000000"] },                        -- Operators
	Keyword = { fg = C["000011"], bold = true },            -- Keywords
	PreProc = { fg = C["001100"] },                         -- Preprocessor directives
	Type = { fg = C["000110"], bold = true },               -- Types
	Structure = { fg = C["001010"], bold = true },          -- Structures
	Special = { fg = C["001101"] },                         -- Special characters

	-- Specific syntax highlightings
	Todo = { fg = C["000000"], bg = C["001100"], bold = true }, -- TODO comments
	Error = { fg = C["000111"], bg = C["000010"], bold = true }, -- Error highlights

	-- Markdown specific
	MarkdownHeading = { fg = C["001011"], bold = true }, -- Markdown headings
	MarkdownLinkText = { fg = C["000110"] },         -- Markdown link text
	MarkdownLinkUrl = { fg = C["001000"] },          -- Markdown link URLs

	-- Git specific
	GitAdd = { fg = C["001100"], bg = C["000110"], bold = true }, -- Git additions
	GitChange = { fg = C["000001"], bg = C["001111"], bold = true }, -- Git changes
	GitDelete = { fg = C["001000"], bg = C["001010"], bold = true }, -- Git deletions

	-- Spell Checking
	SpellBad = { sp = C["000111"], undercurl = true }, -- Bad spell check
	SpellCap = { sp = C["000100"], undercurl = true }, -- Capitalization errors
	SpellLocal = { sp = C["001000"], undercurl = true }, -- Local spell check errors
	SpellRare = { sp = C["001011"], undercurl = true }, -- Rare word check

	-- Miscellaneous
	Whitespace = { fg = C["000001"] }, -- Whitespace
}
