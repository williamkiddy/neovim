local M = {}
local U = require("cocoa.utils")
function M.get(colors, options)
	-- Layout from folke/tokyonight.nvim

	return {
		-- These groups are for the native LSP client. Some other LSP clients may
		-- use these groups, or use their own.
		LspReferenceText = { bg = colors.base6 }, -- used for highlighting "text" references
		LspReferenceRead = { bg = colors.base6 }, -- used for highlighting "read" references
		LspReferenceWrite = { bg = colors.base6 }, -- used for highlighting "write" references
		LspSignatureActiveParameter = { bg = U.blend(colors.bg_highlight, colors.bg, 0.4), bold = true },
		LspCodeLens = { fg = colors.comment },
		LspInlayHint = { bg = U.blend(colors.acc3, colors.bg, 0.1), fg = colors.def8 },
		LspInfoBorder = { fg = colors.fg_highlight, bg = colors.bg_bright },

		-- diagnostics
		DiagnosticError = { fg = colors.error, undercurl = options.diagnostic.undercurl }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticWarn = { fg = colors.warning, undercurl = options.diagnostic.undercurl }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticInfo = { fg = colors.info, undercurl = options.diagnostic.undercurl }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticHint = { fg = colors.hint, undercurl = options.diagnostic.undercurl }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
		DiagnosticVirtualTextError = { bg = U.blend(colors.error, colors.bg, 0.1), fg = colors.error }, -- Used for "Error" diagnostic virtual text
		DiagnosticVirtualTextWarn = { bg = U.blend(colors.warning, colors.bg, 0.1), fg = colors.warning }, -- Used for "Warning" diagnostic virtual text
		DiagnosticVirtualTextInfo = { bg = U.blend(colors.info, colors.bg, 0.1), fg = colors.info }, -- Used for "Information" diagnostic virtual text
		DiagnosticVirtualTextHint = { bg = U.blend(colors.hint, colors.bg, 0.1), fg = colors.hint }, -- Used for "Hint" diagnostic virtual text
		DiagnosticUnderlineError = { undercurl = true, sp = colors.error }, -- Used to underline "Error" diagnostics
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning }, -- Used to underline "Warning" diagnostics
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info }, -- Used to underline "Information" diagnostics
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint }, -- Used to underline "Hint" diagnostics

		-- Health
		healthError = { fg = colors.error },
		healthSuccess = { fg = colors.Hint },
		healthWarning = { fg = colors.warning },

		-- diff
		diffAdded = { fg = colors.git.add },
		diffRemoved = { fg = colors.git.delete },
		diffChanged = { fg = colors.git.change },
		diffOldFile = { fg = colors.def2 },
		diffNewFile = { fg = colors.def1 },
		diffFile = { fg = colors.acc3 },
		diffLine = {},
		diffIndexLine = { fg = colors.def5 },
		helpExample = { link = "Comment" },
	}
end

return M
