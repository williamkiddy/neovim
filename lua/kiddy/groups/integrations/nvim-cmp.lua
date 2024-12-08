local C = require("kiddy.colors")
local U = require("kiddy.utils")
local M = {}
function M.get(colors, options)
	return {
		CmpItemAbbr = { fg = C.base5 },
		CmpItemAbbrMatch = { fg = C.fg_selected, bg = C.bg_selected, bold = true },
		CmpItemAbbrMatchFuzzy = { fg = C.sec3, bg = C.base0, bold = true },
		CmpDocumentation = { bg = C.base0 },
		CmpDocumentationBorder = { fg = C.base4, bg = C.base0 },
		CmpPmenu = { fg = C.sec6, bg = C.base0 },
		CmpPmenuSel = { bg = C.sec2 },
		CmpItemKindText = { fg = C.fg_highlight },
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
		CmpItemKindSnippet = { fg = C.def2 }, -- Snippets
	}
end
return M
