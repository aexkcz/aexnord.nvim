local aexnord = require("aexnord.colors")

local theme = {}

local italic = vim.g.aexnord_italic == false and aexnord.none or "italic"
local italic_undercurl = vim.g.aexnord_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.aexnord_bold == false and aexnord.none or "bold"
local reverse_bold = vim.g.aexnord_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.aexnord_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.aexnord_bold == false then
  bold_italic = vim.g.aexnord_italic == false and aexnord.none or "italic"
elseif vim.g.aexnord_italic == false then
  bold_italic = "bold"
else
  bold_italic = "bold,italic"
end

theme.loadSyntax = function()
  -- Syntax highlight groups
  return {
    Type = { fg = aexnord.aexnord9_gui },                                              -- int, long, char, etc.
    StorageClass = { fg = aexnord.aexnord9_gui },                                      -- static, register, volatile, etc.
    Structure = { fg = aexnord.aexnord9_gui },                                         -- struct, union, enum, etc.
    Constant = { fg = aexnord.aexnord4_gui },                                          -- any constant
    Character = { fg = aexnord.aexnord14_gui },                                        -- any character constant: 'c', '\n'
    Number = { fg = aexnord.aexnord15_gui },                                           -- a number constant: 5
    Boolean = { fg = aexnord.aexnord9_gui },                                           -- a boolean constant: TRUE, false
    Float = { fg = aexnord.aexnord15_gui },                                            -- a floating point constant: 2.3e10
    Statement = { fg = aexnord.aexnord9_gui },                                         -- any statement
    Label = { fg = aexnord.aexnord9_gui },                                             -- case, default, etc.
    Operator = { fg = aexnord.aexnord9_gui },                                          -- sizeof", "+", "*", etc.
    Exception = { fg = aexnord.aexnord9_gui },                                         -- try, catch, throw
    PreProc = { fg = aexnord.aexnord9_gui },                                           -- generic Preprocessor
    Include = { fg = aexnord.aexnord9_gui },                                           -- preprocessor #include
    Define = { fg = aexnord.aexnord9_gui },                                            -- preprocessor #define
    Macro = { fg = aexnord.aexnord9_gui },                                             -- same as Define
    Typedef = { fg = aexnord.aexnord9_gui },                                           -- A typedef
    PreCondit = { fg = aexnord.aexnord13_gui },                                        -- preprocessor #if, #else, #endif, etc.
    Special = { fg = aexnord.aexnord4_gui },                                           -- any special symbol
    SpecialChar = { fg = aexnord.aexnord13_gui },                                      -- special character in a constant
    Tag = { fg = aexnord.aexnord4_gui },                                               -- you can use CTRL-] on this
    Delimiter = { fg = aexnord.aexnord6_gui },                                         -- character that needs attention like , or .
    SpecialComment = { fg = aexnord.aexnord8_gui },                                    -- special things inside a comment
    Debug = { fg = aexnord.aexnord11_gui },                                            -- debugging statements
    Underlined = { fg = aexnord.aexnord14_gui, bg = aexnord.none, style = "underline" }, -- text that stands out, HTML links
    Ignore = { fg = aexnord.aexnord1_gui },                                            -- left blank, hidden
    Todo = { fg = aexnord.aexnord13_gui, bg = aexnord.none, style = bold_italic },     -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Conceal = { fg = aexnord.none, bg = aexnord.aexnord0_gui },
    htmlLink = { fg = aexnord.aexnord14_gui, style = "underline" },
    markdownH1Delimiter = { fg = aexnord.aexnord8_gui },
    markdownH2Delimiter = { fg = aexnord.aexnord11_gui },
    markdownH3Delimiter = { fg = aexnord.aexnord14_gui },
    htmlH1 = { fg = aexnord.aexnord8_gui, style = bold },
    htmlH2 = { fg = aexnord.aexnord11_gui, style = bold },
    htmlH3 = { fg = aexnord.aexnord14_gui, style = bold },
    htmlH4 = { fg = aexnord.aexnord15_gui, style = bold },
    htmlH5 = { fg = aexnord.aexnord9_gui, style = bold },
    markdownH1 = { fg = aexnord.aexnord8_gui, style = bold },
    markdownH2 = { fg = aexnord.aexnord11_gui, style = bold },
    markdownH3 = { fg = aexnord.aexnord14_gui, style = bold },
    Error = { fg = aexnord.aexnord11_gui, bg = aexnord.none, style = bold_underline }, -- any erroneous construct with bold
    Comment = { fg = aexnord.aexnord3_gui_bright, style = italic },                  -- italic comments
    Conditional = { fg = aexnord.aexnord9_gui, style = italic },                     -- italic if, then, else, endif, switch, etc.
    Function = { fg = aexnord.aexnord8_gui, style = italic },                        -- italic funtion names
    Identifier = { fg = aexnord.aexnord9_gui, style = italic },                      -- any variable name
    Keyword = { fg = aexnord.aexnord9_gui, style = italic },                         -- italic for, do, while, etc.
    Repeat = { fg = aexnord.aexnord9_gui, style = italic },                          -- italic any other keyword
    String = { fg = aexnord.aexnord14_gui, style = italic },                         -- any string
  }
end

