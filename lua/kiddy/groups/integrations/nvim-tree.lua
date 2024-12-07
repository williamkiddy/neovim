local C = require("kiddy.colors")

return {
	NvimTreeFolderName = { fg = C.fg },
	NvimTreeFolderIcon = { fg = C.sec0 },
	NvimTreeCursorLine = { bg = C.bg_highlight, fg = C.fg_highlight, blend = 30 },
	NvimTreeNormal = { fg = C.base2 },
	NvimTreeOpenedFolderName = { fg = C.sec7 },
	NvimTreeEmptyFolderName = { fg = C.base3 },
	NvimTreeIndentMarker = { fg = C.base4 },
	NvimTreeWinSeparator = { fg = C.base5 },
	NvimTreeRootFolder = { fg = C.sec6, bold = true },
	NvimTreeSymlink = { fg = C.base1 },
	NvimTreeStatuslineNc = { fg = C.base4, bg = C.bg_highlight },
	NvimTreeGitDirty = { fg = C.sec2 },
	NvimTreeGitNew = { fg = C.base1 },
	NvimTreeGitDeleted = { fg = C.sec3 },
	NvimTreeSpecialFile = { fg = C.base0 },
	NvimTreeImageFile = { fg = C.sec5 },
	NvimTreeOpenedFile = { fg = C.sec4 },
}
