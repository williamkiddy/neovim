local M = {}
function M.get(colors, options)
	return {
		NeoTreeCursorLine = { link = "NvimTreeCursorLine" },
		NeoTreeDirectoryIcon = { link = "NeoTreeFolderIcon" },
		NeoTreeDirectoryName = { link = "NvimTreeFolderName" },
		NeoTreeDirectoryNameOpened = { link = "NvimTreeOpenedFolderName" },
		NeoTreeRootName = { link = "NvimTreeRootFolder" },
		NeoTreeFileName = { link = "NvimTreeNormal" },
		--NeoTreeFileIcon = { fg = C.fg },
		NeoTreeFileNameOpened = { link = "NvimTreeOpenedFile" },
		NeoTreeGitAdded = { link = "NvimTreeGitNew" },
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
