vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then vim.cmd("syntax reset") end
vim.o.termguicolors = true
vim.g.colors_name = "laluz"

local c = {
  bg        = "#0c0c0d",
  bg_alt    = "#161618",
  bg_float  = "#1b1b1e",
  selection = "#2e2e33",
  search    = "#3d3d43",
  border    = "#2c2c30",
  linenr    = "#3a3a3f",
  comment   = "#56565c",
  muted     = "#626269",
  dim       = "#7e7e85",
  soft      = "#96969c",
  mid       = "#aeaeb3",
  fg        = "#c2c2c6",
  bright    = "#cbcbcf",
  white     = "#d2d2d5",
}

local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end
local function each(groups, opts) for _, g in ipairs(groups) do hl(g, opts) end end

-- Editor
hl("Normal",                     { fg = c.fg, bg = c.bg })
hl("NormalFloat",                { fg = c.fg, bg = c.bg_float })
hl("FloatBorder",                { fg = c.border, bg = c.bg_float })
hl("CursorLine",                 { bg = c.bg_alt })
hl("CursorLineNr",               { fg = c.white, bold = true })
hl("LineNr",                     { fg = c.linenr })
hl("SignColumn",                 { bg = c.bg })
hl("EndOfBuffer",                { fg = c.linenr })
hl("NonText",                    { fg = c.linenr })
hl("Visual",                     { bg = c.selection })
hl("Search",                     { fg = c.white, bg = c.search })
hl("IncSearch",                  { fg = c.bg, bg = c.white })
hl("CurSearch",                  { fg = c.bg, bg = c.white })
hl("MatchParen",                 { fg = c.white, bold = true, underline = true })
hl("StatusLine",                 { fg = c.fg, bg = c.bg_float })
hl("StatusLineNC",               { fg = c.dim, bg = c.bg_alt })
hl("WinSeparator",               { fg = c.border })
hl("Pmenu",                      { fg = c.soft, bg = c.bg_float })
hl("PmenuSel",                   { fg = c.white, bg = c.selection, bold = true })
hl("PmenuSbar",                  { bg = c.bg_float })
hl("PmenuThumb",                 { bg = c.border })
hl("Title",                      { fg = c.white, bold = true })
hl("Directory",                  { fg = c.mid, bold = true })
hl("ErrorMsg",                   { fg = c.white, bold = true })
hl("WarningMsg",                 { fg = c.mid })
hl("Added",                      { fg = c.mid })
hl("Changed",                    { fg = c.soft, italic = true })
hl("Removed",                    { fg = c.dim, strikethrough = true })
hl("DiagnosticError",            { fg = c.white, bold = true })
hl("DiagnosticWarn",             { fg = c.mid })
hl("DiagnosticInfo",             { fg = c.soft })
hl("DiagnosticHint",             { fg = c.dim, italic = true })
hl("DiagnosticUnderlineError",   { sp = c.white, undercurl = true })
hl("DiagnosticUnderlineWarn",    { sp = c.mid, undercurl = true })
hl("DiagnosticUnderlineInfo",    { sp = c.soft, underdashed = true })
hl("DiagnosticUnderlineHint",    { sp = c.dim, underdotted = true })
hl("DiagnosticOk",               { fg = c.soft })
hl("Error",                      { fg = c.white, bold = true })
hl("Todo",                       { fg = c.white, bold = true })
hl("Underlined",                 { underline = true })
hl("Cursor",                     { fg = c.bg, bg = c.fg })
hl("lCursor",                    { fg = c.bg, bg = c.fg })
hl("TermCursor",                 { fg = c.bg, bg = c.fg })
hl("NormalNC",                   { fg = c.fg, bg = c.bg })
hl("ColorColumn",                { bg = c.bg_alt })
hl("Conceal",                    { fg = c.dim })
hl("Folded",                     { fg = c.dim, bg = c.bg_alt, italic = true })
hl("FoldColumn",                 { fg = c.linenr })
hl("SpecialKey",                 { fg = c.linenr })
hl("Whitespace",                 { fg = c.linenr })
hl("Question",                   { fg = c.mid })
hl("MoreMsg",                    { fg = c.mid })
hl("ModeMsg",                    { fg = c.fg, bold = true })
hl("QuickFixLine",               { bg = c.selection })
hl("WildMenu",                   { fg = c.white, bg = c.selection, bold = true })
hl("FloatTitle",                 { fg = c.white, bg = c.bg_float, bold = true })
hl("TabLine",                    { fg = c.dim, bg = c.bg_alt })
hl("TabLineSel",                 { fg = c.white, bg = c.bg, bold = true })
hl("TabLineFill",                { bg = c.bg_alt })
hl("WinBar",                     { fg = c.fg, bold = true })
hl("WinBarNC",                   { fg = c.dim })
hl("SpellBad",                   { sp = c.dim, undercurl = true })
hl("SpellCap",                   { sp = c.dim, underdotted = true })
hl("SpellRare",                  { sp = c.dim, underdotted = true })
hl("SpellLocal",                 { sp = c.dim, underdotted = true })
hl("DiffAdd",                    { bg = c.bg_alt })
hl("DiffChange",                 { bg = c.bg_alt })
hl("DiffDelete",                 { fg = c.muted, bg = c.bg })
hl("DiffText",                   { bg = c.selection, bold = true })
hl("LspReferenceText",           { bg = c.selection })
hl("LspReferenceRead",           { bg = c.selection })
hl("LspReferenceWrite",          { bg = c.selection, underline = true })
hl("LspInlayHint",               { fg = c.comment, italic = true })
hl("@markup.heading",            { fg = c.white, bold = true })
hl("@markup.strong",             { bold = true })
hl("@markup.italic",             { italic = true })
hl("@markup.strikethrough",      { strikethrough = true })
hl("@markup.link",               { fg = c.mid, underline = true })
hl("@markup.link.url",           { fg = c.soft, underline = true })
hl("@markup.raw",                { fg = c.soft })
hl("@markup.list",               { fg = c.dim })
hl("@markup.quote",              { fg = c.dim, italic = true })
hl("MiniStatuslineModeNormal",   { fg = c.bg, bg = c.mid, bold = true })
hl("MiniStatuslineModeInsert",   { fg = c.bg, bg = c.white, bold = true })
hl("MiniStatuslineModeVisual",   { fg = c.bg, bg = c.soft, bold = true })
hl("MiniStatuslineModeReplace",  { fg = c.bg, bg = c.dim, bold = true })
hl("MiniStatuslineModeCommand",  { fg = c.bg, bg = c.bright, bold = true })
hl("MiniStatuslineModeOther",    { fg = c.bg, bg = c.mid, bold = true })
hl("MiniStatuslineDevinfo",      { fg = c.fg, bg = c.selection })
hl("MiniStatuslineFilename",     { fg = c.soft, bg = c.bg_float })
hl("MiniStatuslineFileinfo",     { fg = c.fg, bg = c.selection })
hl("MiniStatuslineInactive",     { fg = c.dim, bg = c.bg_alt })
hl("MiniTablineCurrent",         { fg = c.white, bg = c.bg, bold = true })
hl("MiniTablineVisible",         { fg = c.soft, bg = c.bg_alt })
hl("MiniTablineHidden",          { fg = c.dim, bg = c.bg_alt })
hl("MiniTablineModifiedCurrent", { fg = c.white, bg = c.bg, italic = true, bold = true })
hl("MiniTablineModifiedVisible", { fg = c.soft, bg = c.bg_alt, italic = true })
hl("MiniTablineModifiedHidden",  { fg = c.dim, bg = c.bg_alt, italic = true })
hl("MiniTablineFill",            { bg = c.bg_alt })
hl("MiniTablineTabpagesection",  { fg = c.bg, bg = c.mid, bold = true })
hl("MiniJump2dSpot",             { fg = c.white, bold = true, underline = true })
hl("MiniJump2dSpotAhead",        { fg = c.soft })
hl("MiniJump2dSpotUnique",       { fg = c.white, bold = true })
hl("MiniJump2dDim",              { fg = c.comment })
hl("MiniIndentscopeSymbol",      { fg = c.muted })
hl("MiniDiffSignAdd",            { fg = c.mid })
hl("MiniDiffSignChange",         { fg = c.soft })
hl("MiniDiffSignDelete",         { fg = c.dim })
hl("MiniCursorword",             { underline = true })
hl("MiniCursorwordCurrent",      { underline = true })

