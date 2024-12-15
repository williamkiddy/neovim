local M = {}
function M.get(colors, options)
	return {
		CmpItemAbbr = { fg = colors.base5 },
		CmpItemAbbrMatch = { fg = colors.fg_selected, bg = colors.bg_selected, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.sec3, bg = colors.base0, bold = true },
		CmpItemMenu = { fg = colors.fg, bg = colors.bg_popup },
		CmpDocumentation = { bg = colors.base0 },
		CmpDocumentationBorder = { fg = colors.base4, bg = colors.base0 },
		CmpPmenu = { fg = colors.sec6, bg = colors.base0 },
		CmpPmenuSel = { bg = colors.sec2 },
		CmpItemKindText = { fg = colors.fg_highlight },
		CmpItemKindFunction = { link = "Function" }, -- Functions
		CmpItemKindVariable = { link = "Identifier" }, -- Variables
		CmpItemKindClass = { link = "Type" }, -- Classes
		CmpItemKindInterface = { link = "Type" }, -- Interfaces
		CmpItemKindModule = { link = "Include" }, -- Modules
		CmpItemKindKeyword = { link = "Keyword" }, -- Keywords
		CmpItemKindField = { link = "Field" }, -- Fields
		CmpItemKindProperty = { link = "Identifier" }, -- Properties
		CmpItemKindEnum = { link = "Constant" }, -- Enums
		CmpItemKindEnumMember = { link = "Constant" }, -- Enum Members
		CmpItemKindConstant = { link = "Constant" }, -- Constants
		CmpItemKindStruct = { link = "Structure" }, -- Structures
		CmpItemKindEvent = { link = "Special" }, -- Events
		CmpItemKindOperator = { link = "Operator" }, -- Operators
		CmpItemKindTypeParameter = { link = "Type" }, -- Type Parameters
		CmpItemKindSnippet = { fg = colors.def2 }, -- Snippets
	}
end
return M
