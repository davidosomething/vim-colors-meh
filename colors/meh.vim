" ============================================================================
" MEH - a dark Vim colorscheme
" Best on truecolor, but with rudimentary 256-color support.
" ============================================================================

hi clear
if exists('syntax_on') | syntax reset | endif

let g:colors_name = 'meh'
set background=dark

" ============================================================================
" My colors
" ============================================================================

hi! dkoBgAlt            guibg=#24252a               ctermbg=236
hi! dkoBgLight          guibg=#303135               ctermbg=237
hi! dkoTextLight                      guifg=#dddddd ctermfg=253
hi! dkoTextGood                       guifg=#77aa88
hi! dkoTextWarn                       guifg=#ddaa66
hi! dkoTextInfo                       guifg=#505a71

hi! dkoPopup            guibg=#2a2a2f guifg=#ccc0c0
hi! dkoPopupBlank       guibg=#2a2a2f guifg=#2a2a2f

hi! dkoDecorations                    guifg=#505a6a
hi! dkoRegex                          guifg=#cc99cc
hi! dkoReturn                         guifg=#cc8877 gui=italic
hi! dkoQuote                          guifg=#77aa88 gui=italic
hi! dkoType                           guifg=#60687a gui=italic
hi! link dkoWarningText dkoTextWarn
hi dkoWarningText       guibg=#2c2b2a               gui=bold
hi! dkoNormalKey                      guifg=#ccccbb

hi! dkoStatus           guibg=#30313c guifg=#bbbbbb gui=NONE  ctermbg=237
hi! dkoStatusNC         guibg=#262631 guifg=#666666 gui=NONE  ctermbg=235
hi! dkoStatusKey        guibg=#40404c
hi! dkoStatusValue      guibg=#50505c
hi! dkoStatusItem       guibg=#242531
hi! dkoStatusTransient  guibg=#505a71 guifg=fg

hi! link dkoStatusGood  dkoTextGood
hi dkoStatusGood        guibg=#242531

hi! dkoStatusGood       guibg=#242531 guifg=#77aa88
hi! dkoStatusError      guibg=#242531 guifg=#cc4444
hi! dkoStatusInfo       guibg=#242531 guifg=fg

" ============================================================================
" Vim base
" ============================================================================

hi! Normal              guibg=#202022 guifg=#bbbbbb           ctermbg=235   ctermfg=250

hi! Boolean                           guifg=#cccccc gui=italic
hi! link Character      Normal
hi! Comment                           guifg=#70788a gui=italic              ctermfg=240
hi! link Conditional    Normal
hi! Constant                          guifg=NONE    gui=italic
hi! Delimiter                         guifg=#cc99cc                       ctermfg=139
hi! DiffAdd             guibg=#2a332a guifg=#668844           ctermbg=235 ctermfg=22
hi! DiffChange          guibg=#2c2b2a guifg=#7f6030           ctermbg=235 ctermfg=94
hi! DiffDelete          guibg=#4a2a2a guifg=#aa6666           ctermbg=235 ctermfg=52
hi! DiffText            guibg=#4a2a2a
hi! link Directory      dkoTextLight
hi! Error               guibg=NONE    guifg=#ee6666           ctermbg=NONE ctermfg=160
hi! Function                          guifg=NONE
hi! link Identifier     dkoTextLight
hi! Ignore                            guifg=#40485a
hi! link Include        Normal
hi! IncSearch           guibg=#dd77cc guifg=bg      gui=NONE  ctermbg=219   ctermfg=235
hi! link Keyword        Normal
hi! link Label          dkoTextLight
hi! LspInlayHint                      guifg=#40485a gui=italic
hi! MoreMsg                           guifg=#aa6666
hi! Noise                             guifg=#888888                         ctermfg=243
hi! NonText                           guifg=#334455
hi! Number                            guifg=#ee7777                         ctermfg=208
hi! Operator                          guifg=#888888
hi! link PreProc dkoTextLight
hi! Question                          guifg=#88aabb
hi! Search              guibg=#dd99ff guifg=bg                ctermbg=219   ctermfg=bg
hi! SpellBad                                                  ctermbg=NONE
hi! SpellCap                                                  ctermbg=NONE
hi! SpellRare                                                 ctermbg=NONE
hi! Special                           guifg=#dd7766                         ctermfg=172
hi! SpecialComment                    guifg=#707a8a gui=NONE
hi! SpecialKey                        guifg=#772222
hi! Statement                         guifg=#777777 gui=NONE                ctermfg=245
hi! StorageClass                      guifg=#777777
hi! String                            guifg=#88aabb                         ctermfg=110
hi! link Title dkoTextLight
hi! Todo                guibg=#303033 guifg=#ddaa66 gui=bold
hi! Type                              guifg=#dddddd gui=NONE  ctermfg=253
hi! Underlined                        guifg=#88aaee gui=underline           ctermfg=110
hi! Visual              guibg=#afa08f guifg=#1f1f1f
hi! WarningMsg                        guifg=#ccaa88
hi! Whitespace          guibg=#1c1c1c guifg=#40485a gui=bold
hi! Folded              guibg=#24252a guifg=#88aabb           ctermbg=236   ctermfg=110
hi! TabLineSel                        guifg=#cc8877 gui=bold
hi! link TabLine Folded
hi! link TabLineFill dkoBgAlt

