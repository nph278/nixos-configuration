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
vim.o.relativenumber = false
vim.o.foldenable = true
vim.o.foldlevel = 1000
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.laststatus = 3

-- Highlighting, edited from http//github.com/joshdick/onedark.vim
vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 8, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'rustCommentLineDoc', { ctermfg = 8, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'rustCommentBlockDoc', { ctermfg = 8, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'Constant', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'String', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'Character', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'Number', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Boolean', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Float', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Identifier', { ctermfg = 1, cterm = {} })
vim.api.nvim_set_hl(0, 'Function', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'Statement', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'Conditional', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'Repeat', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'Label', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'Operator', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'Keyword', { ctermfg = 1, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'Exception', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'PreProc', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Include', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'Define', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'Macro', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'PreCondit', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Type', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'StorageClass', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Structure', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Typedef', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'Special', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'SpecialChar', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'SpecialComment', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'Underlined', { cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'Error', { ctermfg = 1, ctermbg = 0 })
vim.api.nvim_set_hl(0, 'Todo', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'ColorColumn', { ctermbg = 8 })
vim.api.nvim_set_hl(0, 'Cursor', { ctermfg = 0, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'CursorColumn', { ctermbg = 8 })
vim.api.nvim_set_hl(0, 'CursorLine', { ctermbg = 8 })
vim.api.nvim_set_hl(0, 'Directory', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'DiffAdd', { ctermbg = 2, ctermfg = 0 })
vim.api.nvim_set_hl(0, 'DiffChange', { ctermfg = 3, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'DiffDelete', { ctermbg = 1, ctermfg = 0 })
vim.api.nvim_set_hl(0, 'DiffText', { ctermbg = 3, ctermfg = 0 })
vim.api.nvim_set_hl(0, 'ErrorMsg', { ctermfg = 1, ctermbg = 0 })
vim.api.nvim_set_hl(0, 'VertSplit', { ctermfg = 0, ctermbg = 0 })
vim.api.nvim_set_hl(0, 'Folded', { ctermfg = 7, ctermbg = 0, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'IncSearch', { ctermfg = 3, ctermbg = 8 })
vim.api.nvim_set_hl(0, 'LineNr', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'MatchParen', { ctermfg = 4, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'NonText', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'Normal', { ctermfg = 7, ctermbg = 0 })
vim.api.nvim_set_hl(0, 'Pmenu', { ctermfg = 7, ctermbg = 0 })
vim.api.nvim_set_hl(0, 'PmenuSel', { ctermfg = 0, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'PmenuSbar', { ctermbg = 0 })
vim.api.nvim_set_hl(0, 'PmenuThumb', { ctermbg = 7 })
vim.api.nvim_set_hl(0, 'Question', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'QuickFixLine', { ctermfg = 0, ctermbg = 3 })
vim.api.nvim_set_hl(0, 'Search', { ctermfg = 0, ctermbg = 3 })
vim.api.nvim_set_hl(0, 'SpecialKey', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'SpellBad', { ctermfg = 1, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'SpellCap', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'SpellLocal', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'SpellRare', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'StatusLine', { ctermfg = 7, ctermbg = 8 })
vim.api.nvim_set_hl(0, 'StatusLineNC', { ctermfg = 0, ctermbg = 7 })
vim.api.nvim_set_hl(0, 'StatusLineTerm', { ctermfg = 7, ctermbg = 8 })
vim.api.nvim_set_hl(0, 'StatusLineTermNC', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'TabLine', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'TabLineSel', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'Terminal', { ctermfg = 7, ctermbg = 0 })
vim.api.nvim_set_hl(0, 'Title', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'Visual', { ctermbg = 8 })
vim.api.nvim_set_hl(0, 'VisualNOS', { ctermbg = 8 })
vim.api.nvim_set_hl(0, 'WarningMsg', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'WildMenu', { ctermfg = 0, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'debugPC', { ctermbg = 8 })
vim.api.nvim_set_hl(0, 'debugBreakpoint', { ctermfg = 0, ctermbg = 1 })
vim.api.nvim_set_hl(0, 'cssAttrComma', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssAttributeSelector', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'cssBraces', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'cssClassName', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'cssClassNameDot', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'cssDefinition', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssFontAttr', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'cssFontDescriptor', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssFunctionName', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'cssIdentifier', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'cssImportant', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssInclude', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'cssIncludeKeyword', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssMediaType', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'cssProp', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'cssPseudoClassId', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'cssSelectorOp', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssSelectorOp2', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'cssTagName', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'goDeclaration', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'goBuiltins', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'goFunctionCall', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'goVarDefs', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'goVarAssign', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'goVar', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'goConst', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'goType', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'goTypeName', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'goDeclType', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'goTypeDecl', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'htmlArg', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'htmlBold', { ctermfg = 3, cterm = { bold = true } })
vim.api.nvim_set_hl(0, 'htmlEndTag', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'htmlH1', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlH2', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlH3', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlH4', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlH5', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlH6', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlItalic', { ctermfg = 5, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'htmlLink', { ctermfg = 6, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'htmlSpecialChar', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'htmlSpecialTagName', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlTag', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'htmlTagN', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlTagName', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'htmlTitle', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'javaScriptBraces', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'javaScriptFunction', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javaScriptIdentifier', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javaScriptNull', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'javaScriptNumber', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'javaScriptRequire', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'javaScriptReserved', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsArrowFunction', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsClassKeyword', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsClassMethodType', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsDocParam', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'jsDocTags', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsExport', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsExportDefault', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsExtendsKeyword', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsFrom', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsFuncCall', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'jsFunction', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsGenerator', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'jsGlobalObjects', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'jsImport', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsModuleAs', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsModuleWords', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsModules', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsNull', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'jsOperator', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsStorageClass', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsSuper', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsTemplateBraces', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsTemplateVar', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'jsThis', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsUndefined', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'javascriptArrowFunc', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptClassExtends', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptClassKeyword', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptDocNotation', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptDocParamName', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'javascriptDocTags', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptEndColons', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'javascriptExport', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptFuncArg', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'javascriptFuncKeyword', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptIdentifier', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'javascriptImport', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'javascriptMethodName', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'javascriptObjectLabel', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'javascriptOpSymbol', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'javascriptOpSymbols', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'javascriptPropertyName', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'javascriptTemplateSB', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'javascriptVariable', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'jsonCommentError', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'jsonKeyword', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsonBoolean', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'jsonNumber', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'jsonQuote', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'jsonMissingCommaError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsonNoQuotesError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsonNumError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsonString', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'jsonStringSQError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'jsonSemicolonError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownBlockquote', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'markdownBold', { ctermfg = 3, cterm = { bold = true } })
vim.api.nvim_set_hl(0, 'markdownCode', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'markdownCodeBlock', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'markdownCodeDelimiter', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'markdownH1', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownH2', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownH3', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownH4', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownH5', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownH6', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownHeadingRule', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'markdownId', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'markdownIdDeclaration', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'markdownIdDelimiter', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'markdownItalic', { ctermfg = 5, cterm = { italic = true } })
vim.api.nvim_set_hl(0, 'markdownLinkDelimiter', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'markdownLinkText', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'markdownListMarker', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownOrderedListMarker', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'markdownRule', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'markdownUrl', { ctermfg = 6, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'texStatement', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'texSubscripts', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'texSuperscripts', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'texTodo', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'texBeginEnd', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'texBeginEndName', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'texMathMatcher', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'texMathDelim', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'texDelimiter', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'texSpecialChar', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'texCite', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'texRefZone', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'typescriptReserved', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'typescriptEndColons', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'typescriptBraces', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'xmlAttrib', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'xmlEndTag', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'xmlTag', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'xmlTagName', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'LspError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'LspWarning', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'LspInformation', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'LspHint', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'gitcommitComment', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'gitcommitUnmerged', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'gitcommitBranch', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedType', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'gitcommitSelectedType', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'gitcommitUntrackedFile', { ctermfg = 6 })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedFile', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'gitcommitSelectedFile', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'gitcommitUnmergedFile', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'gitcommitSummary', { ctermfg = 7 })
vim.api.nvim_set_hl(0, 'gitcommitOverflow', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'gitcommitNoBranch', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'gitcommitUntracked', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'gitcommitDiscarded', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'gitcommitSelected', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedArrow', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'gitcommitSelectedArrow', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'gitcommitUnmergedArrow', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'DiagnosticError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'DiagnosticWarn', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'DiagnosticInfo', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { ctermfg = 1, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { ctermfg = 3, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { ctermfg = 4, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { ctermfg = 6, cterm = { underline = true } })
vim.api.nvim_set_hl(0, 'SignColumn', { ctermbg = 0 })
vim.api.nvim_set_hl(0, 'MatchParen', { ctermbg = 0, cterm = { underline = true } })

-- Override C-f
vim.api.nvim_set_keymap('n', '<C-f>', '', {})

-- GitGutter
vim.api.nvim_set_hl(0, 'GitGutterAdd', { ctermfg = 2 })
vim.api.nvim_set_hl(0, 'GitGutterChange', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'GitGutterDelete', { ctermfg = 1 })

-- File tree
-- require('nvim-tree').setup {
--     disable_netrw = true,
--     hijack_netrw = true,
--     open_on_setup = false,
--     ignore_ft_on_setup = {},
--     auto_close = false,
--     open_on_tab = false,
--     hijack_cursor = false,
--     update_cwd = false,
--     update_to_buf_dir = {enable = true, auto_open = true},
--     diagnostics = {
--         enable = true,
--         icons = {hint = 'h', info = 'i', warning = '?', error = '!'}
--     },
--     update_focused_file = {enable = false, update_cwd = false, ignore_list = {}},
--     system_open = {args = {}},
--     filters = {dotfiles = false, custom = {}},
--     git = {enable = true, ignore = true, timeout = 500},
--     view = {
--         width = 30,
--         height = 30,
--         hide_root_folder = false,
--         side = 'left',
--         auto_resize = false,
--         mappings = {custom_only = false, list = {}},
--         number = false,
--         relativenumber = false,
--         signcolumn = 'yes'
--     },
--     trash = {cmd = 'trash', require_confirm = true}
-- }
--
-- vim.api.nvim_set_keymap('n', '<C-e>', ':NvimTreeToggle<CR>', {silent = true})
--
-- vim.cmd('highlight NvimTreeVertSplit ,ctermfg=0 ,ctermbg=0')
-- vim.cmd('highlight NvimTreeFolderIcon ,ctermfg=4')
-- vim.cmd('highlight NvimTreeLspDiagnosticsError ,ctermfg=1')
-- vim.cmd('highlight NvimTreeLspDiagnosticsWarning ,ctermfg=3')
-- vim.cmd('highlight NvimTreeLspDiagnosticsHint ,ctermfg=4')
-- vim.cmd('highlight NvimTreeLspDiagnosticsInformation ,ctermfg=4')
-- vim.cmd('highlight NvimTreeGitNew ,ctermfg=2')
-- vim.cmd('highlight NvimTreeGitDeleted ,ctermfg=1')

-- LSP
local nvim_lsp = require('lspconfig')

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  local function buf_set_option(...)
    vim.api.nvim_buf_set_option(bufnr, ...)
  end

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'g[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', 'g]', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<C-f>', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  buf_set_keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
end

nvim_lsp.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      workspace = { symbol = { search = { kind = "all_symbols" } } }
    }
  },
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}
nvim_lsp.sumneko_lua.setup {
  formatting = "",
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ';') },
      completion = { keywordSnippet = "Disable" },
      diagnostics = {
        enable = true,
        globals = { "vim", "describe", "it", "before_each", "after_each" }
      },
      workspace = {
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")
        }
      }
    }
  },
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}
nvim_lsp.rnix.setup {
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}
nvim_lsp.pylsp.setup {
  on_attach = on_attach,
  flags = { debounce_text_changes = 150 }
}

vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultError', { ctermfg = 1 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultWarning', { ctermfg = 3 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHint', { ctermfg = 4 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultInformation', { ctermfg = 4 })

-- Cmp
local cmp = require 'cmp'
local lspkind = require('lspkind')
luasnip = require('luasnip')

cmp.setup({
  snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },

  mapping = {
    ['<C-r>'] = cmp.mapping(function()
      if luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      end
    end),
    ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
    ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
    ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
    ['<C-n>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
    ['<C-p>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<C-e>'] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close()
    })
  },

  sources = cmp.config.sources({
    { name = 'nvim_lua' }, { name = 'luasnip' }, { name = 'nvim_lsp' },
    { name = 'path' }, { name = 'buffer' }
  }),

  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
    })
  }
})

cmp.setup.cmdline('/', { sources = { { name = 'buffer' } } })

-- This is broken with case-insensitive mode
cmp.setup.cmdline(':', {
  sources = cmp.config.sources({ { name = 'path' } }, { { name = 'cmdline' } })
})

vim.api.nvim_set_hl(0, 'CmpItemKind', { ctermfg = 5 })
vim.api.nvim_set_hl(0, 'CmpItemMenu', { ctermfg = 2 })

-- Luasnip
require('luasnip.loaders.from_vscode').lazy_load()

require('cmp_nvim_lsp').update_capabilities(vim.lsp
  .protocol
  .make_client_capabilities())

-- Treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = {
    'rust', 'lua', 'toml', 'python', 'nix', 'markdown', 'bash', 'css'
  },

  highlight = { enable = true },

  context_commentstring = { enable = true, enable_autocmd = false },

  textobjects = {
    select = {
      enable = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",

        ["ac"] = "@conditional.outer",
        ["ic"] = "@conditional.inner",

        ["aa"] = "@parameter.outer",
        ["ia"] = "@parameter.inner"
      }
    }
  }
}
vim.api.nvim_set_keymap('n', '_', ':foldopen<CR>', { silent = true }) -- Fold
vim.api.nvim_set_keymap('n', '-', ':foldclose<CR>', { silent = true })

-- Telescope
local telescope = require('telescope')

telescope.load_extension('fzf')
require("telescope").load_extension('file_browser')

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  pickers = {
    git_branches = { theme = 'dropdown' },
    find_files = { theme = 'dropdown' },
    lsp_code_actions = { theme = 'cursor' }
  },

  extentions = {
    file_browser = {
      ["n"] = {
        a = fb_actions.create -- This doesn't work, use c
      },
    },
  },

  preview = { treesitter = true }
}

