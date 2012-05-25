" set t_kb=^h<BS> alsdfj
" fiet t_Sb=xdel

"set t_Co=16
set t_Co=256
" set t_AF=[3%dm
" set t_AB=[4%dm
" set t_Sf=[3%dm
" set t_Sb=[4%dm
" set t_fs=

"------------------------------------------------------------------------------"
" General
"------------------------------------------------------------------------------"
set history=500 

filetype plugin indent on

set autoread " automatically read files when they are changed outside of VIM.

let mapleader = ','

set autowrite " automatically write to file only when editing multiple files
set backspace=""
set magic            " for regular expressions
set complete-=i
set nocompatible     " do not make VIM compatible with VI
set cpoptions=aABceFs$   " compatability options. Must come after nocompatible
set expandtab        " insert appropriate number of spaces with a tab
set filetype=on      " Enable file detection
set ignorecase       " ignore case when searching
set smartcase        " override ignore case if search patter contains caps
set noai
set nobackup
set nohlsearch   " do not highlight search strings
set nolazyredraw " don't redraw while executing macros
set noshowmatch  " Do not bounce to matching bracket
set title             " Try to output to term titlebar
set novisualbell
set ruler
set rulerformat=%40(%<%f%=[%l:%L,%v]%)
set shiftwidth=2
set showcmd " display # of characters/lines/area are visually highlighted
set tabstop=2
set textwidth=0
set wildignore+=*.class,*.o
set wildmode=list:longest,list:full " for finding files when opening new frames
set wrapmargin=0
set writebackup
set smarttab          " inteliigently add spaces to tab stop
set formatoptions=tcq " autowrap text, comments, and use GQ with commengs.
set formatoptions-=or " Do not auto insert comment leader 
set pastetoggle=<f2>
set clipboard=unnamed

syntax on

" Toggles spell
map <leader>ss :setlocal spell!<cr> 

map <leader>n :tabn<cr>
map <leader>h :tabp<cr>
map <leader>o :tabo<cr>
map <leader>c :tabc<cr>
map <leader>a :tabnew<cr>:Ack<space>
map <leader>y :YRShow<cr>
map <leader>rt :!ctags -R `bundle show rails`/../* *<cr><cr>
map <leader>t :CtrlP<cr>
map <leader>b :CtrlPBuffer<cr>

"----- default to unix script commenting -----"
autocmd VimEnter *.c,*.cpp,*.pc,*.h,*.pl,*.pm,*.plx,*.html,*.htm,*.css,*.java,*.cgi set cindent
autocmd VimEnter *.txt,*.rdoc,*.markdown set textwidth=80
autocmd VimEnter *.pc set filetype=c
autocmd VimEnter *.sql set filetype=plsql
autocmd VimEnter *.tt,*.tt2 set filetype=html
autocmd VimEnter *pm,*.pxl,*plx set filetype=perl
autocmd VimEnter *.css set filetype=css
autocmd VimEnter *.thor set filetype=ruby
autocmd VimEnter *.m set filetype=objc
autocmd Bufread,BufNewFile *.feature set filetype=gherkin
autocmd! Syntax gherkin source ~/.vim/syntax/cucumber.vim

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"----- Mappings -----"
map \| .j
map + <C-w>+
map - <C-w>-

command! Rroutes :e config/routes.rb
command! RTroutes :tabe config/routes.rb

"----- CommandT Specifc settings -----"
" let g:CommandTCancelMap='<Esc>'

"###############################################################################
" Functions
"###############################################################################

"----- simple same-file Tab completion -----"
function InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"     
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>

"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#
" Functions relating to filetypes
"-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#

"-------------------------------------------------------------------------------
" UNIX Scripting specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadUnixScripts()
  "----- Mappings -----"
  map ` 0i# <Esc>j
  map ~ 02xj

  "----- Abreviations -----"
  ab perl# #!/usr/bin/perl
  ab ruby# #!/usr/bin/env ruby
  ab python# #!/usr/bin/python
  ab brem #-----
  ab erem -----#
  ab pnd ################################################################################
  ab pndcom #------------------------------------------------------------------------------#
  ab pndsec #-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=#
endfunction
call s:loadUnixScripts()

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
autocmd FileType cpp call s:loadJavascripts()
autocmd FileType javascript call s:loadJavascripts()

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
autocmd FileType css call s:loadCSources()
autocmd FileType c call s:loadCSources()

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
autocmd FileType html call s:loadHTML()

"-------------------------------------------------------------------------------
" Ruby specific abbrs and mappings
"-------------------------------------------------------------------------------
function! s:loadRuby()
  map <leader>x :!clear; ./%<CR>
endfunction
autocmd FileType ruby call s:loadRuby()

"   colorscheme solarized
colorscheme samullen
