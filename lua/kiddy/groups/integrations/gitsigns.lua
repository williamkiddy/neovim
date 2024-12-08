local M = {}
function M.get(colors, options)
	return {
		-- Git Signs for added, changed, and deleted lines
		GitSignsAdd = { fg = colors.sec2 }, --colorsolor for added lines
		GitSignsChange = { fg = colors.sec3 }, --colorsolor for changed lines
		GitSignsDelete = { fg = colors.base4 }, --colorsolor for deleted lines

		-- Blame text on the current line
		GitSignsCurrentLineBlame = { fg = colors.base1 },

		-- Preview for adding lines in GitSigns
		GitSignsAddPreview = { fg = colors.sec5, bg = colors.base0 }, -- Preview for added lines
		-- Preview for deleting lines in GitSigns
		GitSignsDeletePreview = { fg = colors.base4, bg = colors.base0 }, -- Preview for deleted lines

		-- Word diff (inline) for added, deleted, and changed lines
		GitSignsAddInline = {
			fg = colors.sec2,
			bg = colors.base0,
			bold = true,
		}, -- Inline for added lines
		GitSignsDeleteInline = {
			fg = colors.base4,
			bg = colors.base0,
			bold = true,
		}, -- Inline for deleted lines
		GitSignsChangeInline = {
			fg = colors.sec6,
			bg = colors.base0,
			bold = true,
		}, -- Inline for changed lines

		-- Virtual line for deleted lines in GitSigns
		GitSignsDeleteVirtLn = { bg = colors.base0, fg = colors.base4 }, -- Virtual line for deleted lines
	}
end

return M
