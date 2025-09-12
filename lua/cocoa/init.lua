-- init.lua
local C = require("cocoa.config")
local G = require("cocoa.groups")
local U = require("cocoa.utils")

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
	require("cocoa.colors").extend_palette(C.options)

	-- Now G.get_groups() can access updated options from C.options
	U.highlight(G.get_groups(require("cocoa.colors"), C.options))
end

-- Add command to nvim
vim.api.nvim_create_user_command("Cocoa", function(args)
	M.load(args)
	vim.cmd("colorscheme Cocoa")
end, {
	nargs = 1,
})

M.setup = C.setup

return M
