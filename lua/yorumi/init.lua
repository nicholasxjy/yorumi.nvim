local palette = require("yorumi.colors")
local M = {}

---@class YorumiConfig
M.config = {
	undercurl = true,
	commentStyle = { italic = false },
	functionStyle = {},
	keywordStyle = {},
	statementStyle = {},
	typeStyle = {},
	dimInactive = false,
	terminalColors = false,
	---@type { dark: string, light: string}
	background = { dark = "abyss", light = "mist" }, --- light, mist theme coming soon
	theme = "abyss",
	overrides = function(colors) end,
}

function M.load(opts)
	local config = vim.tbl_deep_extend("force", M.config, opts)

	local theme = config.theme or config.background[vim.o.background]

	M._CURRENT_THEME = theme

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "yorumi"
	vim.o.termguicolors = true

	require("yorumi.highlights").apply(config)

	config.overrides(palette)
end

return M
