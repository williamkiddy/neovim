local C = require("kiddy.colors")
local U = require("kiddy.utils")
local O = require("kiddy.config").options
local M = {}
function M.get(colors, options)
	return {
		Comment = { fg = C.base3, italic = O.italic_comments }, -- Comment text in base3 color, italicized if configured
		ColorColumn = { bg = C.bg_visual }, -- Color column background set to bg_visual
		Conceal = { fg = C.base0 }, -- Concealed text in base0 color

		Cursor = { fg = C.bg, bg = C.fg }, -- Cursor with background and foreground swapped
		lCursor = { fg = C.bg }, -- Line cursor in background color
		CursorIM = { fg = C.fg }, -- Cursor for input mode in foreground color
		CursorColumn = { bg = U.blend(C.bg, C.bg_visual, O.cursorline.blend) }, -- Cursor line background blended between bg and bg_visual
		CursorLine = { bg = C.bg_highlight, bold = O.cursorline.bold }, -- Cursor line background with optional bold
		CursorLineNr = { fg = C.fg_highlight, bold = O.cursorline.bold_number }, -- Cursor line number in highlight color, bold if configured
		CursorLineSign = {}, -- No specific color set for cursor line signs

		Directory = { fg = C.fg_highlight }, -- Directory names in highlight color

		EndOfBuffer = { fg = C.fg_sidebar }, -- End of buffer in sidebar color

		ErrorMsg = { fg = C.error }, -- Error messages in error color

		VertSplit = { fg = C.fg_inactive, bg = C.bg }, -- Vertical split line with inactive foreground
		WinSeparator = { fg = C.fg_inactive, bg = C.bg }, -- Window separator with inactive foreground

		Folded = { fg = C.fg_fold, bg = C.bg_fold }, -- Folded text in fold foreground and background
		FoldColumn = { bg = C.bg_fold, fg = C.fg_fold }, -- Fold column with background and foreground set to fold colors

		SignColumn = { bg = C.bg_sidebar, fg = C.fg_sidebar }, -- Sign column in sidebar colors
		SignColumnSB = { bg = C.bg_sidebar, fg = C.fg_sidebar }, -- Same for the second sign column

		Substitute = { bg = C.sec2, fg = C.bg }, -- Substitute text background in sec2 color, foreground in bg color

		LineNr = { fg = C.fg_sidebar }, -- Line numbers in sidebar color

		MatchParen = { underline = true, bold = true, sp = C.bg_highlight }, -- Matched parentheses in bold, underlined, with background highlight

		ModeMsg = { fg = C.fg, bold = true }, -- Mode message in foreground color and bold
		MsgArea = { fg = C.fg }, -- Message area in foreground color
		MoreMsg = { fg = C.sec2 }, -- More messages in sec2 color
		NonText = { fg = C.base0 }, -- Non-text characters in base0 color

		Normal = { fg = C.fg, bg = C.bg }, -- Normal text in foreground and background colors
		NormalNC = { fg = C.fg, bg = C.bg }, -- Normal text in non-current windows
		NormalSB = { fg = C.fg_sidebar, bg = C.bg_sidebar }, -- Normal text in status bar windows

		NormalFloat = { fg = C.fg_float, bg = C.bg_float }, -- Float window text with specific foreground and background
		FloatBorder = { fg = C.fg_float_border, bg = C.bg_float_border }, -- Float window border with specific colors

		Pmenu = { bg = C.bg_popup, fg = C.fg_popup, blend = 80 }, -- Popup menu with background and foreground colors
		PmenuSel = { bg = C.sec0 }, -- Selected popup menu item in sec0 color
		PmenuSbar = { bg = C.base1 }, -- Popup menu scrollbar in base1 color
		PmenuThumb = { bg = C.base1, fg = C.base1 }, -- Popup menu scrollbar thumb in base1 color

		Question = { fg = C.info }, -- Question prompt in info color
		QuickFixLine = { bg = C.bg_visual, bold = true }, -- Quick fix line with background set to bg_visual and bold

		Search = { bg = C.base0, fg = C.base3, bold = true, underline = true }, -- Search results with background in base0, foreground in base3, bold and underlined
		IncSearch = { bg = C.sec2, fg = C.base1, bold = true }, -- Incremental search with background in sec2, foreground in base1, bold
		CurSearch = { link = "IncSearch" }, -- Current search uses the same style as Incremental Search

		SpecialKey = { link = "NonText" }, -- Special keys linked to NonText style

		SpellBad = { sp = C.error, undercurl = true }, -- Misspelled words with error color and undercurl
		SpellCap = { sp = C.warning, undercurl = true }, -- Capitalized errors with warning color and undercurl
		SpellLocal = { sp = C.info, undercurl = true }, -- Localized spelling errors with info color and undercurl
		SpellRare = { sp = C.hint, undercurl = true }, -- Rare spelling errors with hint color and undercurl

		StatusLine = { fg = C.fg_sidebar, bg = C.bg_statusline }, -- Status line in current window with sidebar foreground and statusline background
		StatusLineNC = { fg = C.sec0, bg = C.bg_statusline }, -- Status line in non-current windows
		TabLine = { bg = C.bg_statusline, fg = C.fg }, -- Tab line in statusline background with foreground in fg color
		TabLineFill = { bg = C.black0, fg = C.none }, -- Tab line fill in black0 color with no foreground
		TabLineSel = { fg = C.fg_bright, bg = C.bg }, -- Active tab line with bright foreground and background in bg
		Title = { fg = C.fg_bright, bold = true }, -- Title text with bright foreground and bold
		Visual = { bg = C.bg_visual, bold = O.cursorline.bold }, -- Visual mode background with optional bold
		VisualNOS = { bg = C.bg_visual }, -- Visual mode with "Not Owning the Selection" in bg_visual
		WarningMsg = { fg = C.warning }, -- Warning messages in warning color
		Whitespace = { fg = C.base1 }, -- Whitespace characters in base1 color
		WildMenu = { bg = C.bg_visual }, -- Current match in wildmenu with background in bg_visual
		WinBar = { bg = C.bg_dark, fg = C.fg }, -- Window bar with dark background and foreground in fg color
		WinBarNC = { bg = C.bg_dark, fg = C.fg_inactive }, -- Non-current window bar with dark background and inactive foreground
	}
end
return M