-- Sintaxis (clásica, Treesitter y semantic tokens del LSP)
-- Palabras clave
each({ "Keyword", "Statement", "StorageClass", "Include", "@keyword", "@keyword.function", "@keyword.import", "@keyword.type", "@keyword.modifier", "@keyword.operator", "@keyword.coroutine", "@keyword.directive", "@keyword.storage" },
  { fg = c.dim })
-- Control de flujo
each({ "Conditional", "Repeat", "Exception", "@keyword.return", "@keyword.conditional", "@keyword.repeat", "@keyword.exception" },
  { fg = c.bright, bold = true })
-- Funciones
each({ "Function", "@function", "@function.call", "@function.method", "@function.method.call", "@function.builtin", "@lsp.type.function", "@lsp.type.method" },
  { fg = c.white, bold = true })
-- Tipos
each({ "Type", "Structure", "Typedef", "@type", "@type.builtin", "@type.definition", "@constructor", "@lsp.type.type", "@lsp.type.class", "@lsp.type.interface", "@lsp.type.struct", "@lsp.type.enum", "@lsp.type.typeParameter" },
  { fg = c.mid, italic = true })
-- Strings
each({ "String", "Character", "@string", "@character" },
  { fg = c.soft })
-- Escapes / interpolación
each({ "Special", "SpecialChar", "SpecialComment", "Debug", "@string.regexp", "@string.escape", "@string.special", "@character.special", "@punctuation.special" },
  { fg = c.bright, bold = true })
