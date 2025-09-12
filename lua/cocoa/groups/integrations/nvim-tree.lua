local M = {}
local U = require("cocoa.utils")
function M.get(colors, options)
	return {
		NvimTreeFolderName = { fg = colors.fg },
		NvimTreeFolderIcon = { fg = colors.sec3 },
		NvimTreeCursorLine = { bg = colors.bg_selected },
		NvimTreeNormal = { fg = colors.fg },
		NvimTreeOpenedFolderName = { link = "NvimTreeNormal" },
		NvimTreeEmptyFolderName = { fg = U.blend(colors.fg, colors.bg, 0.144) },
		NvimTreeIndentMarker = { fg = colors.base4 },
		NvimTreeWinSeparator = { fg = colors.fg_sidebar },
		NvimTreeRootFolder = { fg = colors.sec2, bold = true },
		NvimTreeSymlink = { fg = colors.base6 },
		NvimTreeStatuslineNC = { fg = colors.base4, bg = colors.bg_highlight },
		NvimTreeGitDirty = { fg = colors.sec15 },
		NvimTreeGitNew = { fg = colors.git.add },
		NvimTreeGitDeleted = { fg = colors.git.delete },
		NvimTreeSpecialFile = { fg = colors.base0 },
		NvimTreeImageFile = { fg = colors.sec5 },
		NvimTreeOpenedFile = { fg = colors.sec4 },
	}
end

return M
