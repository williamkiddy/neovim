local U = require("kiddy.utils")
local M = {}
function M.get(colors, options)
	return {
		Comment = { fg = colors.sec8, italic = options.italic_comments }, -- Comment text, italicized if configured
		ColorColumn = { bg = colors.bg_visual }, -- Color column background
		Conceal = { fg = colors.base0 }, -- Concealed text

		Cursor = { fg = colors.bg, bg = colors.fg }, -- Cursor with swapped foreground and background
		lCursor = { fg = colors.bg }, -- Line cursor in background color
		CursorIM = { fg = colors.fg }, -- Cursor for input mode in foreground color
		CursorColumn = { bg = U.blend(colors.bg, colors.bg_visual, options.cursorline.blend) }, -- Cursor line background blended
		CursorLine = { bg = colors.bg_highlight, bold = options.cursorline.bold }, -- Cursor line background with optional bold
		CursorLineNr = { fg = colors.fg_highlight, bold = options.cursorline.bold_number }, -- Cursor line number in highlight color
		CursorLineSign = {}, -- No specific color for cursor line signs

		Directory = { fg = colors.fg_highlight }, -- Directory names in highlight color

		EndOfBuffer = { fg = colors.fg_sidebar }, -- End of buffer in sidebar color

		ErrorMsg = { fg = colors.error }, -- Error messages

		VertSplit = { fg = colors.fg_inactive, bg = colors.bg }, -- Vertical split line with inactive foreground
		WinSeparator = { fg = colors.fg_inactive, bg = colors.bg }, -- Window separator with inactive foreground

		Folded = { fg = colors.fg_fold, bg = colors.bg_fold }, -- Folded text
		FoldColumn = { bg = colors.bg_fold, fg = colors.fg_fold }, -- Fold column with background and foreground

		SignColumn = { bg = colors.bg_sidebar, fg = colors.fg_sidebar }, -- Sign column in sidebar colors
		SignColumnSB = { bg = colors.bg_sidebar, fg = colors.fg_sidebar }, -- Second sign column

		Substitute = { bg = colors.sec2, fg = colors.bg }, -- Substitute text background, foreground in background color

		LineNr = { fg = colors.fg_sidebar }, -- Line numbers in sidebar color

		MatchParen = { underline = true, bold = true, sp = colors.bg_highlight }, -- Matched parentheses in bold and underlined
		ModeMsg = { fg = colors.fg, bold = true }, -- Mode message in foreground color and bold
		MsgArea = { fg = colors.fg }, -- Message area in foreground color
		MoreMsg = { fg = colors.sec2 }, -- More messages

		NonText = { fg = colors.base0 }, -- Non-text characters

		Normal = { fg = colors.fg, bg = colors.bg }, -- Normal text in foreground and background
		NormalNC = { fg = colors.fg, bg = colors.bg }, -- Normal text in non-current windows
		NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar }, -- Normal text in status bar windows

		NormalFloat = { fg = colors.fg_float, bg = colors.bg_float }, -- Float window text
		FloatBorder = { fg = colors.fg_float_border, bg = colors.bg_float_border }, -- Float window border

		Pmenu = { bg = colors.bg_popup, fg = colors.fg_popup, blend = 80 }, -- Popup menu
		PmenuSel = { bg = colors.bg_selected }, -- Selected popup menu item
		PmenuSbar = { bg = colors.base1 }, -- Popup menu scrollbar
		PmenuThumb = { bg = colors.base1, fg = colors.base1 }, -- Popup menu scrollbar thumb

		Question = { fg = colors.info }, -- Question prompt
		QuickFixLine = { bg = colors.bg_visual, bold = true }, -- Quick fix line

		Search = { bg = colors.base0, fg = colors.base3, bold = true, underline = true }, -- Search results
		IncSearch = { bg = colors.sec2, fg = colors.base1, bold = true }, -- Incremental search
		CurSearch = { link = "IncSearch" }, -- Current search style same as incremental search

		SpecialKey = { link = "NonText" }, -- Special keys linked to NonText style

		SpellBad = { sp = colors.error, undercurl = true }, -- Misspelled words
		SpellCap = { sp = colors.warning, undercurl = true }, -- Capitalized errors
		SpellLocal = { sp = colors.info, undercurl = true }, -- Localized spelling errors
		SpellRare = { sp = colors.hint, undercurl = true }, -- Rare spelling errors

		StatusLine = { fg = colors.fg_sidebar, bg = colors.bg_statusline }, -- Status line in current window
		StatusLineNC = { fg = colors.sec0, bg = colors.bg_statusline }, -- Status line in non-current windows
		TabLine = { bg = colors.bg_statusline, fg = colors.fg }, -- Tab line
		TabLineFill = { bg = colors.black0, fg = colors.none }, -- Tab line fill
		TabLineSel = { fg = colors.fg_bright, bg = colors.bg }, -- Active tab line

		Title = { fg = colors.fg_bright, bold = true }, -- Title text with bright foreground and bold
		Visual = { bg = colors.bg_visual, bold = options.cursorline.bold }, -- Visual mode background
		VisualNOS = { bg = colors.bg_visual }, -- Visual mode in "Not Owning the Selection"
		WarningMsg = { fg = colors.warning }, -- Warning messages
		Whitespace = { fg = colors.base1 }, -- Whitespace characters
		WildMenu = { bg = colors.bg_visual }, -- Current match in wildmenu
		WinBar = { bg = colors.bg_dark, fg = colors.fg }, -- Window bar with dark background
		WinBarNC = { bg = colors.bg_dark, fg = colors.fg_inactive }, -- Non-current window bar
	}
end

return M
