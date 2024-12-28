local M = {}
function M.get(colors, options)
	return {
		NvimTreeFolderName = { fg = colors.fg },
		NvimTreeFolderIcon = { fg = colors.sec0 },
		NvimTreeCursorLine = { bg = colors.bg_selected },
		NvimTreeNormal = { fg = colors.sec7 },
		NvimTreeOpenedFolderName = { fg = colors.sec7 },
		NvimTreeEmptyFolderName = { fg = colors.base3 },
		NvimTreeIndentMarker = { fg = colors.base4 },
		NvimTreeWinSeparator = { fg = colors.fg_sidebar },
		NvimTreeRootFolder = { fg = colors.sec2, bold = true },
		NvimTreeSymlink = { fg = colors.base1 },
		NvimTreeStatuslineNc = { fg = colors.base4, bg = colors.bg_highlight },
		NvimTreeGitDirty = { fg = colors.sec2 },
		NvimTreeGitNew = { fg = colors.base3 },
		NvimTreeGitDeleted = { fg = colors.sec1 },
		NvimTreeSpecialFile = { fg = colors.base0 },
		NvimTreeImageFile = { fg = colors.sec5 },
		NvimTreeOpenedFile = { fg = colors.sec4 },
	}
end
return M