theme.loadEditor = function()
  -- Editor highlight groups

  local editor = {
    NormalFloat = { fg = aexnord.aexnord4_gui, bg = aexnord.float },              -- normal text and background color
    FloatBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },              -- normal text and background color
    ColorColumn = { fg = aexnord.none, bg = aexnord.aexnord1_gui },               -- used for the columns set with 'colorcolumn'
    Conceal = { fg = aexnord.aexnord1_gui },                                      -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "reverse" }, -- the character under the cursor
    CursorIM = { fg = aexnord.aexnord5_gui, bg = aexnord.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    Directory = { fg = aexnord.aexnord7_gui, bg = aexnord.none },                 -- directory names (and other special names in listings)
    EndOfBuffer = { fg = aexnord.aexnord1_gui },
    ErrorMsg = { fg = aexnord.none },
    Folded = { fg = aexnord.aexnord3_gui_bright, bg = aexnord.none, style = italic },
    FoldColumn = { fg = aexnord.aexnord7_gui },
    IncSearch = { fg = aexnord.aexnord6_gui, bg = aexnord.aexnord10_gui },
    LineNr = { fg = aexnord.aexnord16_gui_ghost },
    -- LineNr = { fg = aexnord.aexnord3_gui_bright },
     CursorLineNr = { fg = aexnord.aexnord4_gui, bg = aexnord.cursorlinefg },
     -- CursorLineNr = { fg = aexnord.aexnord4_gui },
    -- CursorLineNr = { fg = aexnord.aexnord4_gui },
    MatchParen = { fg = aexnord.aexnord15_gui, bg = aexnord.none, style = bold },
    ModeMsg = { fg = aexnord.aexnord4_gui },
    MoreMsg = { fg = aexnord.aexnord4_gui },
    NonText = { fg = aexnord.aexnord1_gui },
    Pmenu = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui },
    PmenuSel = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord10_gui },
    PmenuSbar = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui },
    PmenuThumb = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord4_gui },
    Question = { fg = aexnord.aexnord14_gui },
    QuickFixLine = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "reverse" },
    qfLineNr = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "reverse" },
    Search = { fg = aexnord.aexnord6_gui, bg = aexnord.aexnord10_gui },
    Substitute = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord12_gui },
    SpecialKey = { fg = aexnord.aexnord9_gui },
    SpellBad = { fg = aexnord.aexnord11_gui, bg = aexnord.none, style = italic_undercurl },
    SpellCap = { fg = aexnord.aexnord7_gui, bg = aexnord.none, style = italic_undercurl },
    SpellLocal = { fg = aexnord.aexnord8_gui, bg = aexnord.none, style = italic_undercurl },
    SpellRare = { fg = aexnord.aexnord9_gui, bg = aexnord.none, style = italic_undercurl },
    StatusLine = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui },
    StatusLineNC = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },
    StatusLineTerm = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui },
    StatusLineTermNC = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },
    TabLineFill = { fg = aexnord.aexnord4_gui, bg = aexnord.none },
    TablineSel = { fg = aexnord.aexnord1_gui, bg = aexnord.aexnord9_gui },
    Tabline = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },
    Title = { fg = aexnord.aexnord14_gui, bg = aexnord.none, style = bold },
    Visual = { fg = aexnord.none, bg = aexnord.aexnord2_gui },
    VisualNOS = { fg = aexnord.none, bg = aexnord.aexnord2_gui },
    WarningMsg = { fg = aexnord.aexnord15_gui },
    WildMenu = { fg = aexnord.aexnord12_gui, bg = aexnord.none, style = bold },
    CursorColumn = { fg = aexnord.none, bg = aexnord.cursorlinefg },
    CursorLine = { fg = aexnord.none, bg = aexnord.cursorlinefg },
    ToolbarLine = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },
    ToolbarButton = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = bold },
    NormalMode = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "reverse" },
    InsertMode = { fg = aexnord.aexnord14_gui, bg = aexnord.none, style = "reverse" },
    ReplacelMode = { fg = aexnord.aexnord11_gui, bg = aexnord.none, style = "reverse" },
    VisualMode = { fg = aexnord.aexnord9_gui, bg = aexnord.none, style = "reverse" },
    CommandMode = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "reverse" },
    Warnings = { fg = aexnord.aexnord15_gui },

    healthError = { fg = aexnord.aexnord11_gui },
    healthSuccess = { fg = aexnord.aexnord14_gui },
    healthWarning = { fg = aexnord.aexnord15_gui },

    -- dashboard
    DashboardShortCut = { fg = aexnord.aexnord7_gui },
    DashboardHeader = { fg = aexnord.aexnord9_gui },
    DashboardCenter = { fg = aexnord.aexnord8_gui },
    DashboardFooter = { fg = aexnord.aexnord14_gui, style = italic },

    -- Barbar
    BufferTabpageFill = { bg = aexnord.aexnord0_gui },

    BufferCurrent = { bg = aexnord.aexnord1_gui },
    BufferCurrentMod = { bg = aexnord.aexnord1_gui, fg = aexnord.aexnord15_gui },
    BufferCurrentIcon = { bg = aexnord.aexnord1_gui },
    BufferCurrentSign = { bg = aexnord.aexnord1_gui },
    BufferCurrentIndex = { bg = aexnord.aexnord1_gui },
    BufferCurrentTarget = { bg = aexnord.aexnord1_gui, fg = aexnord.aexnord11_gui },

    BufferInactive = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord3_gui },
    BufferInactiveMod = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord15_gui },
    BufferInactiveIcon = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord3_gui },
    BufferInactiveSign = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord3_gui },
    BufferInactiveIndex = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord3_gui },
    BufferInactiveTarget = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord11_gui },

    BufferVisible = { bg = aexnord.aexnord2_gui },
    BufferVisibleMod = { bg = aexnord.aexnord2_gui, fg = aexnord.aexnord15_gui },
    BufferVisibleIcon = { bg = aexnord.aexnord2_gui },
    BufferVisibleSign = { bg = aexnord.aexnord2_gui },
    BufferVisibleIndex = { bg = aexnord.aexnord2_gui },
    BufferVisibleTarget = { bg = aexnord.aexnord2_gui, fg = aexnord.aexnord11_gui },

    -- nvim-notify
    NotifyDEBUGBorder = { fg = aexnord.aexnord3_gui },
    NotifyDEBUGIcon = { fg = aexnord.aexnord3_gui },
    NotifyDEBUGTitle = { fg = aexnord.aexnord3_gui },
    NotifyERRORBorder = { fg = aexnord.aexnord11_gui },
    NotifyERRORIcon = { fg = aexnord.aexnord11_gui },
    NotifyERRORTitle = { fg = aexnord.aexnord11_gui },
    NotifyINFOBorder = { fg = aexnord.aexnord14_gui },
    NotifyINFOIcon = { fg = aexnord.aexnord14_gui },
    NotifyINFOTitle = { fg = aexnord.aexnord14_gui },
    NotifyTRACEBorder = { fg = aexnord.aexnord15_gui },
    NotifyTRACEIcon = { fg = aexnord.aexnord15_gui },
    NotifyTRACETitle = { fg = aexnord.aexnord15_gui },
    NotifyWARNBorder = { fg = aexnord.aexnord13_gui },
    NotifyWARNIcon = { fg = aexnord.aexnord13_gui },
    NotifyWARNTitle = { fg = aexnord.aexnord13_gui },

    -- leap.nvim
    LeapMatch = { style = "underline,nocombine", fg = aexnord.aexnord13_gui },
    LeapLabelPrimary = { style = "nocombine", fg = aexnord.aexnord0_gui, bg = aexnord.aexnord13_gui },
    LeapLabelSecondary = { style = "nocombine", fg = aexnord.aexnord0_gui, bg = aexnord.aexnord15_gui },
  }

  -- Options:

  --Set transparent background
  if vim.g.aexnord_disable_background then
    editor.Normal = { fg = aexnord.aexnord4_gui, bg = aexnord.none } -- normal text and background color
    editor.CursorLineSign = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui }
    editor.SignColumn = { fg = aexnord.aexnord4_gui, bg = aexnord.none }
  else
    editor.Normal = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord0_gui } -- normal text and background color
    editor.CursorLineSign = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui }
    editor.SignColumn = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord0_gui }
  end

  -- Remove window split borders
  if vim.g.aexnord_borders then
    editor.VertSplit = { fg = aexnord.aexnord2_gui }
  else
    editor.VertSplit = { fg = aexnord.aexnord0_gui }
  end

  if vim.g.aexnord_uniform_diff_background then
    editor.DiffAdd = { fg = aexnord.aexnord14_gui, bg = aexnord.aexnord1_gui }             -- diff mode: Added line
    editor.DiffChange = { fg = aexnord.aexnord13_gui, bg = aexnord.aexnord1_gui }          -- diff mode: Changed line
    editor.DiffDelete = { fg = aexnord.aexnord11_gui, bg = aexnord.aexnord1_gui }          -- diff mode: Deleted line
    editor.DiffText = { fg = aexnord.aexnord15_gui, bg = aexnord.aexnord1_gui }            -- diff mode: Changed text within a changed line
  else
    editor.DiffAdd = { fg = aexnord.aexnord14_gui, bg = aexnord.none, style = "reverse" }  -- diff mode: Added line
    editor.DiffChange = { fg = aexnord.aexnord13_gui, bg = aexnord.none, style = "reverse" } -- diff mode: Changed line
    editor.DiffDelete = { fg = aexnord.aexnord11_gui, bg = aexnord.none, style = "reverse" } -- diff mode: Deleted line
    editor.DiffText = { fg = aexnord.aexnord15_gui, bg = aexnord.none, style = "reverse" } -- diff mode: Changed text within a changed line
  end

  return editor
