local M = {}
function M.get(colors, options)
	return {
		Comment = { fg = colors.base3, italic = O.italic_comments }, -- Comment text in base3 color, italicized if configured
		ColorColumn = { bg = colors.bg_visual }, -- Color column background set to bg_visual
		Conceal = { fg = colors.base0 }, -- Concealed text in base0 color

		Cursor = { fg = colors.bg, bg = colors.fg }, -- Cursor with background and foreground swapped
		lCursor = { fg = colors.bg }, -- Line cursor in background color
		CursorIM = { fg = colors.fg }, -- Cursor for input mode in foreground color
		CursorColumn = { bg = U.blend(colors.bg, colors.bg_visual, options.cursorline.blend) }, -- Cursor line background blended between bg and bg_visual
		CursorLine = { bg = colors.bg_highlight, bold = options.cursorline.bold }, -- Cursor line background with optional bold
		CursorLineNr = { fg = colors.fg_highlight, bold = options.cursorline.bold_number }, -- Cursor line number in highlight color, bold if configured
		CursorLineSign = {}, -- No specific color set for cursor line signs

		Directory = { fg = colors.fg_highlight }, -- Directory names in highlight color

		EndOfBuffer = { fg = colors.fg_sidebar }, -- End of buffer in sidebar color

		ErrorMsg = { fg = colors.error }, -- Error messages in error color

		VertSplit = { fg = colors.fg_inactive, bg = colors.bg }, -- Vertical split line with inactive foreground
		WinSeparator = { fg = colors.fg_inactive, bg = colors.bg }, -- Window separator with inactive foreground

		Folded = { fg = colors.fg_fold, bg = colors.bg_fold }, -- Folded text in fold foreground and background
		FoldColumn = { bg = colors.bg_fold, fg = colors.fg_fold }, -- Fold column with background and foreground set to fold colors

		SignColumn = { bg = colors.bg_sidebar, fg = colors.fg_sidebar }, -- Sign column in sidebar colors
		SignColumnSB = { bg = colors.bg_sidebar, fg = colors.fg_sidebar }, -- Same for the second sign column

		Substitute = { bg = colors.sec2, fg = colors.bg }, -- Substitute text background in sec2 color, foreground in bg color

		LineNr = { fg = colors.fg_sidebar }, -- Line numbers in sidebar color

		MatchParen = { underline = true, bold = true, sp = colors.bg_highlight }, -- Matched parentheses in bold, underlined, with background highlight

		ModeMsg = { fg = colors.fg, bold = true }, -- Mode message in foreground color and bold
		MsgArea = { fg = colors.fg }, -- Message area in foreground color
		MoreMsg = { fg = colors.sec2 }, -- More messages in sec2 color
		NonText = { fg = colors.base0 }, -- Non-text characters in base0 color

		Normal = { fg = colors.fg, bg = colors.bg }, -- Normal text in foreground and background colors
		NormalNC = { fg = colors.fg, bg = colors.bg }, -- Normal text in non-current windows
		NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar }, -- Normal text in status bar windows

		NormalFloat = { fg = colors.fg_float, bg = colors.bg_float }, -- Float window text with specific foreground and background
		FloatBorder = { fg = colors.fg_float_border, bg = colors.bg_float_border }, -- Float window border with specific colors

		Pmenu = { bg = colors.bg_popup, fg = colors.fg_popup, blend = 80 }, -- Popup menu with background and foreground colors
		PmenuSel = { bg = colors.sec0 }, -- Selected popup menu item in sec0 color
		PmenuSbar = { bg = colors.base1 }, -- Popup menu scrollbar in base1 color
		PmenuThumb = { bg = colors.base1, fg = colors.base1 }, -- Popup menu scrollbar thumb in base1 color

		Question = { fg = colors.info }, -- Question prompt in info color
		QuickFixLine = { bg = colors.bg_visual, bold = true }, -- Quick fix line with background set to bg_visual and bold

		Search = { bg = colors.base0, fg = colors.base3, bold = true, underline = true }, -- Search results with background in base0, foreground in base3, bold and underlined
		IncSearch = { bg = colors.sec2, fg = colors.base1, bold = true }, -- Incremental search with background in sec2, foreground in base1, bold
		CurSearch = { link = "IncSearch" }, -- Current search uses the same style as Incremental Search

		SpecialKey = { link = "NonText" }, -- Special keys linked to NonText style

		SpellBad = { sp = colors.error, undercurl = true }, -- Misspelled words with error color and undercurl
		SpellCap = { sp = colors.warning, undercurl = true }, -- Capitalized errors with warning color and undercurl
		SpellLocal = { sp = colors.info, undercurl = true }, -- Localized spelling errors with info color and undercurl
		SpellRare = { sp = colors.hint, undercurl = true }, -- Rare spelling errors with hint color and undercurl

		StatusLine = { fg = colors.fg_sidebar, bg = colors.bg_statusline }, -- Status line in current window with sidebar foreground and statusline background
		StatusLineNC = { fg = colors.sec0, bg = colors.bg_statusline }, -- Status line in non-current windows
		TabLine = { bg = colors.bg_statusline, fg = colors.fg }, -- Tab line in statusline background with foreground in fg color
		TabLineFill = { bg = colors.black0, fg = colors.none }, -- Tab line fill in black0 color with no foreground
		TabLineSel = { fg = colors.fg_bright, bg = colors.bg }, -- Active tab line with bright foreground and background in bg
		Title = { fg = colors.fg_bright, bold = true }, -- Title text with bright foreground and bold
		Visual = { bg = colors.bg_visual, bold = options.cursorline.bold }, -- Visual mode background with optional bold
		VisualNOS = { bg = colors.bg_visual }, -- Visual mode with "Not Owning the Selection" in bg_visual
		WarningMsg = { fg = colors.warning }, -- Warning messages in warning color
		Whitespace = { fg = colors.base1 }, -- Whitespace characters in base1 color
		WildMenu = { bg = colors.bg_visual }, -- Current match in wildmenu with background in bg_visual
		WinBar = { bg = colors.bg_dark, fg = colors.fg }, -- Window bar with dark background and foreground in fg color
		WinBarNC = { bg = colors.bg_dark, fg = colors.fg_inactive }, -- Non-current window bar with dark background and inactive foreground
	}
end

return M
