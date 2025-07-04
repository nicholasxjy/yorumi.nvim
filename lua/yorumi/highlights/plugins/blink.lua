local M = {}

---@param config YorumiConfig
function M.setup(config)
	local palette = require("yorumi.colors")

	return {
		BlinkCmpDoc = { bg = palette.yoru0, fg = palette.tsuki2 },
		BlinkCmpDocBorder = { bg = palette.yoru0, fg = palette.tsuki3 },

		BlinkCmpKindMethod = { link = "@function.method" },
		BlinkCmpKindFunction = { link = "Function" },
		BlinkCmpKindConstructor = { link = "@constructor" },
		BlinkCmpKindField = { link = "@variable.member" },
		BlinkCmpKindClass = { link = "Type" },
		BlinkCmpKindInterface = { link = "Type" },
		BlinkCmpKindModule = { link = "@module" },
		BlinkCmpKindProperty = { link = "@property" },
		BlinkCmpKindUnit = { link = "Number" },
		BlinkCmpKindValue = { link = "String" },
		BlinkCmpKindEnum = { link = "Type" },
		BlinkCmpKindKeyword = { link = "Keyword" },
		BlinkCmpKindSnippet = { link = "Special" },
		BlinkCmpKindColor = { link = "Special" },
		BlinkCmpKindFile = { link = "Directory" },
		BlinkCmpKindReference = { link = "Special" },
		BlinkCmpKindFolder = { link = "Directory" },
		BlinkCmpKindEnumMember = { link = "Constant" },
		BlinkCmpKindConstant = { link = "Constant" },
		BlinkCmpKindStruct = { link = "Type" },
		BlinkCmpKindEvent = { link = "Type" },
		BlinkCmpKindOperator = { link = "Operator" },
		BlinkCmpKindTypeParameter = { link = "Type" },
		BlinkCmpKindCopilot = { link = "String" },
	}
end

return M