vim.api.nvim_set_keymap('n', '<space>p', ':Telescope find_files<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>hp', ':split<CR>:Telescope find_files<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>vp', ':vsplit<CR>:Telescope find_files<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>rg', ':Telescope live_grep<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>b', ':Telescope git_branches<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>f', ':Telescope lsp_workspace_symbols<CR>',
  { silent = true })

-- https://github.com/nvim-telescope/telescope-ui-select.nvim/blob/master/lua/telescope/_extensions/ui-select.lua TODO TODO todo TODO

vim.api.nvim_set_keymap('n', '<space>ca', ':lua vim.lsp.buf.code_action()<CR>',
  { silent = true })
vim.api.nvim_set_keymap('v', '<space>ca', ':\'<,\'>lua vim.lsp.buf.range_code_action()<CR>',
  { silent = true })


vim.api.nvim_set_keymap('n', '<space>h', ':Telescope registers<CR>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>e', ':Telescope file_browser<CR><Esc>',
  { silent = true })
vim.api.nvim_set_keymap('n', '<space>d', ':Telescope diagnostics<CR>',
  { silent = true })

vim.api.nvim_set_hl(0, 'TelescopeSelection', { ctermbg = 0, ctermfg = 4 })
vim.api.nvim_set_hl(0, 'TelescopeMatching', { ctermbg = 0, ctermfg = 3 })

