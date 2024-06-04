" Vim color file
" Converted from Textmate theme Succulent using Coloration v0.4.0 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Succulent"

hi Cursor ctermfg=0 ctermbg=248 cterm=NONE guifg=#000000 guibg=#a7a7a7 gui=NONE
hi Visual ctermfg=NONE ctermbg=90 cterm=NONE guifg=NONE guibg=#990092 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=234 cterm=NONE guifg=NONE guibg=#191919 gui=NONE
hi LineNr ctermfg=244 ctermbg=234 cterm=NONE guifg=#7c7c7c guibg=#191919 gui=NONE
hi VertSplit ctermfg=238 ctermbg=238 cterm=NONE guifg=#484848 guibg=#484848 gui=NONE
hi MatchParen ctermfg=203 ctermbg=NONE cterm=underline guifg=#ff6458 guibg=NONE gui=underline
hi StatusLine ctermfg=231 ctermbg=238 cterm=bold guifg=#f8f8f8 guibg=#484848 gui=bold
hi StatusLineNC ctermfg=231 ctermbg=238 cterm=NONE guifg=#f8f8f8 guibg=#484848 gui=NONE
hi Pmenu ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=90 cterm=NONE guifg=NONE guibg=#990092 gui=NONE
hi IncSearch ctermfg=0 ctermbg=119 cterm=NONE guifg=#000000 guibg=#90ff5e gui=NONE
hi Search ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi Directory ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi Folded ctermfg=135 ctermbg=0 cterm=NONE guifg=#c05dff guibg=#000000 gui=NONE

hi Normal ctermfg=231 ctermbg=0 cterm=NONE guifg=#f8f8f8 guibg=#000000 gui=NONE
hi Boolean ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi Character ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi Comment ctermfg=135 ctermbg=NONE cterm=italic guifg=#c05dff guibg=NONE gui=italic
hi Conditional ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi Constant ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi Define ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi DiffAdd ctermfg=231 ctermbg=64 cterm=bold guifg=#f8f8f8 guibg=#3e7b05 gui=bold
hi DiffDelete ctermfg=88 ctermbg=NONE cterm=NONE guifg=#830000 guibg=NONE gui=NONE
hi DiffChange ctermfg=231 ctermbg=17 cterm=NONE guifg=#f8f8f8 guibg=#102544 gui=NONE
hi DiffText ctermfg=231 ctermbg=24 cterm=bold guifg=#f8f8f8 guibg=#204a87 gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi Function ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi Identifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi Label ctermfg=119 ctermbg=NONE cterm=NONE guifg=#90ff5e guibg=NONE gui=NONE
hi NonText ctermfg=23 ctermbg=232 cterm=NONE guifg=#2e343a guibg=#0c0c0c gui=NONE
hi Number ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi Operator ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi PreProc ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi Special ctermfg=231 ctermbg=NONE cterm=NONE guifg=#f8f8f8 guibg=NONE gui=NONE
hi SpecialKey ctermfg=23 ctermbg=234 cterm=NONE guifg=#2e343a guibg=#191919 gui=NONE
hi Statement ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi StorageClass ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi String ctermfg=119 ctermbg=NONE cterm=NONE guifg=#90ff5e guibg=NONE gui=NONE
hi Tag ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi Title ctermfg=231 ctermbg=NONE cterm=bold guifg=#f8f8f8 guibg=NONE gui=bold
hi Todo ctermfg=135 ctermbg=NONE cterm=inverse,bold,italic guifg=#c05dff guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi rubyFunction ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi rubyConstant ctermfg=49 ctermbg=NONE cterm=NONE guifg=#00ffbc guibg=NONE gui=NONE
hi rubyStringDelimiter ctermfg=119 ctermbg=NONE cterm=NONE guifg=#90ff5e guibg=NONE gui=NONE
hi rubyBlockParameter ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi rubyInclude ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi rubyRegexp ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=179 ctermbg=NONE cterm=NONE guifg=#e9c062 guibg=NONE gui=NONE
hi rubyEscape ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi rubyControl ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi rubyOperator ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi rubyException ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=49 ctermbg=NONE cterm=NONE guifg=#00ffbc guibg=NONE gui=NONE
hi rubyRailsARAssociationMethod ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=135 ctermbg=NONE cterm=italic guifg=#c05dff guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi htmlTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlEndTag ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlTagName ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlArg ctermfg=111 ctermbg=NONE cterm=NONE guifg=#89bdff guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi yamlAnchor ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi yamlAlias ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=119 ctermbg=NONE cterm=NONE guifg=#90ff5e guibg=NONE gui=NONE
hi cssURL ctermfg=69 ctermbg=NONE cterm=NONE guifg=#4596ff guibg=NONE gui=NONE
hi cssFunctionName ctermfg=221 ctermbg=NONE cterm=NONE guifg=#f1d950 guibg=NONE gui=NONE
hi cssColor ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi cssClassName ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi cssValueLength ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi cssCommonAttr ctermfg=167 ctermbg=NONE cterm=NONE guifg=#cf6a4c guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE

hi link @comment Comment
hi link @string String
hi link @comment.documentation Comment
hi link @boolean Boolean
hi @attribute ctermfg=138 ctermbg=NONE cterm=NONE guifg=#cda869 guibg=NONE gui=NONE
hi @variable ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi @parameter ctermfg=39 ctermbg=NONE cterm=NONE guifg=#0a9cff guibg=NONE gui=NONE
hi @keyword ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi @type.builtin ctermfg=117 ctermbg=NONE cterm=NONE guifg=#83cbed guibg=NONE gui=NONE
hi @type.qualifier ctermfg=113 ctermbg=NONE cterm=NONE guifg=#99cf50 guibg=NONE gui=NONE
hi @type ctermfg=49 ctermbg=NONE cterm=NONE guifg=#00ffbc guibg=NONE gui=NONE
hi @keyword.operator ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi @keyword.coroutine ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi @keyword.return ctermfg=203 ctermbg=NONE cterm=NONE guifg=#ff6458 guibg=NONE gui=NONE
hi @method.call ctermfg=231 ctermbg=0 cterm=NONE guifg=#f8f8f8 guibg=#000000 gui=NONE
hi @punctuation.bracket ctermfg=231 ctermbg=0 cterm=NONE guifg=#f8f8f8 guibg=#000000 gui=NONE

