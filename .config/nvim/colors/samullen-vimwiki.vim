" Use "help hi" and "help group-name" for more information
"
" ( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done; )


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
let s:lightgrey = "253 "
let s:magenta   = "013 "
let s:red       = "009 "
let s:softblue  = "039 "
let s:tamedblue = "039 "
let s:white     = "255 "
let s:yellow    = "003 "
let s:lightblue = "117 "

hi clear
execute "hi NonText ctermbg=" . s:lightgrey . " guibg=" . s:lightgrey
execute "hi Normal  ctermfg=" . s:darkgrey . " ctermbg=" . s:lightgrey

exe "hi htmlH1         ctermfg=" . s:black   . " ctermbg=NONE cterm=bold"
exe "hi htmlH2         ctermfg=" . s:black   . " ctermbg=NONE cterm=bold"
exe "hi htmlH3         ctermfg=" . s:black   . " ctermbg=NONE cterm=bold"
exe "hi htmlH4         ctermfg=" . s:black   . " ctermbg=NONE cterm=bold"
exe "hi htmlH5         ctermfg=" . s:black   . " ctermbg=NONE cterm=bold"
exe "hi htmlH6         ctermfg=" . s:black   . " ctermbg=NONE cterm=bold"

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

exe "hi markdownH2Delimiter ctermfg=" . s:medgrey . "ctermbg=NONE cterm=NONE"
exe "hi VimwikiHeaderChar ctermfg=" . s:medgrey . "ctermbg=NONE cterm=NONE"

exe "hi VimwikiListTodo ctermfg=" . s:medgrey . "ctermbg=NONE cterm=NONE"
exe "hi markdownListMarker ctermfg=" . s:medgrey . "ctermbg=NONE cterm=NONE"

exe "hi markdownBlockQuote ctermfg=" . s:medgrey . "ctermbg=NONE cterm=NONE"

exe "hi VimwikiHR ctermfg=" . s:green . "ctermbg=NONE cterm=NONE"
exe "hi markdownRule ctermfg=" . s:green . "ctermbg=NONE cterm=NONE"

exe "hi markdownH1 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi markdownH2 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi markdownH3 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi markdownH4 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi markdownH5 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi markdownH6 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader1 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader2 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader3 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader4 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader5 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"
exe "hi VimwikiHeader6 ctermfg=" . s:black . "ctermbg=NONE cterm=bold"

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