-- Comment.nvim
require('Comment').setup()

-- Panel navigation
vim.api.nvim_set_keymap('n', '<C-h>', ':wincmd h<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', ':wincmd j<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', ':wincmd k<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':wincmd l<CR>', { silent = true })

-- Rust
vim.api.nvim_set_keymap('n', '<space>ct', ':!cargo test<CR>', {})
vim.api.nvim_set_keymap('n', '<space>cr', ':!cargo run<CR>', {})

-- Files
vim.api.nvim_set_keymap('n', '<space>q', ':xa<CR>', {})
vim.api.nvim_set_keymap('n', '<space>w', '<C-f><ESC>:w<CR>', {})
vim.api.nvim_set_keymap('n', '<space>s', '<C-^>', {})

-- Git
vim.api.nvim_set_keymap('n', '<space>gs', ':!git status<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<space>ga', ':!git add -A<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<space>gc', ':!git commit -m ', { silent = true })
vim.api.nvim_set_keymap('n', '<space>gp', ':!git push<CR>', { silent = true })
vim.api.nvim_set_keymap('n', '<space>gg',
  ':!git log --graph --pretty=oneline --abbrev-commit<CR>',
  { silent = true })

-- Status line (thanks to https://nuxsh.is-a.dev/blog/custom-nvim-statusline.html)
local modes = {
  ['n'] = 'NORMAL',
  ['no'] = 'NORMAL',
  ['v'] = 'VISUAL',
  ['V'] = 'VISUAL LINE',
  [''] = 'VISUAL BLOCK',
  ['s'] = 'SELECT',
  ['S'] = 'SELECT LINE',
  [''] = 'SELECT BLOCK',
  ['i'] = 'INSERT',
  ['ic'] = 'INSERT',
  ['R'] = 'REPLACE',
  ['Rv'] = 'VISUAL REPLACE',
  ['c'] = 'COMMAND',
  ['cv'] = 'VIM EX',
  ['ce'] = 'EX',
  ['r'] = 'PROMPT',
  ['rm'] = 'MOAR',
  ['r?'] = 'CONFIRM',
  ['!'] = 'SHELL',
  ['t'] = 'TERMINAL'
}

local function mode()
  local current_mode = vim.api.nvim_get_mode().mode
  return string.format(' %s ', modes[current_mode]):upper()
end

local function update_mode_colors()
  local current_mode = vim.api.nvim_get_mode().mode
  local mode_color = '%#StatusLine#'
  if current_mode == 'n' then
    mode_color = '%#StatusLineNormalAccent#'
  elseif current_mode == 'i' or current_mode == 'ic' then
    mode_color = '%#StatusLineInsertAccent#'
  elseif current_mode == 'v' or current_mode == 'V' or current_mode == '' then
    mode_color = '%#StatusLineVisualAccent#'
  elseif current_mode == 'R' then
    mode_color = '%#StatusLineReplaceAccent#'
  elseif current_mode == 'c' then
    mode_color = '%#StatusLineCmdLineAccent#'
  elseif current_mode == 't' then
    mode_color = '%#StatusLineTerminalAccent#'
  end
  return mode_color
end

local function filepath()
  local fpath = vim.fn.fnamemodify(vim.fn.expand "%", ":~:.:h")
  if fpath == "" or fpath == "." then return " " end

  return string.format(" %%<%s/", fpath)
end

local function filename()
  local fname = vim.fn.expand "%:t"
  if fname == "" then return "" end
  return fname .. " "
end

local function filetype() return string.format(" %s ", vim.bo.filetype:upper()) end

local function lineinfo()
  if vim.bo.filetype == "alpha" then return "" end
  return " %l:%c "
end

StatusLine = {}

StatusLine.active = function()
  return table.concat {
    "%#StatusLine#", update_mode_colors(), mode(), "%#Normal# ",
    filepath(), filename(), "%=", filetype(), "%#StatusLineExtra#",
    lineinfo()
  }
end

function StatusLine.inactive() return " %F" end

function StatusLine.short() return "%#StatusLineNC#   NvimTree" end

vim.api.nvim_exec([[
  augroup StatusLine
  au!
  au WinEnter,BufEnter * setlocal statusline=%!v:lua.StatusLine.active()
  au WinLeave,BufLeave * setlocal statusline=%!v:lua.StatusLine.inactive()
  au WinEnter,BufEnter,FileType NvimTree setlocal statusline=%!v:lua.StatusLine.short()
  augroup END
]], false)

vim.api.nvim_set_hl(0, 'StatusLineNormalAccent', { ctermfg = 0, ctermbg = 4 })
vim.api.nvim_set_hl(0, 'StatusLineInsertAccent', { ctermfg = 0, ctermbg = 2 })
vim.api.nvim_set_hl(0, 'StatusLineVisualAccent', { ctermfg = 0, ctermbg = 5 })
vim.api.nvim_set_hl(0, 'StatusLineReplaceAccent', { ctermfg = 0, ctermbg = 1 })
vim.api.nvim_set_hl(0, 'StatusLineCmdLineAccent', { ctermfg = 0, ctermbg = 3 })
vim.api.nvim_set_hl(0, 'StatusLineTerminalAccent', { ctermfg = 0, ctermbg = 6 })
vim.api.nvim_set_hl(0, 'StatusLineExtra', { ctermfg = 0, ctermbg = 7 })

-- LightSpeed.nvim
require 'lightspeed'.setup {
  ignore_case = true,
  exit_after_idle_msecs = { unlabeled = 1000, labeled = nil },
  --- s/x ---
  jump_to_unique_chars = { safety_timeout = 400 },
  match_only_the_start_of_same_char_seqs = true,
  force_beacons_into_match_width = false,
  substitute_chars = { ['\r'] = '¬' },
  special_keys = { next_match_group = '<space>', prev_match_group = '<tab>' },
  --- f/t ---
  limit_ft_matches = 4,
  repeat_ft_with_target_char = false
}
vim.api.nvim_set_hl(0, 'LightspeedLabel', { ctermfg = 3, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedDistant', { ctermfg = 6, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedShortcut', { ctermfg = 0, ctermbg = 3, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedMaskedChar', { ctermfg = 8, ctermbg = 3, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedGreyWash', { ctermfg = 8 })
vim.api.nvim_set_hl(0, 'LightspeedGreyWash', { ctermfg = 8, cterm = { bold = true, underline = true } })
vim.api.nvim_set_hl(0, 'LightspeedUnlabeledMatch', { ctermfg = 7, cterm = { bold = true } })
vim.api.nvim_set_hl(0, 'LightspeedOneCharMatch', { ctermfg = 0, ctermbg = 3, cterm = { bold = true } })
vim.api.nvim_set_hl(0, 'LightspeedUniqueChar', { ctermfg = 7, cterm = { bold = true } })

-- Other
vim.api.nvim_set_keymap('n', 'Y', 'y$', {})
vim.api.nvim_set_keymap('i', ',', ',<C-g>u', { noremap = true })
vim.api.nvim_set_keymap('i', ';', ';<C-g>u', { noremap = true })
vim.api.nvim_set_keymap('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })
vim.api.nvim_set_keymap('n', '/', "/\\c", { silent = true })
vim.api.nvim_set_keymap('t', '<Esc><Esc>', "<C-\\><C-n>", { silent = true })
vim.api.nvim_set_keymap('t', '<C-d>', "<Esc><Esc>:q<CR>", { silent = true })
