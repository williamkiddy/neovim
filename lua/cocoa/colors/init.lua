local C = {}
local U = require("cocoa.utils")

function C.extend_palette(options)
	local ok, matugen_colors = pcall(require, options.matugen and options.matugen.path or "cocoa.colors.colors")
	if ok and matugen_colors then
		for k, v in pairs(matugen_colors) do
			C[k] = v
		end
	end
	C.none = "NONE"

	-- Backgrounds
	C.bg = C.A0
	C.bg_dark = C.A0
	C.bg_inactive = C.A1
	C.bg_highlight = C.A2
	C.bg_visual = C.A3
	C.bg_bright = C.A1
	C.bg_sidebar = C.A0
	C.bg_statusline = C.A1
	C.bg_selected = C.A2
	C.bg_fold = C.A1

	-- Foregrounds
	C.fg = C.A4
	C.fg_dark = C.A3
	C.fg_inactive = C.A3
	C.fg_highlight = C.A5
	C.fg_bright = C.A5
	C.fg_visual = C.A5
	C.fg_sidebar = C.A4
	C.fg_statusline = C.A4
	C.fg_selected = C.A5
	C.fg_fold = C.C2

	-- Popups
	C.bg_popup = C.A1
	C.fg_popup = C.A4
	C.bg_popup_border = C.A2
	C.fg_popup_border = C.B0

	-- Floating windows
	C.bg_float = U.blend(C.A0, C.A2, 0.8)
	C.fg_float = C.A4
	C.bg_float_border = C.A2
	C.fg_float_border = C.B1

	-- Theme variations
	if options.theme == "Mufflora" then
		C.bg = C.A0
		C.bg_selected = U.blend(C.A0, C.B1, 0.9)
	elseif options.theme == "Puffica" then
		C.bg = C.A1
		C.bg_highlight = C.A2
		C.fg = C.A4
	end

	-- Diff highlighting
	C.diff = {
		change0 = C.A2,
		change1 = C.C4,
		add = C.C3,
		delete = C.C0,
	}

	-- Git
	C.git = {
		add = C.C3,
		delete = C.C0,
		change = C.C4,
	}

	-- Diagnostics
	C.error = C.C1
	C.warn = C.C4
	C.warning = C.C4
	C.hint = C.C7
	C.info = C.C6
	C.todo = C.B3
end

return C
