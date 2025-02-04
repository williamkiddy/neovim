local U = require("kiddy.utils")

local M = {}

function M.get(colors, options)
  -- stylua: ignore
  local ret = {
    ["@none"]                  = { link = "None" },
    ["@annotation"]            = { link = "PreProc" },
    ["@attribute"]             = { link = "PreProc" },
    ["@boolean"]               = { link = "Boolean" },
    ["@character"]             = { link = "Character" },
    ["@character.printf"]      = { link = "SpecialChar" },
    ["@character.special"]     = { link = "SpecialChar" },
    ["@comment"]               = { link = "Comment" },
    ["@comment.error"]         = { fg = colors.error },
    ["@comment.hint"]          = { fg = colors.hint },
    ["@comment.info"]          = { fg = colors.info },
    ["@comment.note"]          = { fg = colors.hint },
    ["@comment.todo"]          = { fg = colors.todo },
    ["@comment.warning"]       = { fg = colors.warning },
    ["@constant"]              = { link = "Constant" },
    ["@constant.builtin"]      = { link = "Special" },
    ["@constant.macro"]        = { link = "PreProc" },
    ["@constructor"]           = { fg = colors.sec3 },
    ["@constructor.tsx"]       = { link = "@constructor" },
    ["@diff.delta"]            = { link = "DiffChange" },
    ["@diff.minus"]            = { link = "DiffDelete" },
    ["@diff.plus"]             = { link = "DiffAdd" },
    ["@function"]              = { link = "Function" },
    ["@function.builtin"]      = { link = "Special" },
    ["@function.call"]         = { link = "@function" },
    ["@function.macro"]        = { link = "Macro" },
    ["@function.method"]       = { link = "Function" },
    ["@function.method.call"]  = { link = "@function.method" },
    ["@keyword"]               = { link = "Keyword" },
    ["@keyword.conditional"]   = { link = "Conditional" },
    ["@keyword.debug"]         = { link = "Debug" },
    ["@keyword.directive"]     = { link = "PreProc" },
    ["@keyword.exception"]     = { link = "Exception" },
    ["@keyword.function"]      = { link = "Function" },
    ["@keyword.import"]        = { link = "Include" },
    ["@keyword.operator"]      = { link = "@operator" },
    ["@keyword.repeat"]        = { link = "Repeat" },
    ["@label"]                 = { link = "Label" },
    ["@markup"]                = { link = "@none" },
    ["@markup.emphasis"]       = { italic = true },
    ["@markup.heading"]        = { link = "Title" },
    ["@markup.link"]           = { link = "MarkdownLinkText" },
    ["@markup.raw"]            = { link = "String" },
    ["@markup.strong"]         = { bold = true },
    ["@markup.underline"]      = { underline = true },
    ["@module"]                = { link = "Include" },
    ["@module.builtin"]        = { fg = colors.def5 },
    ["@namespace.builtin"]     = { link = "@variable.builtin" },
    ["@number"]                = { link = "Number" },
    ["@operator"]              = { link = "Operator" },
    ["@property"]              = { link = "Operator" },
    ["@punctuation.bracket"]   = { fg = colors.def5 },
    ["@punctuation.delimiter"] = { fg = colors.def4 },
    ["@punctuation.special"]   = { fg = colors.def4 },
    ["@string"]                = { link = "String" },
    ["@string.documentation"]  = { fg = colors.def2 },
    ["@string.escape"]         = { fg = colors.def5 },
    ["@string.regexp"]         = { fg = colors.tone6 },
    ["@tag"]                   = { link = "Label" },
    ["@type"]                  = { link = "Type" },
    ["@type.builtin"]          = { link = "Type" },
    ["@variable"]              = { link = "Constant" },
    ["@variable.builtin"]      = { fg = colors.accent7 },
    ["@variable.parameter"]    = { link = "Constant" },
  }

  for i, colors_i in ipairs(ret) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = colors_i, bold = true }
  end
  return ret
end

return M
