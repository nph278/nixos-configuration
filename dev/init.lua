-- Options
vim.o.smarttab = true
vim.o.cindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.hidden = true
vim.o.cmdheight = 1
vim.o.updatetime = 300
vim.o.backup = false
vim.o.writebackup = false
vim.o.showmode = false
vim.o.ruler = false
vim.o.showcmd = false
vim.o.completeopt = 'menu,menuone,noselect,preview'
vim.o.number = true
vim.o.relativenumber = true

-- Highlighting, edited from http//github.com/joshdick/onedark.vim
vim.cmd("highlight Comment ctermfg=8 gui=italic cterm=italic")
vim.cmd("highlight Constant ctermfg=6")
vim.cmd("highlight String ctermfg=2")
vim.cmd("highlight Character ctermfg=2")
vim.cmd("highlight Number ctermfg=3")
vim.cmd("highlight Boolean ctermfg=3")
vim.cmd("highlight Float ctermfg=3")
vim.cmd("highlight Identifier ctermfg=1")
vim.cmd("highlight Function ctermfg=4")
vim.cmd("highlight Statement ctermfg=5")
vim.cmd("highlight Conditional ctermfg=5")
vim.cmd("highlight Repeat ctermfg=5")
vim.cmd("highlight Label ctermfg=5")
vim.cmd("highlight Operator ctermfg=5")
vim.cmd("highlight Keyword ctermfg=1")
vim.cmd("highlight Exception ctermfg=5")
vim.cmd("highlight PreProc ctermfg=3")
vim.cmd("highlight Include ctermfg=4")
vim.cmd("highlight Define ctermfg=5")
vim.cmd("highlight Macro ctermfg=5")
vim.cmd("highlight PreCondit ctermfg=3")
vim.cmd("highlight Type ctermfg=3")
vim.cmd("highlight StorageClass ctermfg=3")
vim.cmd("highlight Structure ctermfg=3")
vim.cmd("highlight Typedef ctermfg=3")
vim.cmd("highlight Special ctermfg=4")
vim.cmd("highlight SpecialChar ctermfg=3")
vim.cmd("highlight Delimiter")
vim.cmd("highlight SpecialComment ctermfg=8")
vim.cmd("highlight Underlined gui=underline cterm=underline")
vim.cmd("highlight Error ctermfg=1 ctermbg=0")
vim.cmd("highlight Todo ctermfg=5")
vim.cmd("highlight ColorColumn ctermbg=8")
vim.cmd("highlight Conceal")
vim.cmd("highlight Cursor ctermfg=0 ctermbg=4")
vim.cmd("highlight CursorColumn ctermbg=8")
vim.cmd("highlight CursorLine ctermbg=8")
vim.cmd("highlight Directory ctermfg=4")
vim.cmd("highlight DiffAdd ctermbg=2 ctermfg=0")
vim.cmd("highlight DiffChange ctermfg=3 gui=underline cterm=underline")
vim.cmd("highlight DiffDelete ctermbg=1 ctermfg=0")
vim.cmd("highlight DiffText ctermbg=3 ctermfg=0")
vim.cmd("highlight ErrorMsg ctermfg=1 ctermbg=0")
vim.cmd("highlight VertSplit ctermfg=7")
vim.cmd("highlight Folded ctermfg=8")
vim.cmd("highlight FoldColumn")
vim.cmd("highlight SignColumn")
vim.cmd("highlight IncSearch ctermfg=3 ctermbg=8")
vim.cmd("highlight LineNr ctermfg=8")
vim.cmd("highlight CursorLineNr ctermfg=3")
vim.cmd("highlight MatchParen ctermfg=4 gui=underline cterm=underline")
vim.cmd("highlight ModeMsg")
vim.cmd("highlight MoreMsg")
vim.cmd("highlight NonText ctermfg=8")
vim.cmd("highlight Normal ctermfg=7 ctermbg=0")
vim.cmd("highlight Pmenu ctermfg=7 ctermbg=8")
vim.cmd("highlight PmenuSel ctermfg=8 ctermbg=4")
vim.cmd("highlight PmenuSbar ctermbg=8")
vim.cmd("highlight PmenuThumb ctermbg=7")
vim.cmd("highlight Question ctermfg=5")
vim.cmd("highlight QuickFixLine ctermfg=0 ctermbg=3")
vim.cmd("highlight Search ctermfg=0 ctermbg=3")
vim.cmd("highlight SpecialKey ctermfg=8")
vim.cmd("highlight SpellBad ctermfg=1 gui=underline cterm=underline")
vim.cmd("highlight SpellCap ctermfg=3")
vim.cmd("highlight SpellLocal ctermfg=3")
vim.cmd("highlight SpellRare ctermfg=3")
vim.cmd("highlight StatusLine ctermfg=7 ctermbg=8")
vim.cmd("highlight StatusLineNC ctermfg=8")
vim.cmd("highlight StatusLineTerm ctermfg=7 ctermbg=8")
vim.cmd("highlight StatusLineTermNC ctermfg=8")
vim.cmd("highlight TabLine ctermfg=8")
vim.cmd("highlight TabLineFill")
vim.cmd("highlight TabLineSel ctermfg=7")
vim.cmd("highlight Terminal ctermfg=7 ctermbg=0")
vim.cmd("highlight Title ctermfg=2")
vim.cmd("highlight Visual ctermbg=8")
vim.cmd("highlight VisualNOS ctermbg=8")
vim.cmd("highlight WarningMsg ctermfg=3")
vim.cmd("highlight WildMenu ctermfg=0 ctermbg=4")
vim.cmd("highlight debugPC ctermbg=8")
vim.cmd("highlight debugBreakpoint ctermfg=0 ctermbg=1")
vim.cmd("highlight cssAttrComma ctermfg=5")
vim.cmd("highlight cssAttributeSelector ctermfg=2")
vim.cmd("highlight cssBraces ctermfg=7")
vim.cmd("highlight cssClassName ctermfg=3")
vim.cmd("highlight cssClassNameDot ctermfg=3")
vim.cmd("highlight cssDefinition ctermfg=5")
vim.cmd("highlight cssFontAttr ctermfg=3")
vim.cmd("highlight cssFontDescriptor ctermfg=5")
vim.cmd("highlight cssFunctionName ctermfg=4")
vim.cmd("highlight cssIdentifier ctermfg=4")
vim.cmd("highlight cssImportant ctermfg=5")
vim.cmd("highlight cssInclude ctermfg=7")
vim.cmd("highlight cssIncludeKeyword ctermfg=5")
vim.cmd("highlight cssMediaType ctermfg=3")
vim.cmd("highlight cssProp ctermfg=7")
vim.cmd("highlight cssPseudoClassId ctermfg=3")
vim.cmd("highlight cssSelectorOp ctermfg=5")
vim.cmd("highlight cssSelectorOp2 ctermfg=5")
vim.cmd("highlight cssTagName ctermfg=1")
vim.cmd("highlight goDeclaration ctermfg=5")
vim.cmd("highlight goBuiltins ctermfg=6")
vim.cmd("highlight goFunctionCall ctermfg=4")
vim.cmd("highlight goVarDefs ctermfg=1")
vim.cmd("highlight goVarAssign ctermfg=1")
vim.cmd("highlight goVar ctermfg=5")
vim.cmd("highlight goConst ctermfg=5")
vim.cmd("highlight goType ctermfg=3")
vim.cmd("highlight goTypeName ctermfg=3")
vim.cmd("highlight goDeclType ctermfg=6")
vim.cmd("highlight goTypeDecl ctermfg=5")
vim.cmd("highlight htmlArg ctermfg=3")
vim.cmd("highlight htmlBold ctermfg=3 gui=bold cterm=bold")
vim.cmd("highlight htmlEndTag ctermfg=7")
vim.cmd("highlight htmlH1 ctermfg=1")
vim.cmd("highlight htmlH2 ctermfg=1")
vim.cmd("highlight htmlH3 ctermfg=1")
vim.cmd("highlight htmlH4 ctermfg=1")
vim.cmd("highlight htmlH5 ctermfg=1")
vim.cmd("highlight htmlH6 ctermfg=1")
vim.cmd("highlight htmlItalic ctermfg=5 gui=italic cterm=italic")
vim.cmd("highlight htmlLink ctermfg=6 gui=underline cterm=underline")
vim.cmd("highlight htmlSpecialChar ctermfg=3")
vim.cmd("highlight htmlSpecialTagName ctermfg=1")
vim.cmd("highlight htmlTag ctermfg=7")
vim.cmd("highlight htmlTagN ctermfg=1")
vim.cmd("highlight htmlTagName ctermfg=1")
vim.cmd("highlight htmlTitle ctermfg=7")
vim.cmd("highlight javaScriptBraces ctermfg=7")
vim.cmd("highlight javaScriptFunction ctermfg=5")
vim.cmd("highlight javaScriptIdentifier ctermfg=5")
vim.cmd("highlight javaScriptNull ctermfg=3")
vim.cmd("highlight javaScriptNumber ctermfg=3")
vim.cmd("highlight javaScriptRequire ctermfg=6")
vim.cmd("highlight javaScriptReserved ctermfg=5")
vim.cmd("highlight jsArrowFunction ctermfg=5")
vim.cmd("highlight jsClassKeyword ctermfg=5")
vim.cmd("highlight jsClassMethodType ctermfg=5")
vim.cmd("highlight jsDocParam ctermfg=4")
vim.cmd("highlight jsDocTags ctermfg=5")
vim.cmd("highlight jsExport ctermfg=5")
vim.cmd("highlight jsExportDefault ctermfg=5")
vim.cmd("highlight jsExtendsKeyword ctermfg=5")
vim.cmd("highlight jsFrom ctermfg=5")
vim.cmd("highlight jsFuncCall ctermfg=4")
vim.cmd("highlight jsFunction ctermfg=5")
vim.cmd("highlight jsGenerator ctermfg=3")
vim.cmd("highlight jsGlobalObjects ctermfg=3")
vim.cmd("highlight jsImport ctermfg=5")
vim.cmd("highlight jsModuleAs ctermfg=5")
vim.cmd("highlight jsModuleWords ctermfg=5")
vim.cmd("highlight jsModules ctermfg=5")
vim.cmd("highlight jsNull ctermfg=3")
vim.cmd("highlight jsOperator ctermfg=5")
vim.cmd("highlight jsStorageClass ctermfg=5")
vim.cmd("highlight jsSuper ctermfg=1")
vim.cmd("highlight jsTemplateBraces ctermfg=1")
vim.cmd("highlight jsTemplateVar ctermfg=2")
vim.cmd("highlight jsThis ctermfg=1")
vim.cmd("highlight jsUndefined ctermfg=3")
vim.cmd("highlight javascriptArrowFunc ctermfg=5")
vim.cmd("highlight javascriptClassExtends ctermfg=5")
vim.cmd("highlight javascriptClassKeyword ctermfg=5")
vim.cmd("highlight javascriptDocNotation ctermfg=5")
vim.cmd("highlight javascriptDocParamName ctermfg=4")
vim.cmd("highlight javascriptDocTags ctermfg=5")
vim.cmd("highlight javascriptEndColons ctermfg=7")
vim.cmd("highlight javascriptExport ctermfg=5")
vim.cmd("highlight javascriptFuncArg ctermfg=7")
vim.cmd("highlight javascriptFuncKeyword ctermfg=5")
vim.cmd("highlight javascriptIdentifier ctermfg=1")
vim.cmd("highlight javascriptImport ctermfg=5")
vim.cmd("highlight javascriptMethodName ctermfg=7")
vim.cmd("highlight javascriptObjectLabel ctermfg=7")
vim.cmd("highlight javascriptOpSymbol ctermfg=6")
vim.cmd("highlight javascriptOpSymbols ctermfg=6")
vim.cmd("highlight javascriptPropertyName ctermfg=2")
vim.cmd("highlight javascriptTemplateSB ctermfg=1")
vim.cmd("highlight javascriptVariable ctermfg=5")
vim.cmd("highlight jsonCommentError ctermfg=7")
vim.cmd("highlight jsonKeyword ctermfg=1")
vim.cmd("highlight jsonBoolean ctermfg=3")
vim.cmd("highlight jsonNumber ctermfg=3")
vim.cmd("highlight jsonQuote ctermfg=7")
vim.cmd("highlight jsonMissingCommaError ctermfg=1 gui=reverse")
vim.cmd("highlight jsonNoQuotesError ctermfg=1 gui=reverse")
vim.cmd("highlight jsonNumError ctermfg=1 gui=reverse")
vim.cmd("highlight jsonString ctermfg=2")
vim.cmd("highlight jsonStringSQError ctermfg=1 gui=reverse")
vim.cmd("highlight jsonSemicolonError ctermfg=1 gui=reverse")
vim.cmd("highlight markdownBlockquote ctermfg=8")
vim.cmd("highlight markdownBold ctermfg=3 gui=bold cterm=bold")
vim.cmd("highlight markdownCode ctermfg=2")
vim.cmd("highlight markdownCodeBlock ctermfg=2")
vim.cmd("highlight markdownCodeDelimiter ctermfg=2")
vim.cmd("highlight markdownH1 ctermfg=1")
vim.cmd("highlight markdownH2 ctermfg=1")
vim.cmd("highlight markdownH3 ctermfg=1")
vim.cmd("highlight markdownH4 ctermfg=1")
vim.cmd("highlight markdownH5 ctermfg=1")
vim.cmd("highlight markdownH6 ctermfg=1")
vim.cmd("highlight markdownHeadingDelimiter ctermfg=1")
vim.cmd("highlight markdownHeadingRule ctermfg=8")
vim.cmd("highlight markdownId ctermfg=5")
vim.cmd("highlight markdownIdDeclaration ctermfg=4")
vim.cmd("highlight markdownIdDelimiter ctermfg=5")
vim.cmd("highlight markdownItalic ctermfg=5 gui=italic cterm=italic")
vim.cmd("highlight markdownLinkDelimiter ctermfg=5")
vim.cmd("highlight markdownLinkText ctermfg=4")
vim.cmd("highlight markdownListMarker ctermfg=1")
vim.cmd("highlight markdownOrderedListMarker ctermfg=1")
vim.cmd("highlight markdownRule ctermfg=8")
vim.cmd("highlight markdownUrl ctermfg=6 gui=underline cterm=underline")
vim.cmd("highlight texStatement ctermfg=5")
vim.cmd("highlight texSubscripts ctermfg=3")
vim.cmd("highlight texSuperscripts ctermfg=3")
vim.cmd("highlight texTodo ctermfg=1")
vim.cmd("highlight texBeginEnd ctermfg=5")
vim.cmd("highlight texBeginEndName ctermfg=4")
vim.cmd("highlight texMathMatcher ctermfg=4")
vim.cmd("highlight texMathDelim ctermfg=4")
vim.cmd("highlight texDelimiter ctermfg=3")
vim.cmd("highlight texSpecialChar ctermfg=3")
vim.cmd("highlight texCite ctermfg=4")
vim.cmd("highlight texRefZone ctermfg=4")
vim.cmd("highlight typescriptReserved ctermfg=5")
vim.cmd("highlight typescriptEndColons ctermfg=7")
vim.cmd("highlight typescriptBraces ctermfg=7")
vim.cmd("highlight xmlAttrib ctermfg=3")
vim.cmd("highlight xmlEndTag ctermfg=1")
vim.cmd("highlight xmlTag ctermfg=1")
vim.cmd("highlight xmlTagName ctermfg=1")
vim.cmd("highlight GitGutterAdd ctermfg=2")
vim.cmd("highlight GitGutterChange ctermfg=3")
vim.cmd("highlight GitGutterDelete ctermfg=1")
vim.cmd("highlight LspError ctermfg=1")
vim.cmd("highlight LspWarning ctermfg=3")
vim.cmd("highlight LspInformation ctermfg=4")
vim.cmd("highlight LspHint ctermfg=6")
vim.cmd("highlight gitcommitComment ctermfg=8")
vim.cmd("highlight gitcommitUnmerged ctermfg=2")
vim.cmd("highlight gitcommitBranch ctermfg=5")
vim.cmd("highlight gitcommitDiscardedType ctermfg=1")
vim.cmd("highlight gitcommitSelectedType ctermfg=2")
vim.cmd("highlight gitcommitUntrackedFile ctermfg=6")
vim.cmd("highlight gitcommitDiscardedFile ctermfg=1")
vim.cmd("highlight gitcommitSelectedFile ctermfg=2")
vim.cmd("highlight gitcommitUnmergedFile ctermfg=3")
vim.cmd("highlight gitcommitSummary ctermfg=7")
vim.cmd("highlight gitcommitOverflow ctermfg=1")
vim.cmd("highlight gitcommitNoBranch ctermfg=5")
vim.cmd("highlight gitcommitUntracked ctermfg=8")
vim.cmd("highlight gitcommitDiscarded ctermfg=8")
vim.cmd("highlight gitcommitSelected ctermfg=8")
vim.cmd("highlight gitcommitDiscardedArrow ctermfg=1")
vim.cmd("highlight gitcommitSelectedArrow ctermfg=2")
vim.cmd("highlight gitcommitUnmergedArrow ctermfg=3")
vim.cmd("highlight DiagnosticError ctermfg=1")
vim.cmd("highlight DiagnosticWarn ctermfg=3")
vim.cmd("highlight DiagnosticInfo ctermfg=4")
vim.cmd("highlight DiagnosticHint ctermfg=6")
vim.cmd("highlight DiagnosticUnderlineError ctermfg=1 gui=underline cterm=underline")
vim.cmd("highlight DiagnosticUnderlineWarn ctermfg=3 gui=underline cterm=underline")
vim.cmd("highlight DiagnosticUnderlineInfo ctermfg=4 gui=underline cterm=underline")
vim.cmd("highlight DiagnosticUnderlineHint ctermfg=6 gui=underline cterm=underline")
vim.cmd("highlight GitGutterAdd ctermfg=2")
vim.cmd("highlight GitGutterChange ctermfg=3")
vim.cmd("highlight GitGutterDelete ctermfg=1")
vim.cmd("highlight NvimTreeVertSplit ctermfg=7 ctermbg=0")
-- File tree
require('nvim-tree').setup {
  disable_netrw       = true,
  hijack_netrw        = true,
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  auto_close          = false,
  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "h",
      info = "i",
      warning = "?",
      error = "!",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}
vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeToggle<CR>', {})

-- Status line
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = '16color',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

vim.api.nvim_set_keymap('v', '+', '<plug>NERDCommenterToggle<CR>', {}) -- Comment
