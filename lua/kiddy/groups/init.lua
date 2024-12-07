local merge = require("kiddy.utils").merge
local C = require("kiddy.config")

local M = {}

M.integrations = {
	"gitsigns",
	"nvim-tree",
	"neo-tree",
	"nvim-cmp",
}

M.native = {
	"editor",
	"syntax",
}

function M.get_groups()
	local groups = {}
	for _, native in ipairs(M.native) do
		groups = merge(groups, require("kiddy.groups.native." .. native))
	end
	for _, integration in ipairs(M.integrations) do
		groups = merge(groups, require("kiddy.groups.integrations." .. integration))
	end
	return merge(groups, C.options.override or {})
end

return M
