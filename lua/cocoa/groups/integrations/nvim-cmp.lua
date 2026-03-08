local M = {}

function M.get(colors, options)
	return {
		CmpItemAbbr = { fg = colors.A4 },
		CmpItemAbbrMatch = { fg = colors.B0, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = colors.B1, bold = true },
		CmpItemMenu = { fg = colors.A3, bg = colors.none },
		CmpItemMenuLsp = { fg = colors.C8, bg = colors.none },
		CmpItemMenuSnippet = { fg = colors.C5, bg = colors.none },

		SpecialCmpBorder = { fg = colors.A2, bg = colors.A1 },
		CmpScrollbar = { bg = colors.A1 },
		CmpScrollbarThumb = { bg = colors.A3 },
		CmpGhostText = { fg = colors.A3, italic = true },

		CmpDocumentation = { bg = colors.A0 },
		CmpDocumentationBorder = { fg = colors.A2, bg = colors.A0 },
		CmpPmenu = { bg = colors.A1 },
		CmpPmenuSel = { bg = colors.A2, fg = colors.none },

		CmpItemKindText = { fg = colors.A5 },
		CmpItemKindMethod = { link = "Function" },
		CmpItemKindFunction = { link = "Function" },
		CmpItemKindConstructor = { link = "Function" },
		CmpItemKindField = { fg = colors.C10 },
		CmpItemKindVariable = { link = "Identifier" },
		CmpItemKindClass = { link = "Type" },
		CmpItemKindInterface = { link = "Type" },
		CmpItemKindModule = { link = "Include" },
		CmpItemKindProperty = { link = "Identifier" },
		CmpItemKindUnit = { link = "Constant" },
		CmpItemKindValue = { link = "Constant" },
		CmpItemKindEnum = { link = "Constant" },
		CmpItemKindKeyword = { link = "Keyword" },
		CmpItemKindSnippet = { fg = colors.C5 },
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
		CmpItemKindUnknown = { fg = colors.A3 },
	}
end

return M
