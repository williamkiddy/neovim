local C = require("kiddy.colors")

return {
	-- Git Signs for added, changed, and deleted lines
	GitSignsAdd = { fg = C.sec2 }, -- Color for added lines
	GitSignsChange = { fg = C.sec3 }, -- Color for changed lines
	GitSignsDelete = { fg = C.base4 }, -- Color for deleted lines

	-- Blame text on the current line
	GitSignsCurrentLineBlame = { fg = C.base1 },

	-- Preview for adding lines in GitSigns
	GitSignsAddPreview = { fg = C.sec5, bg = C.base0 }, -- Preview for added lines
	-- Preview for deleting lines in GitSigns
	GitSignsDeletePreview = { fg = C.base4, bg = C.base0 }, -- Preview for deleted lines

	-- Word diff (inline) for added, deleted, and changed lines
	GitSignsAddInline = {
		fg = C.sec2,
		bg = C.base0,
		bold = true,
	}, -- Inline for added lines
	GitSignsDeleteInline = {
		fg = C.base4,
		bg = C.base0,
		bold = true,
	}, -- Inline for deleted lines
	GitSignsChangeInline = {
		fg = C.sec6,
		bg = C.base0,
		bold = true,
	}, -- Inline for changed lines

	-- Virtual line for deleted lines in GitSigns
	GitSignsDeleteVirtLn = { bg = C.base0, fg = C.base4 }, -- Virtual line for deleted lines
}
