local C = require("kiddy.colors.colors") -- previous color palette!
local U = require("kiddy.utils")

function C.extend_palette(options)
	C.none = "NONE"
	-- Backgrounds
	C.bg = C.base0 -- Main background
	C.bg_dark = C.base1 -- Darker background for inactive areas
	C.bg_inactive = C.base2 -- Background for inactive windows
	C.bg_highlight = U.lighten(C.sec0, 0.08, C.base0) -- Highlighted background
	C.bg_visual = C.sec3 -- for highlighting (cursor)
	C.bg_bright = C.sec8 -- Bright background
	C.bg_sidebar = C.base6 -- Sidebar background
	C.bg_statusline = C.none -- Statusline background
	C.bg_selected = C.sec5 -- Background for selected items
	C.bg_fold = C.base2 -- Background for folded sections

	-- Foregrounds
	C.fg = C.base5 -- Main foreground (text)
	C.fg_dark = C.base6 -- Darker text
	C.fg_inactive = C.base4 -- Inactive window text
	C.fg_highlight = U.lighten(C.sec1, 0.2, C.base4) -- Highlighted text
	C.fg_bright = C.base6 -- Bright foreground (text)
	C.fg_visual = C.sec3 -- Visual mode text
	C.fg_sidebar = C.sec2 -- Sidebar text
	C.fg_statusline = C.sec7 -- Statusline text
	C.fg_selected = C.sec6 -- Text for selected items
	C.fg_fold = C.base4 -- Text for folded sections

	-- Popups
	C.bg_popup = C.base6 -- Popup background
	C.fg_popup = C.sec6 -- Popup text
	C.bg_popup_border = C.base1 -- Popup border background
	C.fg_popup_border = C.sec3 -- Popup border text

	-- Floating windows
	C.bg_float = C.base1 -- Background for floating windows
	C.fg_float = C.base5 -- Text for floating windows
	C.bg_float_border = C.base3 -- Border background for floating windows
	C.fg_float_border = C.sec3 -- Border text for floating windows

	-- Diff highlighting
	C.diff = {
		change0 = C.sec2,
		change1 = C.sec4,
		add = C.sec5, -- Additions in diff
		delete = C.base4, -- Deletions in diff
	}

	-- Git
	C.git = {
		add = C.sec5, -- Git additions
		delete = C.base4, -- Git deletions
		change = C.sec6, -- Git changes
	}

	-- Diagnostics
	C.error = C.def0 -- Error color
	C.warn = C.def1 -- Warning color
	C.warning = C.accent5 -- Additional warning color
	C.hint = C.def3 -- Hint color
	C.info = C.sec2 -- Info color
end

return C