end

theme.loadTerminal = function()
  vim.g.terminal_color_0 = aexnord.aexnord1_gui
  vim.g.terminal_color_1 = aexnord.aexnord11_gui
  vim.g.terminal_color_2 = aexnord.aexnord14_gui
  vim.g.terminal_color_3 = aexnord.aexnord13_gui
  vim.g.terminal_color_4 = aexnord.aexnord9_gui
  vim.g.terminal_color_5 = aexnord.aexnord15_gui
  vim.g.terminal_color_6 = aexnord.aexnord8_gui
  vim.g.terminal_color_7 = aexnord.aexnord5_gui
  vim.g.terminal_color_8 = aexnord.aexnord3_gui
  vim.g.terminal_color_9 = aexnord.aexnord11_gui
  vim.g.terminal_color_10 = aexnord.aexnord14_gui
  vim.g.terminal_color_11 = aexnord.aexnord13_gui
  vim.g.terminal_color_12 = aexnord.aexnord9_gui
  vim.g.terminal_color_13 = aexnord.aexnord15_gui
  vim.g.terminal_color_14 = aexnord.aexnord7_gui
  vim.g.terminal_color_15 = aexnord.aexnord6_gui
end

theme.loadTreeSitter = function()
  -- TreeSitter highlight groups

  local treesitter = {
    TSConstructor = { fg = aexnord.aexnord9_gui },                                     -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSConstant = { fg = aexnord.aexnord13_gui },                                       -- For constants
    TSFloat = { fg = aexnord.aexnord15_gui },                                          -- For floats
    TSNumber = { fg = aexnord.aexnord15_gui },                                         -- For all number
    TSAttribute = { fg = aexnord.aexnord15_gui },                                      -- (unstable) TODO: docs
    TSError = { fg = aexnord.aexnord11_gui },                                          -- For syntax/parser errors.
    TSException = { fg = aexnord.aexnord15_gui },                                      -- For exception related keywords.
    TSFuncMacro = { fg = aexnord.aexnord7_gui },                                       -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude = { fg = aexnord.aexnord9_gui },                                         -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel = { fg = aexnord.aexnord15_gui },                                          -- For labels: `label:` in C and `:label:` in Lua.
    TSOperator = { fg = aexnord.aexnord9_gui },                                        -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = aexnord.aexnord10_gui },                                      -- For parameters of a function.
    TSParameterReference = { fg = aexnord.aexnord10_gui },                             -- For references to parameters of a function.
    TSPunctDelimiter = { fg = aexnord.aexnord8_gui },                                  -- For delimiters ie: `.`
    TSPunctBracket = { fg = aexnord.aexnord8_gui },                                    -- For brackets and parens.
    TSPunctSpecial = { fg = aexnord.aexnord8_gui },                                    -- For special punctutation that does not fall in the catagories before.
    TSSymbol = { fg = aexnord.aexnord15_gui },                                         -- For identifiers referring to symbols or atoms.
    TSType = { fg = aexnord.aexnord9_gui },                                            -- For types.
    TSTypeBuiltin = { fg = aexnord.aexnord9_gui },                                     -- For builtin types.
    TSTag = { fg = aexnord.aexnord4_gui },                                             -- Tags like html tag names.
    TSTagDelimiter = { fg = aexnord.aexnord15_gui },                                   -- Tag delimiter like `<` `>` `/`
    TSText = { fg = aexnord.aexnord4_gui },                                            -- For strings consideaexnord11_gui text in a markup language.
    TSTextReference = { fg = aexnord.aexnord15_gui },                                  -- FIXME
    TSEmphasis = { fg = aexnord.aexnord10_gui },                                       -- For text to be represented with emphasis.
    TSUnderline = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "underline" }, -- For text to be represented with an underline.
    TSLiteral = { fg = aexnord.aexnord4_gui },                                         -- Literal text.
    TSURI = { fg = aexnord.aexnord14_gui },                                            -- Any URI like a link or email.
    TSAnnotation = { fg = aexnord.aexnord11_gui },                                     -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    ["@constructor"] = { fg = aexnord.aexnord9_gui },
    ["@constant"] = { fg = aexnord.aexnord13_gui },
    ["@float"] = { fg = aexnord.aexnord15_gui },
    ["@number"] = { fg = aexnord.aexnord15_gui },
    ["@attribute"] = { fg = aexnord.aexnord15_gui },
    ["@error"] = { fg = aexnord.aexnord11_gui },
    ["@exception"] = { fg = aexnord.aexnord15_gui },
    ["@funtion.macro"] = { fg = aexnord.aexnord7_gui },
    ["@include"] = { fg = aexnord.aexnord9_gui },
    ["@label"] = { fg = aexnord.aexnord15_gui },
    ["@operator"] = { fg = aexnord.aexnord9_gui },
    ["@parameter"] = { fg = aexnord.aexnord10_gui },
    ["@punctuation.delimiter"] = { fg = aexnord.aexnord8_gui },
    ["@punctuation.bracket"] = { fg = aexnord.aexnord8_gui },
    ["@punctuation.special"] = { fg = aexnord.aexnord8_gui },
    ["@symbol"] = { fg = aexnord.aexnord15_gui },
    ["@type"] = { fg = aexnord.aexnord9_gui },
    ["@type.builtin"] = { fg = aexnord.aexnord9_gui },
    ["@tag"] = { fg = aexnord.aexnord4_gui },
    ["@tag.delimiter"] = { fg = aexnord.aexnord15_gui },
    ["@text"] = { fg = aexnord.aexnord4_gui },
    ["@text.reference"] = { fg = aexnord.aexnord15_gui, style = bold },
    ["@text.emphasis"] = { fg = aexnord.aexnord10_gui, style = italic },
    ["@text.underline"] = { fg = aexnord.aexnord4_gui, bg = aexnord.none, style = "underline" },
    ["@text.literal"] = { fg = aexnord.aexnord4_gui },
    ["@text.uri"] = { fg = aexnord.aexnord14_gui, style = "underline" },
    ["@text.strike"] = { fg = aexnord.aexnord4_gui, style = "strikethrough" },
    ["@text.math"] = { fg = aexnord.aexnord7_gui },

    -- @todo Missing highlights
    -- @function.call
    -- @method.call
    -- @type.qualifier
    -- @text.math (e.g. for LaTeX math environments)
    -- @text.environment (e.g. for text environments of markup languages)
    -- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
    -- @text.note
    -- @text.warning
    -- @text.danger
    -- @tag.attribute
    -- @string.special
  }

  treesitter.TSVariableBuiltin = { fg = aexnord.aexnord4_gui, style = bold }
  treesitter.TSBoolean = { fg = aexnord.aexnord9_gui, style = bold }
  treesitter.TSConstBuiltin = { fg = aexnord.aexnord7_gui, style = bold }
  treesitter.TSConstMacro = { fg = aexnord.aexnord7_gui, style = bold }
  treesitter.TSVariable = { fg = aexnord.aexnord4_gui, style = bold }
  treesitter.TSTitle = { fg = aexnord.aexnord10_gui, bg = aexnord.none, style = bold }
  treesitter["@variable"] = { fg = aexnord.aexnord4_gui, style = bold }
  treesitter["@variable.builtin"] = { fg = aexnord.aexnord4_gui, style = bold }
  treesitter["@variable.global"] = { fg = aexnord.aexnord4_gui, style = bold }
  treesitter["@boolean"] = { fg = aexnord.aexnord9_gui, style = bold }
  treesitter["@constant.builtin"] = { fg = aexnord.aexnord7_gui, style = bold }
  treesitter["@constant.macro"] = { fg = aexnord.aexnord7_gui, style = bold }
  treesitter["@text.title"] = { fg = aexnord.aexnord10_gui, bg = aexnord.none, style = bold }
  treesitter["@text.strong"] = { fg = aexnord.aexnord10_gui, bg = aexnord.none, style = bold }
  -- Comments
  treesitter.TSComment = { fg = aexnord.aexnord3_gui_bright, style = italic }
  -- Conditionals
  treesitter.TSConditional = { fg = aexnord.aexnord9_gui, style = italic } -- For keywords related to conditionnals.
  -- Function names
  treesitter.TSFunction = { fg = aexnord.aexnord8_gui, style = italic }   -- For fuction (calls and definitions).
  treesitter.TSMethod = { fg = aexnord.aexnord7_gui, style = italic }     -- For method calls and definitions.
  treesitter.TSFuncBuiltin = { fg = aexnord.aexnord8_gui, style = italic }
  -- Namespaces and property accessors
  treesitter.TSNamespace = { fg = aexnord.aexnord4_gui, style = italic } -- For identifiers referring to modules and namespaces.
  treesitter.TSField = { fg = aexnord.aexnord4_gui, style = italic }    -- For fields.
  treesitter.TSProperty = { fg = aexnord.aexnord10_gui, style = italic } -- Same as `TSField`, but when accessing, not declaring.
  -- Language keywords
  treesitter.TSKeyword = { fg = aexnord.aexnord9_gui, style = italic }  -- For keywords that don't fall in other categories.
  treesitter.TSKeywordFunction = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter.TSKeywordReturn = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter.TSKeywordOperator = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter.TSRepeat = { fg = aexnord.aexnord9_gui, style = italic }       -- For keywords related to loops.
  -- Strings
  treesitter.TSString = { fg = aexnord.aexnord14_gui, style = italic }      -- For strings.
  treesitter.TSStringRegex = { fg = aexnord.aexnord7_gui, style = italic }  -- For regexes.
  treesitter.TSStringEscape = { fg = aexnord.aexnord15_gui, style = italic } -- For escape characters within a string.
  treesitter.TSCharacter = { fg = aexnord.aexnord14_gui, style = italic }   -- For characters.

  treesitter["@comment"] = { fg = aexnord.aexnord3_gui_bright, style = italic }
  treesitter["@conditional"] = { fg = aexnord.aexnord9_gui, style = italic }
  treesitter["@function"] = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter["@method"] = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter["@function.builtin"] = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter["@namespace"] = { fg = aexnord.aexnord4_gui, style = italic }
  treesitter["@field"] = { fg = aexnord.aexnord4_gui, style = italic }
  treesitter["@property"] = { fg = aexnord.aexnord10_gui, style = italic }
  treesitter["@keyword"] = { fg = aexnord.aexnord9_gui, style = italic }
  treesitter["@keyword.function"] = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter["@keyword.return"] = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter["@keyword.operator"] = { fg = aexnord.aexnord8_gui, style = italic }
  treesitter["@repeat"] = { fg = aexnord.aexnord9_gui, style = italic }
  treesitter["@string"] = { fg = aexnord.aexnord14_gui, style = italic }
  treesitter["@string.regex"] = { fg = aexnord.aexnord7_gui, style = italic }
  treesitter["@string.escape"] = { fg = aexnord.aexnord15_gui, style = italic }
  treesitter["@character"] = { fg = aexnord.aexnord14_gui, style = italic }

  return treesitter
