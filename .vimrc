" set t_kb=^h<BS> alsdfj
" fiet t_Sb=xdel

set t_Co=16
set t_AF=[3%dm
set t_AB=[4%dm
set t_Sf=[3%dm
set t_Sb=[4%dm
set t_fs=

set autoread " automatically read files when they are changed outside of VIM.
set autowrite " only when editing multiple files
set backspace=""
set complete-=i
set cpoptions=ces$
set expandtab
set filetype=on
set formatoptions=tq
set ignorecase
set noai
set nobackup
set nocompatible
set nohlsearch
set nolazyredraw
set noshowmatch
set notitle
set novisualbell
set ruler
set rulerformat=%40(%<%f%=[%l:%L,%v]%)
set shiftwidth=2
set showcmd " display # of characters/lines/area are visually highlighted
set smartcase
set tabstop=2
set textwidth=0
set wildignore+=*.class,*.o
set wildmode=list:longest,list:full " for finding files when opening new frames
set wrapmargin=0
set writebackup
set smarttab

syntax on

let mapleader = ','

"-------------------------------------------------------------------------------
" Javascript specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadJavascripts()
  ab pndcom //------------------------------------------------------------------------------
  ab pndsec //-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  ab pnd //##############################################################################
  ab brem //-----
  ab erem -----//

  "----- Mappings -----"
  map ` 0i//<Esc>j
  map ~ 02xj
endfunction

"-------------------------------------------------------------------------------
" C and CSS specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadCSources()
  ab bpnd /*******************************************************************************
  ab epnd *******************************************************************************/
  ab bcom /*------------------------------------------------------------------------------
  ab ecom ------------------------------------------------------------------------------*/
  ab cpndcom /*----------------------------------------------------------------------------*/
  ab bsec /*-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
  ab esec =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-*/
  ab cbrem /*----
  ab cerem ----*/
endfunction

"-------------------------------------------------------------------------------
" UNIX Scripting specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadUnixScripts()
  "----- Mappings -----"
  map ` 0i# <Esc>j
  map ~ 02xj

  "----- Abreviations -----"
  ab perl# #!/usr/bin/perl
  ab ruby# #!/usr/bin/ruby
  ab python# #!/usr/bin/python
  ab brem #-----
  ab erem -----#
  ab pnd ################################################################################
  ab pndcom #------------------------------------------------------------------------------#
  ab pndsec #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#
endfunction

"-------------------------------------------------------------------------------
" HTML specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadHTML()
  "----- Abreviations -----"
  ab brem <!-- 
  ab erem --> 
  ab pnd <!-- ####################################################################### -->
  ab pndcom <!-- ----------------------------------------------------------------------  -->
  ab pndsec <!-- -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=- -->
endfunction

" filetype plugin on

"-------------------------------------------------------------------------------
" Ruby specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadRuby()
  map <leader>x :!clear; ./%<CR>

  let g:SuperTabDefaultCompletionType = 'context'
endfunction

"----- default to unix script commenting -----"
call s:loadUnixScripts()

autocmd VimEnter *.c,*.cpp,*.pc,*.h,*.pl,*.pm,*.plx,*.html,*.htm,*.css,*.java,*.cgi set cindent
autocmd VimEnter *.txt,*.rdoc set textwidth=80
autocmd VimEnter *.pc set filetype=c
autocmd VimEnter *.sql set filetype=plsql
autocmd VimEnter *.tt,*.tt2 set filetype=html
autocmd VimEnter *pm,*.pxl,*plx set filetype=perl
autocmd VimEnter *.css set filetype=css

autocmd FileType javascript call s:loadJavascripts()
autocmd FileType cpp call s:loadJavascripts()
autocmd FileType c call s:loadCSources()
autocmd FileType css call s:loadCSources()
autocmd FileType html call s:loadHTML()
autocmd FileType ruby call s:loadRuby()

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"----- Mappings -----"
map \| .j
map + <C-w>+
map - <C-w>-

"###############################################################################
" Colors
"###############################################################################
set background=dark

" Use "help hi" and "help group-name" for more information
" ------------------------------------------------------------------------------
hi Boolean        ctermfg=red     cterm=NONE
hi Comment        ctermfg=white   ctermbg=black cterm=bold
hi Constant       ctermfg=darkgrey   cterm=NONE
	hi String      ctermfg=darkgrey   cterm=NONE
	hi Character   ctermfg=red     cterm=NONE
	hi number      ctermfg=red     cterm=NONE
hi Identifier     ctermfg=green cterm=NONE 
" Statements
hi Statement      ctermfg=cyan cterm=NONE
	hi Conditional ctermfg=red
	hi Repeat      ctermfg=red
	hi Operator    ctermfg=yellow
	hi Keyword     ctermfg=cyan
hi PreProc        ctermfg=magenta cterm=NONE
hi Type           ctermfg=red
hi Special        ctermfg=yellow   cterm=NONE
hi SpecialKey     ctermfg=yellow   cterm=NONE
hi Statement      ctermfg=cyan cterm=NONE
hi Cursor         ctermfg=NONE ctermbg=cyan
hi ErrorMsg       ctermfg=white ctermbg=red 
hi NonText        ctermbg=black 
hi Normal         ctermfg=lightgrey ctermbg=Black
hi MatchParen     ctermfg=black ctermbg=darkgrey

hi perlStatementSub ctermfg=magenta cterm=NONE
hi perlMatchStartEnd ctermfg=magenta cterm=NONE