" ============================================================================
" My colors
" ============================================================================

" JavaDoc
hi! link dkoJavaDocTag  SpecialComment
hi! link dkoJavaDocType SpecialComment
hi! link dkoJavaDocKey  SpecialComment

" Signs
hi! link dkoSignAdded   DiffAdd
hi! link dkoSignRemoved DiffDelete

" ============================================================================
" Line backgrounds
" ============================================================================

" use bg only for a thick line, fg only for a thin line
" same fg as Question
hi! VertSplit           guibg=#262631 guifg=#40485a ctermbg=237 ctermfg=237
" As of neovim 0.10 this replaces VertSplit
hi! link WinSeparator   VertSplit

hi! LineNr              guibg=#222226 guifg=#40485a ctermbg=235 ctermfg=238
hi! CursorLineNr        guibg=#303033 guifg=#a0a0aa ctermbg=238 ctermfg=245
hi! link FoldColumn     LineNr
hi! link SignColumn     LineNr

hi! link ColorColumn    dkoBgAlt
hi! link CursorColumn   dkoBgAlt

" current line
hi! link CursorLine     dkoBgAlt

" ============================================================================
" Popup menu
" ============================================================================

" want guifg=#666666 for borders, but not on text
" waiting for https://github.com/neovim/neovim/issues/15551
hi! Pmenu               guibg=bg
hi! PmenuSel            guifg=fg guibg=#40485a
" popup menu scrollbar
hi! link PmenuSbar      PmenuSel
hi! PmenuThumb          guibg=#505055

hi! link WildMenu       PmenuThumb

" ============================================================================
" Neovim float
" ============================================================================

hi! FloatBorder guibg=bg guifg=#666666
hi! NormalFloat guibg=bg guifg=fg

" ============================================================================
" Status and tab line
" ============================================================================

" Statusline uses fg as bg
hi! link StatusLineNC   dkoStatusNC
hi! link StatusLine     dkoStatus
hi! link TabLine        dkoStatus
hi! link TabLineFill    dkoStatus

" ============================================================================
" Statusline Symbols
" ============================================================================

hi! dkoLineImportant    guibg=#ddaa66 guifg=#303033
hi! link dkoLineModeReplace       dkoLineImportant
hi! link dkoLineNeomakeRunning    dkoLineImportant

" ============================================================================
" Neomake
" ============================================================================

hi! link NeomakeStatusGood      dkoStatusGood

" ============================================================================
" Sign column
" ============================================================================

