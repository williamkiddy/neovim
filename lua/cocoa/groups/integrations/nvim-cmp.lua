local M = {}
local U = require("cocoa.utils")

function M.get(colors, options)
	return {
		CmpItemAbbr = { fg = colors.tone3 },
		CmpItemAbbrMatch = { fg = colors.fg_selected },
		CmpItemAbbrMatchFuzzy = { fg = colors.sec3, bold = true },
		CmpItemMenu = { fg = colors.fg, bg = colors.bg_popup },
		CmpItemMenuLsp = { fg = colors.sec3, bg = colors.bg_popup },
		CmpItemMenuSnippet = { fg = colors.sec2, bg = colors.bg_popup },

		SpecialCmpBorder = { fg = colors.border, bg = colors.bg_popup },
		CmpScrollbar = { bg = colors.bg_sidebar },
		CmpScrollbarThumb = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },
		CmpGhostText = { fg = colors.fg_inactive, bg = colors.bg_popup, italic = true },

		CmpDocumentation = { bg = colors.base0 },
		CmpDocumentationBorder = { fg = colors.base4, bg = colors.base0 },
		CmpPmenu = { link = "NormalFloat" },
		CmpPmenuSel = { bg = colors.base3 },

		CmpItemKindText = { fg = colors.fg_highlight },
		CmpItemKindMethod = { link = "Function" },
		CmpItemKindFunction = { link = "Function" },
		CmpItemKindConstructor = { link = "Function" },
		CmpItemKindField = { fg = colors.sec8 },
		CmpItemKindVariable = { link = "Identifier" },
		CmpItemKindClass = { link = "Type" },
		CmpItemKindInterface = { link = "Type" },
		CmpItemKindModule = { link = "Include" },
		CmpItemKindProperty = { link = "Identifier" },
		CmpItemKindUnit = { link = "Constant" },
		CmpItemKindValue = { link = "Constant" },
		CmpItemKindEnum = { link = "Constant" },
		CmpItemKindKeyword = { link = "Keyword" },
		CmpItemKindSnippet = { fg = colors.def2 },
		CmpItemKindColor = { link = "Special" },
		CmpItemKindFile = { link = "Directory" },
		CmpItemKindReference = { link = "Type" },
		CmpItemKindFolder = { link = "Directory" },
		CmpItemKindEnumMember = { link = "Constant" },
		CmpItemKindConstant = { link = "Constant" },
		CmpItemKindStruct = { link = "Structure" },
		CmpItemKindEvent = { link = "Special" },
		CmpItemKindOperator = { link = "Operator" },
		CmpItemKindTypeParameter = { link = "Type" },
		CmpItemKindUnknown = { fg = colors.fg_inactive },
	}
end

return M
