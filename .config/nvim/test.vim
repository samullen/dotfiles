" samullen.vim -- Vim color scheme.
" Author:      Samuel Mullen (samullen@gmail.com)
" Webpage:     https://samuelmullen.com
" Description: This is my colorscheme. There are many like it, but this one is mine
" Last Change: 2020-07-06

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "samullen"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#c0c0c0 gui=NONE
    hi NonText ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#c0c0c0 gui=NONE
    hi Comment ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Constant ctermbg=NONE ctermfg=6 cterm=NONE guibg=NONE guifg=#008080 gui=NONE
    hi Error ctermbg=9 ctermfg=15 cterm=NONE guibg=#ff0000 guifg=#ffffff gui=NONE
    hi Identifier ctermbg=NONE ctermfg=10 cterm=NONE guibg=NONE guifg=#00ff00 gui=NONE
    hi Ignore ctermbg=15 ctermfg=8 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi PreProc ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#ff00ff gui=NONE
    hi Special ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#ffff00 gui=NONE
    hi Statement ctermbg=NONE ctermfg=39 cterm=NONE guibg=NONE guifg=#3685CE gui=NONE
    hi String ctermbg=NONE ctermfg=8 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Number ctermbg=NONE ctermfg=14 cterm=NONE guibg=NONE guifg=#00ffff gui=NONE
    hi Todo ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#ffff00 gui=NONE
    hi Type ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ff0000 gui=NONE
    hi Underlined ctermbg=NONE ctermfg=39 cterm=underline guibg=NONE guifg=#3685CE gui=underline
    hi StatusLine ctermbg=7 ctermfg=0 cterm=bold guibg=#c0c0c0 guifg=#000000 gui=bold
    hi StatusLineNC ctermbg=7 ctermfg=0 cterm=NONE guibg=#c0c0c0 guifg=#000000 gui=NONE
    hi VertSplit ctermbg=7 ctermfg=8 cterm=NONE guibg=#c0c0c0 guifg=#808080 gui=NONE
    hi TabLine ctermbg=NONE ctermfg=7 cterm=underline guibg=NONE guifg=#c0c0c0 gui=underline
    hi TabLineFill ctermbg=NONE ctermfg=15 cterm=underline guibg=NONE guifg=#ffffff gui=underline
    hi TabLineSel ctermbg=8 ctermfg=15 cterm=underline,bold guibg=#808080 guifg=#ffffff gui=underline,bold
    hi Title ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#ff00ff gui=NONE
    hi CursorLine ctermbg=NONE ctermfg=7 cterm=underline guibg=NONE guifg=#c0c0c0 gui=underline
    hi LineNr ctermbg=15 ctermfg=8 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=1 cterm=underline guibg=NONE guifg=#800000 gui=underline
    hi helpLeadBlank ctermbg=15 ctermfg=8 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi helpNormal ctermbg=15 ctermfg=8 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Visual ctermbg=7 ctermfg=243 cterm=NONE guibg=#c0c0c0 guifg=#767676 gui=NONE
    hi VisualNOS ctermbg=NONE ctermfg=7 cterm=bold,underline guibg=NONE guifg=#c0c0c0 gui=bold,underline
    hi Pmenu ctermbg=225 ctermfg=0 cterm=NONE guibg=#F8D9FC guifg=#000000 gui=NONE
    hi PmenuSbar ctermbg=243 ctermfg=7 cterm=NONE guibg=#767676 guifg=#c0c0c0 gui=NONE
    hi PmenuSel ctermbg=243 ctermfg=0 cterm=NONE guibg=#767676 guifg=#000000 gui=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#c0c0c0 gui=NONE
    hi FoldColumn ctermbg=243 ctermfg=4 cterm=standout guibg=#767676 guifg=#000080 gui=standout
    hi Folded ctermbg=243 ctermfg=4 cterm=standout guibg=#767676 guifg=#000080 gui=standout
    hi WildMenu ctermbg=11 ctermfg=0 cterm=standout guibg=#ffff00 guifg=#000000 gui=standout
    hi SpecialKey ctermbg=12 ctermfg=3 cterm=bold guibg=#0000ff guifg=#808000 gui=bold
    hi DiffAdd ctermbg=2 ctermfg=7 cterm=bold guibg=#008000 guifg=#c0c0c0 gui=bold
    hi DiffChange ctermbg=7 ctermfg=225 cterm=bold guibg=#c0c0c0 guifg=#F8D9FC gui=bold
    hi DiffDelete ctermbg=7 ctermfg=1 cterm=bold guibg=#c0c0c0 guifg=#800000 gui=bold
    hi DiffText ctermbg=5 ctermfg=7 cterm=bold guibg=#800080 guifg=#c0c0c0 gui=bold
    hi IncSearch ctermbg=7 ctermfg=NONE cterm=NONE guibg=#c0c0c0 guifg=NONE gui=NONE
    hi Search ctermbg=11 ctermfg=7 cterm=NONE guibg=#ffff00 guifg=#c0c0c0 gui=NONE
    hi Directory ctermbg=NONE ctermfg=4 cterm=bold guibg=NONE guifg=#000080 gui=bold
    hi MatchParen ctermbg=8 ctermfg=0 cterm=NONE guibg=#808080 guifg=#000000 gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=8 cterm=undercurl guibg=NONE guifg=#808080 gui=undercurl guisp=#ff0000
    hi SpellCap ctermbg=NONE ctermfg=8 cterm=undercurl guibg=NONE guifg=#808080 gui=undercurl guisp=#0000ff
    hi SpellLocal ctermbg=NONE ctermfg=8 cterm=undercurl guibg=NONE guifg=#808080 gui=undercurl guisp=#ff00ff
    hi SpellRare ctermbg=NONE ctermfg=8 cterm=undercurl guibg=NONE guifg=#808080 gui=undercurl guisp=#00ffff
    hi ColorColumn ctermbg=225 ctermfg=15 cterm=NONE guibg=#F8D9FC guifg=#ffffff gui=NONE
    hi SignColumn ctermbg=243 ctermfg=4 cterm=standout guibg=#767676 guifg=#000080 gui=standout
    hi ErrorMsg ctermbg=9 ctermfg=15 cterm=standout guibg=#ff0000 guifg=#ffffff gui=standout
    hi ModeMsg ctermbg=NONE ctermfg=7 cterm=bold guibg=NONE guifg=#c0c0c0 gui=bold
    hi MoreMsg ctermbg=NONE ctermfg=2 cterm=bold guibg=NONE guifg=#008000 gui=bold
    hi Question ctermbg=NONE ctermfg=2 cterm=standout guibg=NONE guifg=#008000 gui=standout
    hi Cursor ctermbg=14 ctermfg=15 cterm=NONE guibg=#00ffff guifg=#ffffff gui=NONE
    hi CursorColumn ctermbg=8 ctermfg=7 cterm=NONE guibg=#808080 guifg=#c0c0c0 gui=NONE
    hi Conceal ctermbg=8 ctermfg=7 cterm=NONE guibg=#808080 guifg=#c0c0c0 gui=NONE
    hi ToolbarLine ctermbg=8 ctermfg=7 cterm=NONE guibg=#808080 guifg=#c0c0c0 gui=NONE
    hi ToolbarButton ctermbg=8 ctermfg=15 cterm=bold guibg=#808080 guifg=#ffffff gui=bold
    hi debugPC ctermbg=15 ctermfg=8 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi debugBreakpoint ctermbg=15 ctermfg=8 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=NONE ctermfg=lightgrey cterm=NONE
    hi NonText ctermbg=NONE ctermfg=lightgrey cterm=NONE
    hi Comment ctermbg=NONE ctermfg=darkgrey cterm=NONE
    hi Constant ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi Error ctermbg=red ctermfg=white cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=green cterm=NONE
    hi Ignore ctermbg=white ctermfg=darkgrey cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=magenta cterm=NONE
    hi Special ctermbg=NONE ctermfg=yellow cterm=NONE
    hi Statement ctermbg=NONE ctermfg=softblue cterm=NONE
    hi String ctermbg=NONE ctermfg=darkgrey cterm=NONE
    hi Number ctermbg=NONE ctermfg=cyan cterm=NONE
    hi Todo ctermbg=NONE ctermfg=yellow cterm=NONE
    hi Type ctermbg=NONE ctermfg=red cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=softblue cterm=underline
    hi StatusLine ctermbg=lightgrey ctermfg=black cterm=bold
    hi StatusLineNC ctermbg=lightgrey ctermfg=black cterm=NONE
    hi VertSplit ctermbg=lightgrey ctermfg=darkgrey cterm=NONE
    hi TabLine ctermbg=NONE ctermfg=lightgrey cterm=underline
    hi TabLineFill ctermbg=NONE ctermfg=white cterm=underline
    hi TabLineSel ctermbg=darkgrey ctermfg=white cterm=underline,bold
    hi Title ctermbg=NONE ctermfg=magenta cterm=NONE
    hi CursorLine ctermbg=NONE ctermfg=lightgrey cterm=underline
    hi LineNr ctermbg=white ctermfg=darkgrey cterm=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=darkred cterm=underline
    hi helpLeadBlank ctermbg=white ctermfg=darkgrey cterm=NONE
    hi helpNormal ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Visual ctermbg=lightgrey ctermfg=grey cterm=NONE
    hi VisualNOS ctermbg=NONE ctermfg=lightgrey cterm=bold,underline
    hi Pmenu ctermbg=lightmagenta ctermfg=black cterm=NONE
    hi PmenuSbar ctermbg=grey ctermfg=lightgrey cterm=NONE
    hi PmenuSel ctermbg=grey ctermfg=black cterm=NONE
    hi PmenuThumb ctermbg=NONE ctermfg=lightgrey cterm=NONE
    hi FoldColumn ctermbg=grey ctermfg=darkblue cterm=standout
    hi Folded ctermbg=grey ctermfg=darkblue cterm=standout
    hi WildMenu ctermbg=yellow ctermfg=black cterm=standout
    hi SpecialKey ctermbg=blue ctermfg=darkyellow cterm=bold
    hi DiffAdd ctermbg=darkgreen ctermfg=lightgrey cterm=bold
    hi DiffChange ctermbg=lightgrey ctermfg=lightmagenta cterm=bold
    hi DiffDelete ctermbg=lightgrey ctermfg=darkred cterm=bold
    hi DiffText ctermbg=darkmagenta ctermfg=lightgrey cterm=bold
    hi IncSearch ctermbg=lightgrey ctermfg=NONE cterm=NONE
    hi Search ctermbg=yellow ctermfg=lightgrey cterm=NONE
    hi Directory ctermbg=NONE ctermfg=darkblue cterm=bold
    hi MatchParen ctermbg=darkgrey ctermfg=black cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=darkgrey cterm=undercurl
    hi SpellCap ctermbg=NONE ctermfg=darkgrey cterm=undercurl
    hi SpellLocal ctermbg=NONE ctermfg=darkgrey cterm=undercurl
    hi SpellRare ctermbg=NONE ctermfg=darkgrey cterm=undercurl
    hi ColorColumn ctermbg=lightmagenta ctermfg=white cterm=NONE
    hi SignColumn ctermbg=grey ctermfg=darkblue cterm=standout
    hi ErrorMsg ctermbg=red ctermfg=white cterm=standout
    hi ModeMsg ctermbg=NONE ctermfg=lightgrey cterm=bold
    hi MoreMsg ctermbg=NONE ctermfg=darkgreen cterm=bold
    hi Question ctermbg=NONE ctermfg=darkgreen cterm=standout
    hi Cursor ctermbg=cyan ctermfg=white cterm=NONE
    hi CursorColumn ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
    hi Conceal ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
    hi ToolbarLine ctermbg=darkgrey ctermfg=lightgrey cterm=NONE
    hi ToolbarButton ctermbg=darkgrey ctermfg=white cterm=bold
    hi debugPC ctermbg=white ctermfg=darkgrey cterm=NONE
    hi debugBreakpoint ctermbg=white ctermfg=darkgrey cterm=NONE
endif

hi link EndOfBuffer NonText
hi link StatusLineTerm StatusLine
hi link StatusLineTermNC StatusLineNC
hi link WarningMsg Error
hi link CursorIM Cursor
hi link QuickFixLine Search
hi link Terminal Normal

let g:terminal_ansi_colors = [
        \ '#000000',
        \ '#800000',
        \ '#008000',
        \ '#808000',
        \ '#000080',
        \ '#800080',
        \ '#008080',
        \ '#767676',
        \ '#808080',
        \ '#ff0000',
        \ '#00ff00',
        \ '#ffff00',
        \ '#0000ff',
        \ '#ff00ff',
        \ '#00ffff',
        \ '#ffffff',
        \ ]

" Generated with RNB (https://github.com/romainl/vim-rnb)