" kshenoy/vim-signature
hi! link SignatureMarkText        dkoLineImportant

" showmarks
hi! link ShowMarksHLl             dkoLineImportant
hi! link ShowMarksHLu             dkoLineImportant

" ============================================================================
" Diagnostic
" ============================================================================

hi! link DiagnosticOk     dkoTextGood
hi! link DiagnosticWarn   dkoTextWarn

" Don't make whole line of error red
" We have underline
hi! DiagnosticError                  guifg=NONE
hi! DiagnosticUnderlineError         guifg=#ee6666 gui=underline ctermbg=NONE ctermfg=160
hi! DiagnosticSignError              guifg=#ee6666

hi! DiagnosticHint        guibg=NONE guifg=NONE
hi! DiagnosticInfo        guibg=NONE guifg=NONE

hi! link DiagnosticSignHint     dkoTextInfo
hi! link DiagnosticSignInfo     dkoTextInfo

" ============================================================================
" Plugin provided signs
" ============================================================================

" ghillb/cybu.nvim
hi! link CybuFocus  dkoWarningText

" w0rp/ale
"hi! link ALEErrorSign             Error
" tomtom/quickfixsigns_vim
hi! link QuickFixSignsDiffAdd     dkoSignAdded
hi! link QuickFixSignsDiffChange  DiffChange
hi! link QuickFixSignsDiffDelete  dkoSignRemoved
" airblade/vim-gitgutter
hi! link GitGutterAdd             dkoSignAdded
hi! link GitGutterChange          DiffChange
hi! link GitGutterChangeDelete    DiffChange
hi! link GitGutterDelete          dkoSignRemoved
" mhinz/vim-signify
hi! link SignifySignAdd           dkoSignAdded
hi! link SignifySignChange        DiffChange
hi! link SignifySignChangeDelete  DiffChange
hi! link SignifySignDelete        dkoSignRemoved
" chrisbra/changesPlugin
hi! link ChangesSignTextAdd       dkoSignAdded
hi! link ChangesSignTextCh        DiffChange
hi! link ChangesSignTextDel       dkoSignRemoved

" the head in <head></head>
hi! MatchParen        guibg=#225588 guifg=#ddddcc           ctermbg=18 ctermfg=fg
" the <> in <head>
hi! ParenMatch        guibg=#994433 guifg=#ddddcc gui=NONE

" gbprod/yanky.nvim
hi! link YankyPut    IncSearch
hi! link YankyYanked IncSearch

" ============================================================================
" CSS
" ============================================================================

hi! link cssTagName     Delimiter
hi! link cssProp        StorageClass
hi! link lessVariable   Identifier

" ============================================================================
" Diff
" ============================================================================

hi! link diffFile       Normal
hi! link diffIndexLine  Normal
hi! link diffLine       Normal
hi! link diffNewFile    Normal

hi! link diffAdded      DiffAdd
hi! link diffRemoved    DiffDelete

" ============================================================================
" Git (committia)
" ============================================================================

hi! link gitKeyword         Identifier
hi! link gitDate            String
hi! link gitHash            Normal

" ============================================================================
" git-messenger
" ============================================================================

" Header such as 'Commit:', 'Author:'
hi link gitmessengerHeader        Title

" Commit hash at 'Commit:' header
hi link gitmessengerHash          dkoPopup

" History number at 'History:' header
hi link gitmessengerHistory       dkoPopup

" Normal color. This color is the most important
hi link gitmessengerPopupNormal   dkoPopup

" Color of 'end of buffer'. To hide '~' in popup window, I recommend to use the same background
" color as gitmessengerPopupNormal.
hi link gitmessengerEndOfBuffer   dkoPopupBlank

" ============================================================================
" vim-indentguides
" ============================================================================

hi! IndentGuidesOdd   guibg=#252527

" ============================================================================
" JavaScript
" ============================================================================

hi! link jsBuiltins           Identifier

