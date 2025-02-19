-- https://github.com/nvim-treesitter/nvim-treesitter/blob/master/CONTRIBUTING.md

local M = {}

---@diagnostic disable-next-line: unused-local
function M.get_highlight(conf, colors)
    return {
        ["@text.literal"] = {},
        ["conceal"] = {},
        ["@text.underline"] = { fg = colors.__vscode_number },
        ["@text.reference"] = { fg = colors.__vscode_diff_text_foreground },
        ["@text.uri"] = { fg = colors.__vscode_comment },
        ["@text.title"] = { fg = colors.__vscode_keyword, bold = true },
        ["@text.todo"] = {
            fg = colors.__vscode_todo_foreground,
            bg = colors.__vscode_todo_background,
        },
        ["@comment"] = { fg = colors.__vscode_comment },
        ["@punctuation"] = { fg = colors.__vscode_variable },
        ["@punctuation.bracket"] = { fg = colors.__vscode_variable },
        ["@punctuation.delimiter"] = { fg = colors.__vscode_variable },
        ["@punctuation.special"] = { fg = colors.__vscode_variable },
        ["@attribute"] = { fg = colors.__vscode_type },
        ["@attribute.builtin"] = { fg = colors.__vscode_type },
        ["@constant"] = { fg = colors.__vscode_number },
        ["@constant.builtin"] = { fg = colors.__vscode_keyword },
        ["@constant.macro"] = { link = "@define" },
        ["@define"] = { fg = colors.__vscode_define_foreground },
        ["@macro"] = { link = "@define" },
        ["@string"] = { fg = colors.__vscode_strings },
        ["@string.escape"] = { fg = colors.__vscode_keyword },
        ["@string.special"] = { link = "@punctuation.special" },
        ["@string.regex"] = { fg = colors.__vscode_methods },
        ["@string.emphasis"] = { fg = colors.__vscode_lsp_error },
        ["@character"] = { link = "@string" },
        ["@character.special"] = { link = "@punctuation.special" },
        ["@number"] = { fg = colors.__vscode_number },
        ["@boolean"] = { fg = colors.__vscode_keyword },
        ["@float"] = { link = "@number" },
        ["@function"] = { fg = colors.__vscode_methods },
        ["@function.call"] = { fg = colors.__vscode_methods },
        ["@function.builtin"] = { fg = colors.__vscode_type },
        ["@function.macro"] = { fg = colors.__vscode_variable },
        ["@parameter"] = { fg = colors.__vscode_variable },
        ["@method"] = { link = "@function" },
        ["@method.call"] = { link = "@function.call" },
        ["@field"] = { fg = colors.__vscode_diff_text_foreground },
        ["@property"] = { fg = colors.__vscode_variable },
        ["@constructor"] = { link = "@method" },
        ["@conditional"] = { fg = colors.__vscode_keyword },
        ["@conditional.ternary"] = { fg = colors.__vscode_variable },
        ["@repeat"] = { fg = colors.__vscode_keyword },
        ["@label"] = { fg = colors.__vscode_tag_foreground },
        ["@operator"] = { fg = colors.__vscode_variable },
        ["@keyword"] = { fg = colors.__vscode_keyword },
        ["@exception"] = { fg = colors.__vscode_keyword },
        ["@variable"] = { fg = colors.__vscode_variable },
        ["@variable.builtin"] = { fg = colors.__vscode_keyword },
        ["@type"] = { fg = colors.__vscode_type },
        ["@type.definition"] = { fg = colors.__vscode_type },
        ["@type.builtin"] = { fg = colors.__vscode_keyword },
        ["@type.qualifier"] = { fg = colors.__vscode_keyword },
        ["@storageclass"] = { fg = colors.__vscode_keyword },
        ["@structure"] = { fg = colors.__vscode_keyword },
        ["@namespace"] = { fg = colors.__vscode_type },
        ["@include"] = { fg = colors.__vscode_keyword },
        ["@preproc"] = { fg = colors.__vscode_head },
        ["@debug"] = { fg = colors.__vscode_key },
        ["@tag"] = { fg = colors.__vscode_keyword },
        ["@tag.delimiter"] = { fg = colors.__vsocode_tag_warpper_foreground },
        ["@tag.attribute"] = { fg = colors.__vscode_diff_text_foreground },

        -- CSS
        ["@type.css"] = { fg = colors.__vscode_methods },
        ["@property.css"] = { fg = colors.__vscode_diff_text_foreground },
        ["@punctuation.bracket.css"] = {
            fg = colors.__vscode_bracket_level_01_foreground,
        },
        ["@punctuation.delimiter.css"] = {
            fg = colors.__vscode_methods,
        },

        -- TS
        ["@type.typescript"] = {
            fg = colors.__vscode_typescript_type_foreground,
        },
        ["@property.typescript"] = {
            fg = colors.__vscode_typescript_type_foreground,
        },
        ["@punctuation.special.typescript"] = { fg = colors.__vscode_keyword },

        -- JS
        ["@punctuation.special.javascript"] = { fg = colors.__vscode_keyword },

        -- MD
        ["@punctuation.special.markdown"] = { fg = colors.__vscode_keyword },
        ["@label.markdown"] = { fg = colors.__vscode_inactive_table_foreground },

        -- HTML
        ["@constant.html"] = { fg = colors.__vscode_variable },
        ["@text.title.html"] = { fg = colors.__vscode_variable },

        -- CPP
        ["@type.cpp"] = { fg = colors.__vscode_keyword },
        ["@constructor.cpp"] = { fg = colors.__vscode_type },

        -- LUA
        ["@function.builtin.lua"] = { fg = colors.__vscode_methods },

        -- RUST
        ["@function.macro.rust"] = { fg = colors.__vscode_file },

        -- JSON5
        ["@keyword.json5"] = { link = "@label.json" },

        -- REGEX
        ---@diagnostic disable-next-line: duplicate-index
        ["@string.regex"] = {
            link = "@string",
        },
        ["@variable.builtin.regex"] = {
            fg = colors.__vscode_file,
        },
        ["@punctuation.bracket.regex"] = {
            fg = colors.__vscode_keyword,
        },
        ["@property.regex"] = {
            fg = colors.__vscode_keyword,
        },
        ["@operator.regex"] = {
            fg = colors.__vscode_file,
        },

        -- https://github.com/nvim-treesitter/nvim-treesitter/commit/1ae9b0e4558fe7868f8cda2db65239cfb14836d0

        -- " tree-sitter "standard capture names"
        ["@variable.parameter"] = { link = "@parameter" },
        ["@variable.member"] = { link = "@field" },
        ["@module"] = { link = "@namespace" },
        ["@number.float"] = { link = "@float" },
        ["@string.special.symbol"] = { link = "@symbol" },
        ["@string.regexp"] = { link = "@string.regex" },
        ["@markup.strong"] = { link = "@text.strong" },
        ["@markup.italic"] = { link = "@text.emphasis" },
        ["@markup.underline"] = { link = "@text.underline" },
        ["@markup.strikethrough"] = { link = "@text.strike" },
        ["@markup.heading"] = { link = "@text.title" },
        ["@markup.quote"] = { link = "@text.quote" },
        ["@markup.link.url"] = { link = "@text.uri" },
        ["@markup.math"] = { link = "@text.math" },
        ["@markup.environment"] = { link = "@text.environment" },
        ["@markup.environment.name"] = { link = "@text.environment.name" },
        ["@markup.link"] = { link = "@text.reference" },
        ["@markup.raw"] = { link = "@text.literal" },
        ["@markup.raw.block"] = { link = "@text.literal.block" },
        ["@markup.link.label"] = { link = "@string.special" },
        ["@markup.list"] = { link = "@punctuation.special" },

        -- " Helix captures
        ["@function.method"] = { link = "@method" },
        ["@function.method.call"] = { link = "@method.call" },
        ["@comment.todo"] = { link = "@text.todo" },
        ["@comment.error"] = { link = "@text.danger" },
        ["@comment.warning"] = { link = "@text.warning" },
        ["@comment.hint"] = { link = "@text.note" },
        ["@comment.info"] = { link = "@text.note" },
        ["@comment.note"] = { link = "@text.note" },
        ["@comment.ok"] = { link = "@text.note" },
        ["@diff.plus"] = { link = "@text.diff.add" },
        ["@diff.minus"] = { link = "@text.diff.delete" },
        ["@diff.delta"] = { link = "@text.diff.change" },
        ["@string.special.url"] = { link = "@text.uri" },
        ["@keyword.storage"] = { link = "@storageclass" },
        ["@keyword.directive"] = { link = "@define" },
        ["@keyword.conditional"] = { link = "@conditional" },
        ["@keyword.debug"] = { link = "@debug" },
        ["@keyword.exception"] = { link = "@exception" },
        ["@keyword.import"] = { link = "@include" },
        ["@keyword.repeat"] = { link = "@repeat" },
    }
end

return M
