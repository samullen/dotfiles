" Use "help hi" and "help group-name" for more information
"
" ( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done; )

" set background=dark

let s:black     = "232 "
let s:cyan      = "014 "
let s:darkcyan  = "006 "
let s:darkgrey  = "240 "
let s:darkred   = "124 "
let s:blue      = "004 "
let s:brightgreen = "010 "
let s:green     = "002 "
let s:grey      = "243 "
let s:medgrey   = "247 "
let s:magenta   = "013 "
let s:red       = "009 "
let s:softblue  = "039 "
let s:tamedblue = "039 "
let s:white     = "255 "
let s:yellow    = "003 "
let s:lightblue = "117 "

hi clear
exe "hi Comment         ctermfg=" . s:darkgrey  . "ctermbg=none cterm=none"

exe "hi Constant        ctermfg=" . s:darkcyan  . "ctermbg=none cterm=none"
exe "hi String          ctermfg=" . s:grey      . "ctermbg=none cterm=none"

exe "hi Character       ctermfg=" . s:cyan      . "ctermbg=none cterm=none"
exe "hi Number          ctermfg=" . s:cyan      . "ctermbg=none cterm=none"
exe "hi Boolean         ctermfg=" . s:red       . "ctermbg=none cterm=none"

exe "hi Identifier      ctermfg=" . s:green     . "ctermbg=none cterm=none"
exe "hi Function        ctermfg=" . s:green     . "ctermbg=none cterm=none"

exe "hi Statement       ctermfg=" . s:softblue  . "ctermbg=none cterm=none"
exe "hi Keyword         ctermfg=" . s:softblue  . "ctermbg=none cterm=none"

exe "hi Conditional     ctermfg=" . s:blue      . "ctermbg=none cterm=none"
exe "hi Repeat          ctermfg=" . s:darkred   . "ctermbg=none cterm=none"
exe "hi Label           ctermfg=" . s:darkred   . "ctermbg=none cterm=none"

exe "hi Operator        ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Exception       ctermfg=" . s:yellow    . "ctermbg=none cterm=none"

exe "hi ListMarker      ctermfg=" . s:medgrey   . "ctermbg=NONE cterm=none"
exe "hi PreProc         ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi Include         ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi Define          ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi Macro           ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi PreCondit       ctermfg=" . s:magenta   . "ctermbg=none cterm=none"

exe "hi Type            ctermfg=" . s:red   . "ctermbg=none cterm=none"
exe "hi StorageClass    ctermfg=" . s:red   . "ctermbg=none cterm=none"
exe "hi Structure       ctermfg=" . s:red   . "ctermbg=none cterm=none"
exe "hi Typedef         ctermfg=" . s:red   . "ctermbg=none cterm=none"

exe "hi Special         ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi SpecialKey      ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Tag             ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Delimiter       ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi SpecialComment  ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Debug           ctermfg=" . s:yellow    . "ctermbg=none cterm=none"

exe "hi Underlined      ctermfg=" . s:tamedblue . "ctermbg=none cterm=underline"

exe "hi Error           ctermfg=" . s:white . "ctermbg=" . s:red . "cterm=none"

exe "hi Todo            ctermfg=" . s:yellow    . "ctermbg=none cterm=bold"

hi Cursor        ctermfg=NONE ctermbg=Cyan
exe "hi NonText       ctermbg=none"
exe "hi Normal        ctermfg=LightGrey   ctermbg=none"
exe "hi MatchParen    ctermfg=" . s:black . "ctermbg=DarkGrey"
exe "hi DiffAdd       ctermfg=" . s:white . "ctermbg=DarkGreen"
exe "hi DiffDelete    ctermfg=" . s:white . "ctermbg=DarkRed"
exe "hi DiffChange    ctermfg=" . s:white . "ctermbg=Brown"
exe "hi DiffText      ctermfg=" . s:white . "ctermbg=DarkMagenta"

" Vimwiki and Markdown

