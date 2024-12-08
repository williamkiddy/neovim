-- init.lua
local C = require("kiddy.config")
local G = require("kiddy.groups")
local U = require("kiddy.utils")

local M = {}

function M.load(opts)
	if not U.loaded() then
		vim.cmd("hi clear")
		vim.o.termguicolors = true
		vim.g.colors_name = U.NAME
	end

	-- Setup user options (if provided)
	if opts then
		C.setup(opts)
	end
	require("kiddy.colors").extend_palette(C.options)

	-- Now G.get_groups() can access updated options from C.options
	U.highlight(G.get_groups(require("kiddy.colors"), C.options))
end

-- Add command to nvim
vim.api.nvim_create_user_command("Kiddy", function(args)
	M.load(args)
	vim.cmd("colorscheme kiddy")
end, {
	nargs = 1,
})

M.setup = C.setup

return M
