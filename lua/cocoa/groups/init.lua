local merge = require("cocoa.utils").merge
local C = require("cocoa.config")

local M = {}

M.integrations = {
	"gitsigns",
	"nvim-tree",
	"neo-tree",
	"nvim-cmp",
	"treesitter",
	"kinds",
}

M.native = {
	"editor",
	"syntax",
	"extra",
}

function M.get_groups(colors, options)
	local groups = {}
	for _, native in ipairs(M.native) do
		groups = merge(groups, require("cocoa.groups.native." .. native).get(colors, options))
	end
	for _, integration in ipairs(M.integrations) do
		groups = merge(groups, require("cocoa.groups.integrations." .. integration).get(colors, options))
	end
	return merge(groups, C.options.override or {})
end

return M
