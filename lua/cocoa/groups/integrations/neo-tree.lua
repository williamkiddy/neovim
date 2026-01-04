local M = {}
function M.get(colors, options)
	return {
		NeoTreeTitleBar = { link = "NvimTreeNormal" },
		NeoTreeCursorLine = { link = "NvimTreeCursorLine" },
		NeoTreeDirectoryIcon = { link = "NeoTreeFolderIcon" },
		NeoTreeDirectoryName = { link = "NvimTreeFolderName" },
		NeoTreeDirectoryNameOpened = { link = "NvimTreeOpenedFolderName" },
		NeoTreeDotfile = { fg = colors.sec4 },
		NeoTreeDimText = { fg = colors.fg_dark },
		NeoTreeRootName = { link = "NvimTreeRootFolder" },
		NeoTreeFileName = { link = "NvimTreeNormal" },
		--NeoTreeFileIcon = { fg = C.fg },
		NeoTreeFloatBorder = { fg = colors.fg_float_border },
		NeoTreeFloatTitle = { link = "NeoTreeTitleBar" },
		NeoTreeFileNameOpened = { link = "NvimTreeOpenedFile" },
		NeoTreeGitAdded = { link = "NvimTreeGitNew" },
		NeoTreeGitDeleted = { link = "NvimTreeGitDirty" },
		NeoTreeGitConflict = { link = "NvimTreeGitStaged" },
		NeoTreeGitModified = { link = "NvimTreeGitDirty" },
		NeoTreeGitUntracked = { link = "NvimTreeGitStaged" },
		NeoTreeNormal = { link = "NvimTreeNormal" },
		NeoTreeNormalNC = { link = "NvimTreeNormalNC" },
		NeoTreeSymbolicLinkTarget = { link = "NvimTreeSymlink" },
		NeoTreeHiddenByName = { link = "NvimTreeSpecialFile" },
		NeoTreeIndentMarker = { link = "NvimTreeIndentMarker" },
		NeoTreeExpander = { link = "NeoTreeCursorLine" },
	}
end

return M