hi! link jsRegexpCharClass    dkoRegex
hi! link jsRegexpString       dkoRegex

hi! link jsGlobalObjects      Normal
hi! link jsGlobalNodeObjects  dkoNormalKey
hi! link jsFuncArgOperator    Operator
hi! link jsExport             StorageClass
hi! link jsImport             jsExport
hi! link jsFrom               jsExport
hi! link jsModuleKeyword      String
hi! link jsNull               Constant
hi! link jsReturn             dkoReturn
hi! link jsSuper              dkoQuote
"hi! link jsStorageClass       Statement
hi! link jsTemplateBraces     dkoRegex
hi! link jsThis               Identifier
"hi! link jsVariableDef        Identifier

" group {Event} e
" token Event
hi! link jsDocType            dkoJavaDocType
hi! link jsDocTypeNoParam     dkoJavaDocType
" token { }
hi! link jsDocTypeBrackets    dkoDecorations

hi! link jsDocTags            dkoJavaDocTag
hi! link jsDocParam           dkoJavaDocKey

" group 'class InlineEditors extends Component'
hi! link jsClassDefinition    Identifier
hi! link jsClassKeyword       Identifier
hi! link jsExtendsKeyword     Identifier

" group 'editorInstances = {};'
hi! link jsClassProperty      Normal

" token 'componentWillMount'
hi! link jsClassFuncName      Normal

hi! link jsArrowFunction      Delimiter

hi! link jsFuncCall           Function
hi! link jsFuncArgs           Identifier

hi! link jsBracket            Identifier
hi! link jsSpreadExpression   Identifier
hi! link jsDestructuringBlock dkoNormalKey

hi! link jsObject             Identifier
hi! link jsObjectKey          dkoNormalKey
hi! link jsObjectKeyComputed  String
hi! link jsObjectProp         Normal

hi! link jsxAttrib              dkoNormalKey
hi! link jsxAttributeBraces     Noise
hi! link jsxEqual               Noise
hi! link jsxBraces              Noise

hi! link jsxOpenPunct           Noise
hi! link jsxComponentName       Statement
hi! link jsxTagName             Statement
hi! link jsxCloseString         Noise

" ============================================================================
" Lazy.nvim
" ============================================================================

hi! link LazyDimmed Comment

" ============================================================================
" JSON
" ============================================================================

hi! link jsonBoolean          Boolean
hi! link jsonEscape           Operator

" ============================================================================
" Markdown
" ============================================================================

hi! link markdownCode               Identifier
hi! link markdownLinkDelimiter      Noise
hi! link markdownLinkTextDelimiter  Noise

" ============================================================================
" PHP
" ============================================================================

hi! link phpClass             Identifier
hi! link phpType              Normal
hi! link phpDocTags           dkoJavaDocTag
hi! link phpDocParam          dkoJavaDocType
hi! link phpDocIdentifier     dkoJavaDocKey
hi! link phpInclude           Statement
hi! link phpMemberSelector    Noise
hi! link phpVarSelector       Type

" ============================================================================
" Python
" ============================================================================

hi! link pythonQuotes         Noise
hi! link pythonTripleQuotes   Noise

" ============================================================================
" Ruby
" ============================================================================

hi! link rubyInterpolation    PreProc
hi! link rubyRegexp           dkoRegex
" rubyRegexpSpecial is not always part of rubyRegexp
hi! link rubyRegexpSpecial    dkoRegex
hi! link rubyStringDelimiter  Noise

" ============================================================================
" Sh
" ============================================================================

hi! link shCommandSub         Function
" token: '-f' and '--flag'
hi! link shOption             Normal

" ============================================================================
" Typescript - yats.vim
" ============================================================================

