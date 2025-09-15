local C = require("cocoa.colors.colors") -- previous color palette!
local U = require("cocoa.utils")

function C.extend_palette(options)
	C.none = "NONE"

	-- Backgrounds
	C.bg = C.base0           -- Main background
	C.bg_dark = C.accent0    -- Darker background
	C.bg_inactive = C.base2  -- Background for inactive windows
	C.bg_highlight = C.base1 -- Highlighted background
	C.bg_visual = C.accent3  -- Visual selection
	C.bg_bright = C.pastel15 -- Bright background
	C.bg_sidebar = C.sec10   -- Sidebar background
	C.bg_statusline = C.base1 -- Statusline background
	C.bg_selected = C.hue7   -- Background for selected items
	C.bg_fold = C.base2      -- Background for folded sections

	-- Foregrounds
	C.fg = C.base8                  -- Main foreground (text)
	C.fg_dark = C.extra.neutral6    -- Darker text
	C.fg_inactive = C.extra.neutral4 -- Inactive window text
	C.fg_highlight = C.pastel13     -- Highlighted text
	C.fg_bright = C.base8           -- Bright foreground (text)
	C.fg_visual = C.pastel4         -- Visual mode text
	C.fg_sidebar = C.extra.neutral3 -- Sidebar text
	C.fg_statusline = C.pastel3     -- Statusline text
	C.fg_selected = C.sec15         -- Text for selected items
	C.fg_fold = C.sec9              -- Text for folded sections10) -- Bright foreground (text)
	C.fg_visual = C.pastel4         -- Visual mode text
	C.fg_sidebar = C.base2          -- Sidebar text
	C.fg_statusline = C.pastel3     -- Statusline text
	C.fg_selected = C.sec15         -- Text for selected items
	C.fg_fold = C.sec9              -- Text for folded sections

	-- Popups
	C.bg_popup = C.sec1        -- Popup background
	C.fg_popup = C.sec9        -- Popup text
	C.bg_popup_border = C.base1 -- Popup border background
	C.fg_popup_border = C.sec3 -- Popup border text

	-- Floating windows
	C.bg_float = U.blend(C.bg, C.base4, 0.3) -- Background for floating windows
	C.fg_float = C.base8                    -- Text for floating windows
	C.bg_float_border = C.bg_float          -- Border background for floating windows
	C.fg_float_border = C.fg_float          -- Border text for floating windows

	-- Theme variations
	if options.theme == "Mufflora" then
		-- High contrast
		C.bg = C.sec0
		C.bg_selected = U.blend(C.bg, C.hue7, 0.92)
	elseif options.theme == "Puffica" then
		C.bg = C.base2
		C.bg_highlight = C.pastel9
		C.fg = C.pastel15
	end

	-- Diff highlighting
	C.diff = {
		change0 = C.sec2,
		change1 = C.sec4,
		add = C.sec5,   -- Additions in diff
		delete = C.base4, -- Deletions in diff
	}

	-- Git
	C.git = {
		add = C.sec7,  -- Git additions
		delete = C.sec2, -- Git deletions
		change = C.sec4, -- Git changes
	}

	-- Diagnostics
	C.error = C.sec2  -- Error color
	C.warn = C.sec4   -- Warning color
	C.warning = C.sec4 -- Additional warning color
	C.hint = C.sec8   -- Hint color
	C.info = C.sec7   -- Info color
	C.todo = C.def3   -- Todo comments
end

return C