end

theme.loadFiletypes = function()
  -- Filetype-specific highlight groups

  local ft = {
    -- yaml
    yamlBlockMappingKey = { fg = aexnord.aexnord7_gui },
    yamlBool = { link = "Boolean" },
    yamlDocumentStart = { link = "Keyword" },
    yamlTSField = { fg = aexnord.aexnord7_gui },
    yamlTSString = { fg = aexnord.aexnord4_gui },
    yamlTSPunctSpecial = { link = "Keyword" },
    yamlKey = { fg = aexnord.aexnord7_gui }, -- stephpy/vim-yaml
  }

  return ft
end

theme.loadLSP = function()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError = { fg = aexnord.aexnord11_gui },                            -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError = { fg = aexnord.aexnord11_gui },                               -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError = { fg = aexnord.aexnord11_gui },                           -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError = { fg = aexnord.aexnord11_gui },                        -- Virtual text "Error"
    LspDiagnosticsUnderlineError = { style = "undercurl", sp = aexnord.aexnord11_gui },     -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning = { fg = aexnord.aexnord15_gui },                          -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning = { fg = aexnord.aexnord15_gui },                             -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning = { fg = aexnord.aexnord15_gui },                         -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning = { fg = aexnord.aexnord15_gui },                      -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = aexnord.aexnord15_gui },   -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation = { fg = aexnord.aexnord10_gui },                      -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation = { fg = aexnord.aexnord10_gui },                         -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation = { fg = aexnord.aexnord10_gui },                     -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = aexnord.aexnord10_gui },                  -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = aexnord.aexnord10_gui }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint = { fg = aexnord.aexnord9_gui },                              -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint = { fg = aexnord.aexnord9_gui },                                 -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint = { fg = aexnord.aexnord9_gui },                             -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint = { fg = aexnord.aexnord9_gui },                          -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint = { style = "undercurl", sp = aexnord.aexnord10_gui },      -- used to underline "Hint" diagnostics.
    LspReferenceText = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },            -- used for highlighting "text" references
    LspReferenceRead = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },            -- used for highlighting "read" references
    LspReferenceWrite = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },           -- used for highlighting "write" references

    DiagnosticError = { link = "LspDiagnosticsDefaultError" },
    DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
    DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
    DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
    DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
    DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
    DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
    DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
    DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
    DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
    DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
    DiagnosticSignError = { link = "LspDiagnosticsSignError" },
    DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
    DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
    DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
    DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
    DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
    DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
    DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
    DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
  }

  return lsp
