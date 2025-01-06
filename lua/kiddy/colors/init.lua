local C = require("kiddy.colors.colors") -- previous color palette!
local U = require("kiddy.utils")

function C.extend_palette(options)
	C.none = "NONE"
	-- Backgrounds
	C.bg = C.base0                              -- Main background
	C.bg_dark = C.base1                         -- Darker background for inactive areas
	C.bg_inactive = C.base2                     -- Background for inactive windows
	C.bg_highlight = U.blend(C.sec0, C.base0, 0.2) -- Highlighted background
	C.bg_visual = C.accent0                     -- for highlighting (cursor)
	C.bg_bright = U.lighten(C.pastel8, 0.2, C.bg) -- Bright background
	C.bg_sidebar = C.base6                      -- Sidebar background
	C.bg_statusline = C.none                    -- Statusline background
	C.bg_selected = U.blend(C.bg, C.def8, 0.2)  -- Background for selected items
	C.bg_fold = C.base2                         -- Background for folded sections

	-- Foregrounds
	C.fg = C.base7                                -- Main foreground (text)
	C.fg_dark = C.base6                           -- Darker text
	C.fg_inactive = C.sec8                        -- Inactive window text
	C.fg_highlight = C.sec2                       -- Highlighted text
	C.fg_bright = U.lighten(C.base7, 0.8, C.pastel8) -- Bright foreground (text)
	C.fg_visual = C.tone2                         -- Visual mode text
	C.fg_sidebar = C.sec8                         -- Sidebar text
	C.fg_statusline = C.sec7                      -- Statusline text
	C.fg_selected = C.sec15                       -- Text for selected items
	C.fg_fold = C.base4                           -- Text for folded sections

	if options.theme == "Mufflora" then
		C.bg = C.sec0
		C.bg_selected = U.blend(C.bg, C.hue7, 0.92)
	end

	-- Popups
	C.bg_popup = C.sec8      -- Popup background
	C.fg_popup = C.tone1     -- Popup text
	C.bg_popup_border = C.base1 -- Popup border background
	C.fg_popup_border = C.sec3 -- Popup border text

	-- Floating windows
	C.bg_float = U.blend(C.bg, C.pastel9, 0.9) -- Background for floating windows
	C.fg_float = C.tone3                    -- Text for floating windows
	C.bg_float_border = C.bg_float          -- Border background for floating windows
	C.fg_float_border = C.sec3              -- Border text for floating windows

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
	C.error = C.def0   -- Error color
	C.warn = C.def1    -- Warning color
	C.warning = C.accent5 -- Additional warning color
	C.hint = C.def3    -- Hint color
	C.info = C.sec2    -- Info color
end

return C