hi! link typescriptAbstract                Operator
hi! link typescriptAccessibilityModifier   StorageClass
hi! link typescriptClassKeyword            Normal
hi! link typescriptClassName               Label
hi! link typescriptExport                  StorageClass
hi! link typescriptImport                  typescriptExport
hi! link typescriptCastKeyword             StorageClass
hi! link typescriptParens                  Noise
hi! link typescriptPredefinedType          dkoType
hi! link typescriptObjectType              dkoType
hi! link typescriptTemplateSB              dkoRegex
hi! link typescriptTypeReference           Normal
hi! link typescriptVariable                StorageClass
hi! link tsxRegion                         String

" ============================================================================
" vim-plug
" ============================================================================

hi! link plug1                Normal
hi! link plug2                dkoDecorations
hi! link plugDash             dkoDecorations
hi! link plugSha              SpecialComment

" ============================================================================
" VimL
" ============================================================================

" ----------------------------------------------------------------------------
" Highlighting
" ----------------------------------------------------------------------------

" the word 'highlight' or 'hi'
hi! link vimHighlight         Normal
" the word 'clear'
" First thing after 'hi'
hi! link vimGroup             Normal
hi! link vimHiLink            String
hi! link vimHiGroup           Normal
" Don't highlight this one or it will override vim-css-colors
"hi! link vimHiGuiFgBg  Normal

" ----------------------------------------------------------------------------
" Lang
" ----------------------------------------------------------------------------

hi! link vimCommentTitle      SpecialComment
hi! link vimCommentString     Identifier
hi! link vimContinue          dkoDecorations
hi! link vimOption            Normal
" token '=utf-8' but broken on things like '=dark'
hi! link vimSet               String
hi! link vimSetEqual          String
" group
" e.g. has()
hi! link vimFunc              Normal
hi! link vimFuncName          Normal
" token 'ThisFunction' in 'dko#ThisFunction()'
"hi          link vimUserFunc    String
" the word 'let'
hi! link vimLet               Normal
" '=' in let x = y
" parens
hi! link vimParenSep          dkoDecorations
hi! link vimString            String
" the word 'syntax'
hi! link vimSyntax            Normal
hi! link vimSynType           Normal

" ============================================================================
" vim help
" ============================================================================

hi! link helpExample          String
hi! link helpHeadline         Title
hi! link helpOption           Identifier
hi! link helpSectionDelim     Ignore
hi! link helpSpecial          dkoRegex
hi! link helpWarning          dkoWarningText

" ============================================================================
" yaml
" ============================================================================

hi! link yamlBool             Boolean

" ============================================================================
" zsh
" ============================================================================

hi! link zshCommands          Identifier
hi! link zshOperator          Operator
hi! link zshOptStart          Identifier
hi! link zshOption            Normal

" ============================================================================
" nvim-cmp
" ============================================================================

"hi CmpItemAbbr
hi! link CmpItemAbbrMatch       TabLineSel
hi! link CmpItemAbbrMatchFuzzy  CmpItemAbbrMatch
" End part of completion info a little darker
hi CmpItemMenu                  guifg=#70788a

" ============================================================================
" coc
" ============================================================================

hi! link CocErrorSign       Error
hi! link CocWarningSign     dkoTextWarn
hi! link CocInfoSign        dkoTextInfo
hi! link CocHintSign        dkoTextInfo
hi! link CocInlayHint       LspInlayHint

" ============================================================================
" QuickFix
" ============================================================================

hi! qfError                                 guifg=#772222
hi! link QuickFixLine dkoBgLight
hi! link qfFileName   SpecialComment
hi! link qfLineNr     Comment
hi! link qfSeparator  dkoDecorations

" ============================================================================
" netrw
" ============================================================================

hi link netrwTreeBar  dkoDecorations
hi link netrwClassify Delimiter
hi link netrwExe      Normal

" ============================================================================
" Snacks.nvim
" ============================================================================

" same as search bg
hi! SnacksIndentScope guifg=#dd99ff

" ============================================================================
" telescope
" ============================================================================

hi! link TelescopeBorder FloatBorder
hi! link TelescopeSelection PmenuSel
