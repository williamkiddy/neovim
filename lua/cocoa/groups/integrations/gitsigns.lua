local M = {}

function M.get(colors, options)
	return {
		GitSignsAdd = { fg = colors.C3 },
		GitSignsChange = { fg = colors.C4 },
		GitSignsDelete = { fg = colors.C0 },

		GitSignsCurrentLineBlame = { fg = colors.A3 },

		GitSignsAddPreview = { fg = colors.C3, bg = colors.A0 },
		GitSignsDeletePreview = { fg = colors.C0, bg = colors.A0 },

		GitSignsAddInline = {
			fg = colors.C3,
			bg = colors.A0,
			bold = true,
		},
		GitSignsDeleteInline = {
			fg = colors.C0,
			bg = colors.A0,
			bold = true,
		},
		GitSignsChangeInline = {
			fg = colors.C4,
			bg = colors.A0,
			bold = true,
		},

		GitSignsDeleteVirtLn = { bg = colors.A0, fg = colors.C0 },
	}
end

return M