end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- LspTrouble
    LspTroubleText = { fg = aexnord.aexnord4_gui },
    LspTroubleCount = { fg = aexnord.aexnord9_gui, bg = aexnord.aexnord10_gui },
    LspTroubleNormal = { fg = aexnord.aexnord4_gui, bg = aexnord.sidebar },

    -- Diff
    diffAdded = { fg = aexnord.aexnord14_gui },
    diffRemoved = { fg = aexnord.aexnord11_gui },
    diffChanged = { fg = aexnord.aexnord15_gui },
    diffOldFile = { fg = aexnord.yellow },
    diffNewFile = { fg = aexnord.aexnord12_gui },
    diffFile = { fg = aexnord.aexnord7_gui },
    diffLine = { fg = aexnord.aexnord3_gui },
    diffIndexLine = { fg = aexnord.aexnord9_gui },

    -- Neogit
    NeogitBranch = { fg = aexnord.aexnord10_gui },
    NeogitRemote = { fg = aexnord.aexnord9_gui },
    NeogitHunkHeader = { fg = aexnord.aexnord8_gui },
    NeogitHunkHeaderHighlight = { fg = aexnord.aexnord8_gui, bg = aexnord.aexnord1_gui },
    NeogitDiffContextHighlight = { bg = aexnord.aexnord1_gui },
    NeogitDiffDeleteHighlight = { fg = aexnord.aexnord11_gui, style = "reverse" },
    NeogitDiffAddHighlight = { fg = aexnord.aexnord14_gui, style = "reverse" },

    -- GitGutter
    GitGutterAdd = { fg = aexnord.aexnord14_gui },  -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = aexnord.aexnord11_gui }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = aexnord.aexnord14_gui },    -- diff mode: Added line |diff.txt|
    GitSignsAddNr = { fg = aexnord.aexnord14_gui },  -- diff mode: Added line |diff.txt|
    GitSignsAddLn = { fg = aexnord.aexnord14_gui },  -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = aexnord.aexnord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = aexnord.aexnord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = aexnord.aexnord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsCurrentLineBlame = { fg = aexnord.aexnord3_gui_bright, style = bold },

    -- Telescope
    TelescopePromptBorder = { fg = aexnord.aexnord4_gui },
    TelescopeResultsBorder = { fg = aexnord.aexnord4_gui },
    TelescopePreviewBorder = { fg = aexnord.aexnord4_gui },
    TelescopeSelectionCaret = { fg = aexnord.aexnord9_gui },
    TelescopeSelection = { fg = aexnord.aexnord6_gui, bg = aexnord.aexnord2_gui },
    TelescopeMatching = { link = 'Search' },

    -- NvimTree
    NvimTreeRootFolder = { fg = aexnord.aexnord15_gui },
    NvimTreeSymlink = { fg = aexnord.aexnord5_gui },
    NvimTreeFolderName = { fg = aexnord.aexnord4_gui },
    NvimTreeFolderIcon = { fg = aexnord.aexnord9_gui },
    NvimTreeEmptyFolderName = { fg = aexnord.aexnord4_gui },
    NvimTreeOpenedFolderName = { fg = aexnord.aexnord5_gui },
    NvimTreeExecFile = { fg = aexnord.aexnord4_gui },
    NvimTreeOpenedFile = { fg = aexnord.aexnord6_gui },
    NvimTreeSpecialFile = { fg = aexnord.aexnord4_gui, style = bold },
    NvimTreeImageFile = { fg = aexnord.aexnord4_gui },
    NvimTreeMarkdownFile = { fg = aexnord.aexnord4_gui },
    NvimTreeIndentMarker = { fg = aexnord.aexnord9_gui },
    NvimTreeGitDirty = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    NvimTreeGitStaged = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    NvimTreeGitMerge = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    NvimTreeGitRenamed = { fg = aexnord.aexnord13_gui }, -- diff mode: Changed line |diff.txt|
    NvimTreeGitNew = { fg = aexnord.aexnord14_gui },   -- diff mode: Added line |diff.txt|
    NvimTreeGitDeleted = { fg = aexnord.aexnord11_gui }, -- diff mode: Deleted line |diff.txt|
    NvimTreeGitIgnored = { fg = aexnord.aexnord3_gui_bright },
    LspDiagnosticsError = { fg = aexnord.aexnord12_gui },
    LspDiagnosticsWarning = { fg = aexnord.aexnord15_gui },
    LspDiagnosticsInformation = { fg = aexnord.aexnord10_gui },
    LspDiagnosticsHint = { fg = aexnord.aexnord9_gui },

    -- WhichKey
    WhichKey = { fg = aexnord.aexnord8_gui, style = bold },
    WhichKeyGroup = { fg = aexnord.aexnord5_gui },
    WhichKeyDesc = { fg = aexnord.aexnord7_gui, style = italic },
    WhichKeySeperator = { fg = aexnord.aexnord9_gui },
    WhichKeyFloating = { bg = aexnord.aexnord1_gui },
    WhichKeyFloat = { bg = aexnord.aexnord1_gui },
    WhichKeyValue = { fg = aexnord.aexnord7_gui },

    -- LspSaga
    DiagnosticError = { fg = aexnord.aexnord12_gui },
    DiagnosticWarning = { fg = aexnord.aexnord15_gui },
    DiagnosticInformation = { fg = aexnord.aexnord10_gui },
    DiagnosticHint = { fg = aexnord.aexnord9_gui },
    DiagnosticTruncateLine = { fg = aexnord.aexnord4_gui },
    LspFloatWinBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaDefPreviewBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    DefinitionIcon = { fg = aexnord.aexnord7_gui },
    TargetWord = { fg = aexnord.aexnord6_gui, style = 'bold' },
    -- LspSaga code action
    LspSagaCodeActionTitle = { link = 'Title' },
    LspSagaCodeActionBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
    LspSagaCodeActionContent = { fg = aexnord.aexnord4_gui },
    -- LspSag finder
    LspSagaLspFinderBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaAutoPreview = { fg = aexnord.aexnord4_gui },
    LspSagaFinderSelection = { fg = aexnord.aexnord6_gui, bg = aexnord.aexnord2_gui },
    TargetFileName = { fg = aexnord.aexnord4_gui },
    FinderParam = { fg = aexnord.aexnord15_gui, bold = true },
    FinderVirtText = { fg = aexnord.aexnord15_gui15, bg = aexnord.none },
    DefinitionsIcon = { fg = aexnord.aexnord9_gui },
    Definitions = { fg = aexnord.aexnord15_gui, bold = true },
    DefinitionCount = { fg = aexnord.aexnord10_gui },
    ReferencesIcon = { fg = aexnord.aexnord9_gui },
    References = { fg = aexnord.aexnord15_gui, bold = true },
    ReferencesCount = { fg = aexnord.aexnord10_gui },
    ImplementsIcon = { fg = aexnord.aexnord9_gui },
    Implements = { fg = aexnord.aexnord15_gui, bold = true },
    ImplementsCount = { fg = aexnord.aexnord10_gui },
    -- LspSaga finder spinner
    FinderSpinnerBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    FinderSpinnerTitle = { link = 'Title' },
    FinderSpinner = { fg = aexnord.aexnord8_gui, bold = true },
    FinderPreviewSearch = { link = 'Search' },
    -- LspSaga definition
    DefinitionBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    DefinitionArrow = { fg = aexnord.aexnord8_gui },
    DefinitionSearch = { link = 'Search' },
    DefinitionFile = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    -- LspSaga hover
    LspSagaHoverBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
    -- Lsp rename
    LspSagaRenameBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaRenameMatch = { fg = aexnord.aexnord6_gui, bg = aexnord.aexnord9_gui },
    -- Lsp diagnostic
    LspSagaDiagnosticSource = { link = 'Comment' },
    LspSagaDiagnosticError = { link = 'DiagnosticError' },
    LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
    LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
    LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
    LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
    LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
    LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
    LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
    LspSagaDiagnosticBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaDiagnosticHeader = { fg = aexnord.aexnord4_gui },
    DiagnosticQuickFix = { fg = aexnord.aexnord14_gui, bold = true },
    DiagnosticMap = { fg = aexnord.aexnord15_gui },
    DiagnosticLineCol = { fg = aexnord.aexnord4_gui },
    LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
    ColInLineDiagnostic = { link = 'Comment' },
    -- LspSaga signture help
    LspSagaSignatureHelpBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
    -- Lspsaga lightbulb
    LspSagaLightBulb = { link = 'DiagnosticSignHint' },
    -- LspSaga shadow
    SagaShadow = { fg = 'black' },
    -- LspSaga float
    LspSagaBorderTitle = { link = 'Title' },
    -- LspSaga Outline
    LSOutlinePreviewBorder = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    OutlineIndentEvn = { fg = aexnord.aexnord15_gui },
    OutlineIndentOdd = { fg = aexnord.aexnord12_gui },
    OutlineFoldPrefix = { fg = aexnord.aexnord11_gui },
    OutlineDetail = { fg = aexnord.aexnord4_gui },
    -- LspSaga all floatwindow
    LspFloatWinNormal = { fg = aexnord.aexnord4_gui, bg = aexnord.float },
    -- Saga End

    -- Sneak
    Sneak = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord4_gui },
    SneakScope = { bg = aexnord.aexnord1_gui },

    -- Cmp
    CmpItemKind = { fg = aexnord.aexnord15_gui },
    CmpItemAbbrMatch = { fg = aexnord.aexnord5_gui, style = bold },
    CmpItemAbbrMatchFuzzy = { fg = aexnord.aexnord5_gui, style = bold },
    CmpItemAbbr = { fg = aexnord.aexnord4_gui },
    CmpItemMenu = { fg = aexnord.aexnord14_gui },

    -- Indent Blankline
    IndentBlanklineChar = { fg = aexnord.aexnord3_gui },
    IndentBlanklineContextChar = { fg = aexnord.aexnord10_gui },

    -- headline
    -- bg = (10 * aexnord0 + fg) / 11
    Headline1 = { fg = aexnord.aexnord12_gui, bg = "#3d3c44", bold = true },
    Headline2 = { fg = aexnord.aexnord13_gui, bg = "#3f4247", bold = true },
    Headline3 = { fg = aexnord.aexnord14_gui, bg = "#394147", bold = true },
    Headline4 = { fg = aexnord.aexnord9_gui, bg = "#363e4c", bold = true },
    Headline5 = { fg = aexnord.aexnord15_gui, bg = "#3a3c4a", bold = true },
    Headline6 = { fg = aexnord.aexnord4_gui, bg = "#3d434f", bold = true },

    Quote = { fg = aexnord.aexnord2_gui },
    CodeBlock = { bg = aexnord.aexnord1_gui },
    Dash = { aexnord.aexnord10_gui, bold = true },

    -- Illuminate
    illuminatedWord = { bg = aexnord.aexnord3_gui },
    illuminatedCurWord = { bg = aexnord.aexnord3_gui },
    IlluminatedWordText = { bg = aexnord.aexnord3_gui },
    IlluminatedWordRead = { bg = aexnord.aexnord3_gui },
    IlluminatedWordWrite = { bg = aexnord.aexnord3_gui },

    -- nvim-dap
    DapBreakpoint = { fg = aexnord.aexnord14_gui },
    DapStopped = { fg = aexnord.aexnord15_gui },

    -- nvim-dap-ui
    DapUIVariable = { fg = aexnord.aexnord4_gui },
    DapUIScope = { fg = aexnord.aexnord8_gui },
    DapUIType = { fg = aexnord.aexnord9_gui },
    DapUIValue = { fg = aexnord.aexnord4_gui },
    DapUIModifiedValue = { fg = aexnord.aexnord8_gui },
    DapUIDecoration = { fg = aexnord.aexnord8_gui },
    DapUIThread = { fg = aexnord.aexnord8_gui },
    DapUIStoppedThread = { fg = aexnord.aexnord8_gui },
    DapUIFrameName = { fg = aexnord.aexnord4_gui },
    DapUISource = { fg = aexnord.aexnord9_gui },
    DapUILineNumber = { fg = aexnord.aexnord8_gui },
    DapUIFloatBorder = { fg = aexnord.aexnord8_gui },
    DapUIWatchesEmpty = { fg = aexnord.aexnord11_gui },
    DapUIWatchesValue = { fg = aexnord.aexnord8_gui },
    DapUIWatchesError = { fg = aexnord.aexnord11_gui },
    DapUIBreakpointsPath = { fg = aexnord.aexnord8_gui },
    DapUIBreakpointsInfo = { fg = aexnord.aexnord8_gui },
    DapUIBreakpointsCurrentLine = { fg = aexnord.aexnord8_gui },
    DapUIBreakpointsLine = { fg = aexnord.aexnord8_gui },

    -- Hop
    HopNextKey = { fg = aexnord.aexnord4_gui, style = bold },
    HopNextKey1 = { fg = aexnord.aexnord8_gui, style = bold },
    HopNextKey2 = { fg = aexnord.aexnord4_gui },
    HopUnmatched = { fg = aexnord.aexnord3_gui },

    -- Fern
    FernBranchText = { fg = aexnord.aexnord3_gui_bright },

    -- nvim-ts-rainbow
    rainbowcol1 = { fg = aexnord.aexnord15_gui },
    rainbowcol2 = { fg = aexnord.aexnord13_gui },
    rainbowcol3 = { fg = aexnord.aexnord11_gui },
    rainbowcol4 = { fg = aexnord.aexnord7_gui },
    rainbowcol5 = { fg = aexnord.aexnord8_gui },
    rainbowcol6 = { fg = aexnord.aexnord15_gui },
    rainbowcol7 = { fg = aexnord.aexnord13_gui },

    -- rainbow-delimiters.nvim
    RainbowDelimiterRed = { fg = aexnord.aexnord11_gui },
    RainbowDelimiterYellow = { fg = aexnord.aexnord13_gui },
    RainbowDelimiterBlue = { fg = aexnord.aexnord9_gui },
    RainbowDelimiterOrange = { fg = aexnord.aexnord12_gui },
    RainbowDelimiterGreen = { fg = aexnord.aexnord14_gui },
    RainbowDelimiterCyan = { fg = aexnord.aexnord8_gui },
    RainbowDelimiterViolet = { fg = aexnord.aexnord15_gui },

    -- lightspeed
    LightspeedLabel = { fg = aexnord.aexnord8_gui, style = bold },
    LightspeedLabelOverlapped = { fg = aexnord.aexnord8_gui, style = "bold,underline" },
    LightspeedLabelDistant = { fg = aexnord.aexnord15_gui, style = bold },
    LightspeedLabelDistantOverlapped = { fg = aexnord.aexnord15_gui, style = "bold,underline" },
    LightspeedShortcut = { fg = aexnord.aexnord10_gui, style = bold },
    LightspeedShortcutOverlapped = { fg = aexnord.aexnord10_gui, style = "bold,underline" },
    LightspeedMaskedChar = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui, style = bold },
    LightspeedGreyWash = { fg = aexnord.aexnord3_gui_bright },
    LightspeedUnlabeledMatch = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },
    LightspeedOneCharMatch = { fg = aexnord.aexnord8_gui, style = "bold,reverse" },
    LightspeedUniqueChar = { style = "bold,underline" },

    -- Blink.cmp
    BlinkCmpGhostText = { fg = aexnord.aexnord16_gui_ghost, bg = aexnord.none   },
    -- copilot
    CopilotLabel = { fg = aexnord.aexnord3_gui, bg = aexnord.none },

    -- Statusline
    StatusLineDull = { fg = aexnord.aexnord3_gui, bg = aexnord.aexnord1_gui },
    StatusLineAccent = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord13_gui },

    -- mini.nvim
    MiniCompletionActiveParameter = { style = "underline" },

    MiniCursorword = { bg = aexnord.aexnord3_gui },
    MiniCursorwordCurrent = { bg = aexnord.aexnord3_gui },

    MiniIndentscopeSymbol = { fg = aexnord.aexnord10_gui },
    MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

    MiniJump = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord4_gui },

    MiniJump2dSpot = { fg = aexnord.aexnord12_gui, style = "bold,nocombine" },

    MiniStarterCurrent = { style = "nocombine" },
    MiniStarterFooter = { fg = aexnord.aexnord14_gui, style = italic },
    MiniStarterHeader = { fg = aexnord.aexnord9_gui },
    MiniStarterInactive = { link = "Comment" },
    MiniStarterItem = { link = "Normal" },
    MiniStarterItemBullet = { fg = aexnord.aexnord4_gui },
    MiniStarterItemPrefix = { fg = aexnord.aexnord15_gui },
    MiniStarterSection = { fg = aexnord.aexnord4_gui },
    MiniStarterQuery = { fg = aexnord.aexnord10_gui },

    MiniStatuslineDevinfo = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui },
    MiniStatuslineFileinfo = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord2_gui },
    MiniStatuslineFilename = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord1_gui },
    MiniStatuslineInactive = { fg = aexnord.aexnord4_gui, bg = aexnord.aexnord0_gui, style = bold },
    MiniStatuslineModeCommand = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord15_gui, style = bold },
    MiniStatuslineModeInsert = { fg = aexnord.aexnord1_gui, bg = aexnord.aexnord4_gui, style = bold },
    MiniStatuslineModeNormal = { fg = aexnord.aexnord1_gui, bg = aexnord.aexnord9_gui, style = bold },
    MiniStatuslineModeOther = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord13_gui, style = bold },
    MiniStatuslineModeReplace = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord11_gui, style = bold },
    MiniStatuslineModeVisual = { fg = aexnord.aexnord0_gui, bg = aexnord.aexnord7_gui, style = bold },

    MiniSurround = { link = "IncSearch" },

    MiniTablineCurrent = { bg = aexnord.aexnord1_gui },
    MiniTablineFill = { link = "TabLineFill" },
    MiniTablineHidden = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord3_gui },
    MiniTablineModifiedCurrent = { bg = aexnord.aexnord1_gui, fg = aexnord.aexnord15_gui },
    MiniTablineModifiedHidden = { bg = aexnord.aexnord0_gui, fg = aexnord.aexnord15_gui },
    MiniTablineModifiedVisible = { bg = aexnord.aexnord2_gui, fg = aexnord.aexnord15_gui },
    MiniTablineTabpagesection = { fg = aexnord.aexnord10_gui, bg = aexnord.aexnord6_gui, style = reverse_bold },
    MiniTablineVisible = { bg = aexnord.aexnord2_gui },

    MiniTestEmphasis = { style = bold },
    MiniTestFail = { fg = aexnord.aexnord11_gui, style = bold },
    MiniTestPass = { fg = aexnord.aexnord14_gui, style = bold },

    MiniTrailspace = { bg = aexnord.aexnord11_gui },

    -- Aerail
    AerialLine = { bg = aexnord.aexnord2_gui },
    AerialLineNC = { bg = aexnord.aexnord2_gui },

    AerialArrayIcon = { fg = aexnord.aexnord13_gui },
    AerialBooleanIcon = { fg = aexnord.aexnord9_gui, style = bold },
    AerialClassIcon = { fg = aexnord.aexnord9_gui },
    AerialConstantIcon = { fg = aexnord.aexnord13_gui },
    AerialConstructorIcon = { fg = aexnord.aexnord9_gui },
    AerialEnumIcon = { fg = aexnord.aexnord9_gui },
    AerialEnumMemberIcon = { fg = aexnord.aexnord4_gui },
    AerialEventIcon = { fg = aexnord.aexnord9_gui },
    AerialFieldIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord4_gui },
    AerialFileIcon = { fg = aexnord.aexnord14_gui },
    AerialFunctionIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord8_gui, style = italic } or
    { fg = aexnord.aexnord8_gui },
    AerialInterfaceIcon = { fg = aexnord.aexnord9_gui },
    AerialKeyIcon = { fg = aexnord.aexnord9_gui },
    AerialMethodIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord7_gui, style = italic } or
    { fg = aexnord.aexnord7_gui },
    AerialModuleIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord4_gui },
    AerialNamespaceIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic }
        or { fg = aexnord.aexnord4_gui },
    AerialNullIcon = { fg = aexnord.aexnord9_gui },
    AerialNumberIcon = { fg = aexnord.aexnord15_gui },
    AerialObjectIcon = { fg = aexnord.aexnord9_gui },
    AerialOperatorIcon = { fg = aexnord.aexnord9_gui },
    AerialPackageIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord4_gui },
    AerialPropertyIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic }
        or { fg = aexnord.aexnord10_gui },
    AerialStringIcon = vim.g.aexnord_italic and { fg = aexnord.aexnord14_gui, style = italic } or
    { fg = aexnord.aexnord14_gui },
    AerialStructIcon = { fg = aexnord.aexnord9_gui },
    AerialTypeParameterIcon = { fg = aexnord.aexnord10_gui },
    AerialVariableIcon = { fg = aexnord.aexnord4_gui, style = bold },

    AerialArray = { fg = aexnord.aexnord13_gui },
    AerialBoolean = { fg = aexnord.aexnord9_gui, style = bold },
    AerialClass = { fg = aexnord.aexnord9_gui },
    AerialConstant = { fg = aexnord.aexnord13_gui },
    AerialConstructor = { fg = aexnord.aexnord9_gui },
    AerialEnum = { fg = aexnord.aexnord9_gui },
    AerialEnumMember = { fg = aexnord.aexnord4_gui },
    AerialEvent = { fg = aexnord.aexnord9_gui },
    AerialField = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or { fg = aexnord.aexnord4_gui },
    AerialFile = { fg = aexnord.aexnord14_gui },
    AerialFunction = vim.g.aexnord_italic and { fg = aexnord.aexnord8_gui, style = italic } or
    { fg = aexnord.aexnord8_gui },
    AerialInterface = { fg = aexnord.aexnord9_gui },
    AerialKey = { fg = aexnord.aexnord9_gui },
    AerialMethod = vim.g.aexnord_italic and { fg = aexnord.aexnord7_gui, style = italic } or
    { fg = aexnord.aexnord7_gui },
    AerialModule = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord4_gui },
    AerialNamespace = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord4_gui },
    AerialNull = { fg = aexnord.aexnord9_gui },
    AerialNumber = { fg = aexnord.aexnord15_gui },
    AerialObject = { fg = aexnord.aexnord9_gui },
    AerialOperator = { fg = aexnord.aexnord9_gui },
    AerialPackage = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord4_gui },
    AerialProperty = vim.g.aexnord_italic and { fg = aexnord.aexnord4_gui, style = italic } or
    { fg = aexnord.aexnord10_gui },
    AerialString = vim.g.aexnord_italic and { fg = aexnord.aexnord14_gui, style = italic } or
    { fg = aexnord.aexnord14_gui },
    AerialStruct = { fg = aexnord.aexnord9_gui },
    AerialTypeParameter = { fg = aexnord.aexnord10_gui },
    AerialVariable = { fg = aexnord.aexnord4_gui, style = bold },

    -- nvim-navic
    NavicIconsArray = { fg = aexnord.aexnord13_gui },
    NavicIconsBoolean = { fg = aexnord.aexnord9_gui, style = bold },
    NavicIconsClass = { fg = aexnord.aexnord9_gui },
    NavicIconsConstant = { fg = aexnord.aexnord13_gui },
    NavicIconsConstructor = { fg = aexnord.aexnord9_gui },
    NavicIconsEnum = { fg = aexnord.aexnord9_gui },
    NavicIconsEnumMember = { fg = aexnord.aexnord4_gui },
    NavicIconsEvent = { fg = aexnord.aexnord9_gui },
    NavicIconsField = { fg = aexnord.aexnord4_gui, style = italic },
    NavicIconsFile = { fg = aexnord.aexnord14_gui },
    NavicIconsFunction = { fg = aexnord.aexnord8_gui, style = italic },
    NavicIconsInterface = { fg = aexnord.aexnord9_gui },
    NavicIconsKey = { fg = aexnord.aexnord9_gui },
    NavicIconsMethod = { fg = aexnord.aexnord7_gui, style = italic },
    NavicIconsModule = { fg = aexnord.aexnord4_gui, style = italic },
    NavicIconsNamespace = { fg = aexnord.aexnord4_gui, style = italic },
    NavicIconsNull = { fg = aexnord.aexnord9_gui },
    NavicIconsNumber = { fg = aexnord.aexnord15_gui },
    NavicIconsObject = { fg = aexnord.aexnord9_gui },
    NavicIconsOperator = { fg = aexnord.aexnord9_gui },
    NavicIconsPackage = { fg = aexnord.aexnord4_gui, style = italic },
    NavicIconsProperty = { fg = aexnord.aexnord4_gui, style = italic },
    NavicIconsString = { fg = aexnord.aexnord14_gui, style = italic },
    NavicIconsStruct = { fg = aexnord.aexnord9_gui },
    NavicIconsTypeParameter = { fg = aexnord.aexnord10_gui },
    NavicIconsVariable = { fg = aexnord.aexnord4_gui, style = bold },
    NavicText = { fg = aexnord.aexnord4_gui },
    NavicSeparator = { fg = aexnord.aexnord4_gui },
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.aexnord_disable_background then
    plugins.NvimTreeNormal = { fg = aexnord.aexnord4_gui, bg = aexnord.none }
  else
    plugins.NvimTreeNormal = { fg = aexnord.aexnord4_gui, bg = aexnord.sidebar }
  end

  if vim.g.aexnord_enable_sidebar_background then
    plugins.NvimTreeNormal = { fg = aexnord.aexnord4_gui, bg = aexnord.sidebar }
  else
    plugins.NvimTreeNormal = { fg = aexnord.aexnord4_gui, bg = aexnord.none }
  end

  return plugins
end

return theme
