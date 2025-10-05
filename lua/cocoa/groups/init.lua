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
	options = options or {}

	-- Helper to safely require and get groups
	local function safe_get(module_path, get_fn, ...)
		local success, mod = pcall(require, module_path)
		if success and mod and type(mod[get_fn]) == "function" then
			local success2, result = pcall(mod[get_fn], ...)
			if success2 then
				return result or {}
			end
		end
		return {}
	end

	for _, native in ipairs(M.native) do
		local mod_groups = safe_get("cocoa.groups.native." .. native, "get", colors, options)
		groups = merge(groups, mod_groups)
	end

	for _, integration in ipairs(M.integrations) do
		local mod_groups = safe_get("cocoa.groups.integrations." .. integration, "get", colors, options)
		groups = merge(groups, mod_groups)
	end

	-- Safely merge overrides
	local overrides = {}
	local success, config_opts = pcall(function() return C.options.override end)
	if success and config_opts then
		overrides = config_opts
	end
	return merge(groups, overrides)
end

return M
