" rnb.vim -- Vim color scheme.
" Author:      foo (foo@foo.foo)
" Webpage:     http://www.example.com
" Description: Lorem ipsum dolor sit amet.
" Last Change: 2023-04-07

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "rnb"

if ($TERM =~ '256' || &t_Co >= 256) || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=252 cterm=NONE guibg=NONE guifg=#d3d3d3 gui=NONE
    hi NonText ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi Boolean ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ff0000 gui=NONE
    hi Character ctermbg=NONE ctermfg=14 cterm=NONE guibg=NONE guifg=#00ffff gui=NONE
    hi Comment ctermbg=NONE ctermfg=240 cterm=NONE guibg=NONE guifg=#808080 gui=NONE
    hi Constant ctermbg=NONE ctermfg=6 cterm=NONE guibg=NONE guifg=#008080 gui=NONE
    hi Error ctermbg=9 ctermfg=15 cterm=NONE guibg=#ff0000 guifg=#ffffff gui=NONE
    hi Identifier ctermbg=NONE ctermfg=10 cterm=NONE guibg=NONE guifg=#00ff00 gui=NONE
    hi Ignore ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi PreProc ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#ff00ff gui=NONE
    hi Special ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#ffff00 gui=NONE
    hi Statement ctermbg=NONE ctermfg=39 cterm=NONE guibg=NONE guifg=#0000ff gui=NONE
    hi Keyword ctermbg=NONE ctermfg=39 cterm=NONE guibg=NONE guifg=#0000ff gui=NONE
    hi Conditional ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#0000ff gui=NONE
    hi String ctermbg=0 ctermfg=243 cterm=NONE guibg=#000000 guifg=#c0c0c0 gui=NONE
    hi Todo ctermbg=NONE ctermfg=11 cterm=NONE guibg=NONE guifg=#ffff00 gui=NONE
    hi Type ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#ff0000 gui=NONE
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline guibg=NONE guifg=NONE gui=underline
    hi Title ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi CursorLine ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi LineNr ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi CursorLineNr ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi helpLeadBlank ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi helpNormal ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Visual ctermbg=252 ctermfg=NONE cterm=reverse guibg=#d3d3d3 guifg=NONE gui=reverse
    hi VisualNOS ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi FoldColumn ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Folded ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi WildMenu ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi SpecialKey ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi DiffAdd ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi DiffChange ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi DiffDelete ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi DiffText ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi IncSearch ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Search ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Directory ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi MatchParen ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi SpellBad ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE guisp=#ff0000
    hi SpellCap ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE guisp=#0000ff
    hi SpellLocal ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE guisp=#ff00ff
    hi SpellRare ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE guisp=#00ffff
    hi ColorColumn ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi SignColumn ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi ErrorMsg ctermbg=9 ctermfg=15 cterm=NONE guibg=#ff0000 guifg=#ffffff gui=NONE
    hi ModeMsg ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi MoreMsg ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Question ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi WarningMsg ctermbg=11 ctermfg=0 cterm=NONE guibg=#ffff00 guifg=#000000 gui=NONE
    hi Cursor ctermbg=15 ctermfg=214 cterm=NONE guibg=#ffffff guifg=#ffa500 gui=NONE
    hi CursorColumn ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi QuickFixLine ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi Conceal ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi ToolbarLine ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi ToolbarButton ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi debugPC ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE
    hi debugBreakpoint ctermbg=15 ctermfg=240 cterm=NONE guibg=#ffffff guifg=#808080 gui=NONE

elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16

    hi Normal ctermbg=NONE ctermfg=lightgrey cterm=NONE
    hi NonText ctermbg=NONE ctermfg=NONE cterm=NONE
    hi Boolean ctermbg=NONE ctermfg=red cterm=NONE
    hi Character ctermbg=NONE ctermfg=cyan cterm=NONE
    hi Comment ctermbg=NONE ctermfg=darkgrey cterm=NONE
    hi Constant ctermbg=NONE ctermfg=darkcyan cterm=NONE
    hi Error ctermbg=red ctermfg=white cterm=NONE
    hi Identifier ctermbg=NONE ctermfg=green cterm=NONE
    hi Ignore ctermbg=white ctermfg=darkgrey cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=magenta cterm=NONE
    hi Special ctermbg=NONE ctermfg=yellow cterm=NONE
    hi Statement ctermbg=NONE ctermfg=blue cterm=NONE
    hi Keyword ctermbg=NONE ctermfg=blue cterm=NONE
    hi Conditional ctermbg=NONE ctermfg=blue cterm=NONE
    hi String ctermbg=black ctermfg=grey cterm=NONE
    hi Todo ctermbg=NONE ctermfg=yellow cterm=NONE
    hi Type ctermbg=NONE ctermfg=red cterm=NONE
    hi Underlined ctermbg=NONE ctermfg=NONE cterm=underline
    hi Title ctermbg=white ctermfg=darkgrey cterm=NONE
    hi CursorLine ctermbg=white ctermfg=darkgrey cterm=NONE
    hi LineNr ctermbg=white ctermfg=darkgrey cterm=NONE
    hi CursorLineNr ctermbg=white ctermfg=darkgrey cterm=NONE
    hi helpLeadBlank ctermbg=white ctermfg=darkgrey cterm=NONE
    hi helpNormal ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Visual ctermbg=lightgrey ctermfg=NONE cterm=reverse
    hi VisualNOS ctermbg=white ctermfg=darkgrey cterm=NONE
    hi FoldColumn ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Folded ctermbg=white ctermfg=darkgrey cterm=NONE
    hi WildMenu ctermbg=white ctermfg=darkgrey cterm=NONE
    hi SpecialKey ctermbg=white ctermfg=darkgrey cterm=NONE
    hi DiffAdd ctermbg=white ctermfg=darkgrey cterm=NONE
    hi DiffChange ctermbg=white ctermfg=darkgrey cterm=NONE
    hi DiffDelete ctermbg=white ctermfg=darkgrey cterm=NONE
    hi DiffText ctermbg=white ctermfg=darkgrey cterm=NONE
    hi IncSearch ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Search ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Directory ctermbg=white ctermfg=darkgrey cterm=NONE
    hi MatchParen ctermbg=white ctermfg=darkgrey cterm=NONE
    hi SpellBad ctermbg=white ctermfg=darkgrey cterm=NONE
    hi SpellCap ctermbg=white ctermfg=darkgrey cterm=NONE
    hi SpellLocal ctermbg=white ctermfg=darkgrey cterm=NONE
    hi SpellRare ctermbg=white ctermfg=darkgrey cterm=NONE
    hi ColorColumn ctermbg=white ctermfg=darkgrey cterm=NONE
    hi SignColumn ctermbg=white ctermfg=darkgrey cterm=NONE
    hi ErrorMsg ctermbg=red ctermfg=white cterm=NONE
    hi ModeMsg ctermbg=white ctermfg=darkgrey cterm=NONE
    hi MoreMsg ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Question ctermbg=white ctermfg=darkgrey cterm=NONE
    hi WarningMsg ctermbg=yellow ctermfg=black cterm=NONE
    hi Cursor ctermbg=white ctermfg=darkyellow cterm=NONE
    hi CursorColumn ctermbg=white ctermfg=darkgrey cterm=NONE
    hi QuickFixLine ctermbg=white ctermfg=darkgrey cterm=NONE
    hi Conceal ctermbg=white ctermfg=darkgrey cterm=NONE
    hi ToolbarLine ctermbg=white ctermfg=darkgrey cterm=NONE
    hi ToolbarButton ctermbg=white ctermfg=darkgrey cterm=NONE
    hi debugPC ctermbg=white ctermfg=darkgrey cterm=NONE
    hi debugBreakpoint ctermbg=white ctermfg=darkgrey cterm=NONE
endif

hi link EndOfBuffer NonText
hi link Number Constant
hi link CursorIM Cursor
hi link Terminal Normal

if (has('termguicolors') && &termguicolors) || has('gui_running')
    let g:terminal_ansi_colors = [ '#000000', '#800000', '#008000', '#808000', '#000080', '#800080', '#008080', '#c0c0c0', '#808080', '#ff0000', '#00ff00', '#ffff00', '#0000ff', '#ff00ff', '#00ffff', '#ffffff' ]
endif

" Generated with RNB (https://github.com/romainl/vim-rnb)