-- Números
each({ "Number", "Float", "@number", "@number.float" },
  { fg = c.bright })
-- Booleanos
each({ "Boolean", "@boolean" },
  { fg = c.bright })
-- Constantes
each({ "Constant", "@constant", "@constant.builtin", "@lsp.type.enumMember" },
  { fg = c.bright, underdotted = true })
-- Comentarios
each({ "Comment", "@comment", "@comment.documentation" },
  { fg = c.comment, italic = true })
-- Variables
each({ "Identifier", "@variable", "@lsp.type.variable" },
  { fg = c.fg })
-- Parámetros
each({ "@variable.parameter", "@lsp.type.parameter" },
  { fg = c.fg, italic = true })
-- Propiedades / campos
each({ "@property", "@variable.member", "@lsp.type.property" },
  { fg = c.mid })
-- self / this
each({ "@variable.builtin" },
  { fg = c.fg, italic = true, bold = true })
-- Módulos / paquetes
each({ "@module", "@module.builtin", "@lsp.type.namespace" },
  { fg = c.soft, italic = true })
-- Operadores
each({ "Operator", "@operator" },
  { fg = c.dim })
-- Puntuación
each({ "Delimiter", "@punctuation.delimiter", "@punctuation.bracket", "@tag.delimiter" },
  { fg = c.muted })
-- Etiquetas JSX/HTML
each({ "Tag", "@tag", "@tag.builtin" },
  { fg = c.bright, bold = true })
-- Atributos JSX
each({ "@tag.attribute" },
  { fg = c.dim, italic = true })
-- Macros / atributos
each({ "Macro", "PreProc", "Define", "@function.macro", "@constant.macro", "@attribute", "@lsp.type.macro", "@lsp.type.decorator" },
  { fg = c.mid, bold = true, underline = true })
-- Lifetimes (Rust)
each({ "Label", "@label", "@lsp.type.lifetime" },
  { fg = c.dim, italic = true })
-- Claves JSON
each({ "@property.json", "@property.jsonc" },
  { fg = c.fg })

-- Colores de la terminal integrada
vim.g.terminal_color_0 = c.bg_alt
vim.g.terminal_color_1 = c.dim
vim.g.terminal_color_2 = c.soft
vim.g.terminal_color_3 = c.mid
vim.g.terminal_color_4 = c.fg
vim.g.terminal_color_5 = c.soft
vim.g.terminal_color_6 = c.mid
vim.g.terminal_color_7 = c.fg
vim.g.terminal_color_8 = c.comment
vim.g.terminal_color_9 = c.mid
vim.g.terminal_color_10 = c.fg
vim.g.terminal_color_11 = c.bright
vim.g.terminal_color_12 = c.white
vim.g.terminal_color_13 = c.fg
vim.g.terminal_color_14 = c.bright
vim.g.terminal_color_15 = c.white
