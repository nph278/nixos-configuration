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
vim.api.nvim_set_hl(0, 'Label', { ctermfg = 1 })
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
