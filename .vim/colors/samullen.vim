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
let s:magenta   = "013 "
let s:red       = "009 "
let s:softblue  = "039 "
let s:tamedblue = "039 "
let s:white     = "255 "
let s:yellow    = "003 "

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

hi perlStatementSub ctermfg=magenta cterm=NONE
hi perlMatchStartEnd ctermfg=magenta cterm=NONE

hi TabLine     ctermfg=LightGrey ctermbg=237 cterm=underline
hi TabLineSel  ctermfg=255     ctermbg=none cterm=underline
hi TabLineFill ctermfg=LightGrey ctermbg=237 cterm=underline
