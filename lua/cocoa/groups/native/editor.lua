local M = {}
local U = require("cocoa.utils")

function M.get(colors, options)
	return {
		Comment = { fg = colors.fg_dark, italic = options.italic_comments },

		ColorColumn = { bg = colors.bg_visual },

		Conceal = { fg = colors.A3 },

		Cursor = { fg = colors.bg, bg = colors.fg },
		lCursor = { fg = colors.bg },
		CursorIM = { fg = colors.fg },

		CursorColumn = { bg = U.blend(colors.bg_bright, colors.fg_visual, options.cursorline.blend) },

		CursorLine = { bg = colors.bg_highlight, bold = options.cursorline.bold },

		CursorLineNr = { fg = colors.fg_highlight, bold = options.cursorline.bold_number },

		CursorLineSign = { bg = colors.bg_sidebar },

		Directory = { fg = colors.fg_highlight },

		EndOfBuffer = { fg = colors.fg_sidebar },

		ErrorMsg = { fg = colors.error },

		VertSplit = { fg = colors.fg_inactive, bg = colors.bg },
		WinSeparator = { fg = colors.fg_inactive, bg = colors.bg },

		Folded = { fg = colors.fg_fold, bg = colors.bg_fold },
		FoldColumn = { bg = colors.bg_fold, fg = colors.fg_fold },

		SignColumn = { bg = colors.bg_sidebar, fg = colors.fg_sidebar },
		SignColumnSB = { bg = colors.bg_sidebar, fg = colors.fg_sidebar },

		Substitute = { bg = colors.C0, fg = colors.bg }, -- rose on dark bg

		LineNr = { fg = colors.fg_sidebar },

		MatchParen = { underline = true, bold = true, sp = colors.bg_highlight },

		ModeMsg = { fg = colors.fg, bold = true },
		MsgArea = { fg = colors.fg },
		MoreMsg = { fg = colors.C6 },

		NonText = { fg = colors.A3 },

		Normal = { fg = colors.fg, bg = colors.bg },
		NormalNC = { fg = colors.fg, bg = colors.bg },
		NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },

		NormalFloat = { fg = colors.fg_float, bg = colors.bg_float },
		FloatBorder = { fg = colors.fg_float_border, bg = colors.bg_float_border },

		Pmenu = { bg = colors.bg_popup, fg = colors.fg_popup, blend = 80 },
		PmenuSel = { bg = colors.bg_selected },
		PmenuSbar = { bg = colors.A2 },
		PmenuThumb = { bg = colors.A4 },

		Question = { fg = colors.info },

		QuickFixLine = { bg = colors.bg_visual, bold = true },

		Search = { bg = colors.A3, fg = colors.A6, bold = true, underline = true },
		IncSearch = { bg = colors.B3, fg = colors.A0, bold = true },
		CurSearch = { link = "IncSearch" },

		SpecialKey = { link = "NonText" },

		SpellBad = { sp = colors.error, undercurl = true },
		SpellCap = { sp = colors.warning, undercurl = true },
		SpellLocal = { sp = colors.info, undercurl = true },
		SpellRare = { sp = colors.hint, undercurl = true },

		StatusLine = { fg = colors.fg_statusline, bg = colors.bg_statusline },
		StatusLineNC = { fg = colors.fg_inactive, bg = colors.bg_statusline },

		TabLine = { bg = colors.bg_statusline, fg = colors.fg },
		TabLineFill = { bg = colors.A0, fg = colors.none },
		TabLineSel = { fg = colors.fg_bright, bg = colors.bg },

		Title = { fg = colors.fg_bright, bold = true },

		Visual = { bg = colors.bg_visual, bold = options.cursorline.bold },
		VisualNOS = { bg = colors.bg_visual },

		WarningMsg = { fg = colors.warning },

		Whitespace = { fg = colors.A2 },

		WildMenu = { bg = colors.bg_visual },

		WinBar = { bg = colors.bg_dark, fg = colors.fg },
		WinBarNC = { bg = colors.bg_dark, fg = colors.fg_inactive },
	}
end

return M
