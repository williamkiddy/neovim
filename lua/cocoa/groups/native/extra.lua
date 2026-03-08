local M = {}
local U = require("cocoa.utils")

function M.get(colors, options)
	return {
		-- LSP References (Highlight wenn der Cursor auf einem Wort steht)
		LspReferenceText = { bg = colors.A2 },
		LspReferenceRead = { bg = colors.A2 },
		LspReferenceWrite = { bg = colors.A3 },
		LspSignatureActiveParameter = { bg = U.blend(colors.B1, colors.A0, 0.2), bold = true },
		LspCodeLens = { fg = colors.A3 },
		LspInlayHint = { bg = U.blend(colors.B2, colors.A0, 0.05), fg = colors.A3 },
		LspInfoBorder = { fg = colors.B1, bg = colors.A1 },

		-- Diagnostics (Fehler, Warnungen etc.)
		DiagnosticError = { fg = colors.C1, undercurl = options.diagnostic.undercurl },
		DiagnosticWarn = { fg = colors.C4, undercurl = options.diagnostic.undercurl },
		DiagnosticInfo = { fg = colors.C6, undercurl = options.diagnostic.undercurl },
		DiagnosticHint = { fg = colors.C10, undercurl = options.diagnostic.undercurl },

		-- Virtual Text (Text am Ende der Zeile)
		DiagnosticVirtualTextError = { bg = U.blend(colors.C1, colors.A0, 0.1), fg = colors.C1 },
		DiagnosticVirtualTextWarn = { bg = U.blend(colors.C4, colors.A0, 0.1), fg = colors.C4 },
		DiagnosticVirtualTextInfo = { bg = U.blend(colors.C6, colors.A0, 0.1), fg = colors.C6 },
		DiagnosticVirtualTextHint = { bg = U.blend(colors.C10, colors.A0, 0.1), fg = colors.C10 },

		-- Underlines
		DiagnosticUnderlineError = { undercurl = true, sp = colors.C1 },
		DiagnosticUnderlineWarn = { undercurl = true, sp = colors.C4 },
		DiagnosticUnderlineInfo = { undercurl = true, sp = colors.C6 },
		DiagnosticUnderlineHint = { undercurl = true, sp = colors.C10 },

		-- Health Check
		healthError = { fg = colors.C1 },
		healthSuccess = { fg = colors.C3 },
		healthWarning = { fg = colors.C4 },

		-- Diff
		diffAdded = { fg = colors.C3 },
		diffRemoved = { fg = colors.C0 },
		diffChanged = { fg = colors.C4 },
		diffOldFile = { fg = colors.C0 },
		diffNewFile = { fg = colors.C3 },
		diffFile = { fg = colors.B2 },
		diffLine = { fg = colors.A3 },
		diffIndexLine = { fg = colors.B1 },
		helpExample = { link = "Comment" },
	}
end

return M
