" Use "help hi" and "help group-name" for more information
"
" ( x=`tput op` y=`printf %$((${COLUMNS}-6))s`;for i in {0..256};do o=00$i;echo -e ${o:${#o}-3:3} `tput setaf $i;tput setab $i`${y// /=}$x;done; )

set background=dark

let s:white      = "255"
let s:darkgrey   = "240"
let s:darkred    = "124"
let s:green      = "040"
let s:softblue   = "039"
let s:tamedblue  = "039"
let s:red        = "001"
let s:yellow     = "003"
let s:magenta    = "201"
let s:black      = "000"

hi clear
exe "hi Comment         ctermfg=" . s:white     . "ctermbg=none cterm=bold"

exe "hi Constant        ctermfg=" . s:darkgrey  . "ctermbg=none cterm=none"
exe "hi String          ctermfg=" . s:darkgrey  . "ctermbg=none cterm=none"

exe "hi Character       ctermfg=" . s:darkred   . "ctermbg=none cterm=none"
exe "hi Number          ctermfg=" . s:darkred   . "ctermbg=none cterm=none"
exe "hi Boolean         ctermfg=" . s:darkred   . "ctermbg=none cterm=none"

exe "hi Identifier      ctermfg=" . s:green     . "ctermbg=none cterm=none"
exe "hi Function        ctermfg=" . s:green     . "ctermbg=none cterm=none"

exe "hi Statement       ctermfg=" . s:softblue  . "ctermbg=none cterm=none"
exe "hi Keyword         ctermfg=" . s:softblue  . "ctermbg=none cterm=none"

exe "hi Conditional     ctermfg=" . s:red       . "ctermbg=none cterm=none"
exe "hi Repeat          ctermfg=" . s:red       . "ctermbg=none cterm=none"
exe "hi Label           ctermfg=" . s:red       . "ctermbg=none cterm=none"

exe "hi Operator        ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Exception       ctermfg=" . s:yellow    . "ctermbg=none cterm=none"

exe "hi PreProc         ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi Include         ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi Define          ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi Macro           ctermfg=" . s:magenta   . "ctermbg=none cterm=none"
exe "hi PreCondit       ctermfg=" . s:magenta   . "ctermbg=none cterm=none"

exe "hi Type            ctermfg=" . s:red       . "ctermbg=none cterm=none"
exe "hi StorageClass    ctermfg=" . s:red       . "ctermbg=none cterm=none"
exe "hi Structure       ctermfg=" . s:red       . "ctermbg=none cterm=none"
exe "hi Typedef         ctermfg=" . s:red       . "ctermbg=none cterm=none"

exe "hi Special         ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi SpecialKey      ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Tag             ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Delimiter       ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi SpecialComment  ctermfg=" . s:yellow    . "ctermbg=none cterm=none"
exe "hi Debug           ctermfg=" . s:yellow    . "ctermbg=none cterm=none"

exe "hi Underlined      ctermfg=" . s:tamedblue . "ctermbg=none cterm=underline"

exe "hi Error           ctermfg=" . s:white . "ctermbg=" . s:red . "cterm=none"

exe "hi Todo            ctermfg=" . s:yellow . "ctermbg=none cterm=underline"

hi Cursor        ctermfg=NONE ctermbg=Cyan
exe "hi NonText         ctermbg=" . s:black
exe "hi Normal        ctermfg=LightGrey   ctermbg=" . s:black
exe "hi MatchParen    ctermfg=" . s:black . " ctermbg=DarkGrey"
exe "hi DiffAdd       ctermfg=" . s:white . "ctermbg=DarkGreen"
exe "hi DiffDelete    ctermfg=" . s:white . "ctermbg=DarkRed"
exe "hi DiffChange    ctermfg=" . s:white . "ctermbg=Brown"
exe "hi DiffText      ctermfg=" . s:white . "ctermbg=DarkMagenta"

hi perlStatementSub ctermfg=magenta cterm=NONE
hi perlMatchStartEnd ctermfg=magenta cterm=NONE

hi TabLine     ctermfg=LightGrey ctermbg=237 cterm=underline
hi TabLineSel  ctermfg=255     ctermbg=Black cterm=underline
hi TabLineFill ctermfg=LightGrey ctermbg=237 cterm=underline
