local M = {}
local U = require("cocoa.utils")

function M.get(colors, options)
	return {
		NvimTreeNormal = { fg = colors.A4, bg = colors.A0 },
		NvimTreeFolderName = { fg = colors.A4 },
		NvimTreeFolderIcon = { fg = colors.B1 },
		NvimTreeCursorLine = { bg = colors.A2 },
		NvimTreeOpenedFolderName = { fg = colors.A5, bold = true },
		NvimTreeEmptyFolderName = { fg = colors.A3 },
		NvimTreeIndentMarker = { fg = colors.A2 },
		NvimTreeWinSeparator = { fg = colors.A0, bg = colors.A0 },
		NvimTreeRootFolder = { fg = colors.B0, bold = true },
		NvimTreeSymlink = { fg = colors.C10 },
		NvimTreeStatuslineNC = { fg = colors.A3, bg = colors.A1 },
		NvimTreeGitDirty = { fg = colors.C4 },
		NvimTreeGitNew = { fg = colors.C3 },
		NvimTreeGitDeleted = { fg = colors.C0 },
		NvimTreeSpecialFile = { fg = colors.B0, underline = true },
		NvimTreeImageFile = { fg = colors.C9 },
		NvimTreeOpenedFile = { fg = colors.B0, bold = true },
	}
end

return M
