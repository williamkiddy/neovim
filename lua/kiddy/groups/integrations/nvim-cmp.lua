local C = require("kiddy.colors")
local U = require("kiddy.utils")

return {
	CmpItemAbbr = { fg = C.base5 },
	CmpItemAbbrMatch = { fg = C.sec4, bg = C.bg_selected, bold = true },
	CmpItemAbbrMatchFuzzy = { fg = C.sec3, bg = C.base0, bold = true },
	CmpDocumentation = { bg = C.base0 },
	CmpDocumentationBorder = { fg = C.base4, bg = C.base0 },
	CmpPmenu = { fg = C.sec6, bg = C.base0 },
	CmpPmenuSel = { bg = C.sec2 },
	CmpItemKindText = { fg = C.sec1, bg = U.darken(C.sec1, 0.68, C.bg) },
	CmpItemKindFunction = { fg = C.sec5 },
	CmpItemKindVariable = { fg = C.sec4 },
	CmpItemKindClass = { fg = C.sec6 },
	CmpItemKindInterface = { fg = C.base3 },
	CmpItemKindModule = { fg = C.base1 },
	CmpItemKindKeyword = { fg = C.sec0 },
	CmpItemKindField = { fg = C.base4 },
	CmpItemKindProperty = { fg = C.base2 },
	CmpItemKindEnum = { fg = C.sec7 },
}