exe "hi VimwikiLink     ctermfg=" . s:softblue  . "ctermbg=none cterm=underline"
exe "hi markdownLinkText ctermfg=" . s:softblue . "ctermbg=NONE cterm=underline"
exe "hi markdownLinkDelimiter ctermfg=" . s:medgrey . "ctermbg=NONE cterm=underline"
exe "hi markdownLinkTextDelimiter ctermfg=" . s:medgrey . "ctermbg=NONE cterm=underline"
exe "hi markdownUrl ctermfg=" . s:darkgrey . "ctermbg=NONE cterm=underline"

exe "hi htmlTag ctermfg=" . s:green . "ctermbg=NONE cterm=underline"
exe "hi htmlEndTag ctermfg=" . s:green . "ctermbg=NONE cterm=underline"
exe "hi htmlTagName ctermfg=" . s:softblue . "ctermbg=NONE cterm=underline"
exe "hi htmlArg ctermfg=" . s:magenta . "ctermbg=NONE cterm=underline"
exe "hi htmlString ctermfg=" . s:medgrey . "ctermbg=NONE cterm=underline"

exe "hi markdownH2Delimiter ctermfg=" . s:yellow . "ctermbg=NONE cterm=NONE"
exe "hi VimwikiHeaderChar ctermfg=" . s:yellow . "ctermbg=NONE cterm=NONE"
exe "hi VimwikiListTodo ctermfg=" . s:cyan . "ctermbg=NONE cterm=NONE"
exe "hi markdownListMarker ctermfg=" . s:cyan . "ctermbg=NONE cterm=NONE"

exe "hi markdownBlockQuote ctermfg=" . s:medgrey . "ctermbg=NONE cterm=NONE"

exe "hi VimwikiHR ctermfg=" . s:green . "ctermbg=NONE cterm=NONE"
exe "hi markdownRule ctermfg=" . s:green . "ctermbg=NONE cterm=NONE"

exe "hi markdownH1 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi markdownH2 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi markdownH3 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi markdownH4 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi markdownH5 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi markdownH6 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader1 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader2 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader3 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader4 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader5 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader6 ctermfg=" . s:lightblue . "ctermbg=NONE cterm=bold"

exe "hi markdownIdDeclaration ctermfg=" . s:green . " ctermbg=NONE cterm=NONE"
exe "hi markdownId     ctermfg=" . s:medgrey . " ctermbg=NONE cterm=underline"
exe "hi markdownAutomaticLink ctermfg=" . s:green . " ctermbg=NONE cterm=NONE"
exe "hi markdownUrl    ctermfg=" . s:medgrey . " ctermbg=NONE cterm=NONE"
exe "hi markdownUrlTitle ctermfg=" . s:green . " ctermbg=NONE cterm=underline"
exe "hi markdownItalic ctermfg=NONE ctermbg=NONE cterm=italic"
exe "hi VimwikiItalic ctermfg=NONE ctermbg=NONE cterm=italic"
exe "hi markdownBold ctermfg=NONE ctermbg=NONE cterm=bold"
exe "hi VimwikiBold ctermfg=NONE ctermbg=NONE cterm=bold"
exe "hi markdownCodeDelimiter ctermfg=" . s:magenta . " ctermbg=NONE cterm=NONE"
exe "hi VimwikiPreDelim ctermfg=" . s:magenta . " ctermbg=NONE cterm=NONE"
exe "hi markdownCode ctermfg="   . s:cyan . " ctermbg=NONE cterm=NONE"
exe "hi VimwikiPre ctermfg=" . s:cyan . " ctermbg=NONE cterm=NONE"
exe "hi VimwikiDelimiter ctermfg=" . s:magenta . " ctermbg=NONE cterm=NONE"
exe "hi VimwikiCode ctermfg=" . s:cyan . " ctermbg=NONE cterm=NONE"
exe "hi markdownEscape ctermfg=" . s:green . " ctermbg=NONE cterm=NONE"
exe "hi markdownError ctermfg="  . s:black . " ctermbg=" . s:red . " cterm=NONE"

hi perlStatementSub ctermfg=magenta cterm=NONE
hi perlMatchStartEnd ctermfg=magenta cterm=NONE

hi TabLine     ctermfg=LightGrey ctermbg=237 cterm=underline
hi TabLineSel  ctermfg=255     ctermbg=none cterm=underline
hi TabLineFill ctermfg=LightGrey ctermbg=237 cterm=underline
