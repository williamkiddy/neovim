local C = require("Cirqla.colors")

return {
	NvimTreeFolderName = { fg = C.fg },
	NvimTreeFolderIcon = { fg = C["011010"] },
	NvimTreeCursorLine = { bg = C.bg_highlight, fg = C.fg_highlight, blend = 30 },
	NvimTreeNormal = { fg = C["010101"] },
	NvimTreeOpenedFolderName = { fg = C["011011"] },
	NvimTreeEmptyFolderName = { fg = C["000101"] },
	NvimTreeIndentMarker = { fg = C["010000"] },
	NvimTreeWinSeparator = { fg = C["010111"] },
	NvimTreeRootFolder = { fg = C["011110"], bold = true },
	NvimTreeSymlink = { fg = C["010100"] },
	NvimTreeStatuslineNc = { fg = C["000111"], bg = C.bg_highlight },
	NvimTreeGitDirty = { fg = C["001000"] },
	NvimTreeGitNew = { fg = C["010100"] },
	NvimTreeGitDeleted = { fg = C["011001"] },
	NvimTreeSpecialFile = { fg = C["000010"] },
	NvimTreeImageFile = { fg = C["010010"] },
	NvimTreeOpenedFile = { fg = C["010001"] },
}
