filetype plugin indent on

"------------------------------------------------------------------------------"
" General
"------------------------------------------------------------------------------"
set history=500 

" Begin Vundle plugin
set nocompatible     " do not make VIM compatible with VI
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-commentary'
Plugin 'kana/vim-textobj-user'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'vim-scripts/ctrlp.vim'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'reedes/vim-wordy'
Plugin 'rking/ag.vim'
call vundle#end()
filetype plugin indent on " required

" End Vundle plugin

set autoread " automatically read files when they are changed outside of VIM.

let mapleader = ','

set autowrite " automatically write to file only when editing multiple files
set backspace=""
set magic            " for regular expressions
set complete-=i
set cpoptions=abABceFs$   " compatability options. Must come after nocompatible
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
set formatoptions=tcq " autowrap text, comments, and use GQ with comments.
set formatoptions-=o  " Do not auto insert comment leader 
set pastetoggle=<f2>
set clipboard=unnamed

set grepprg=/usr/local/bin/ag\ --nogroup

syntax on

" map ctrl-p|n to go up and down in command-mode history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

inoremap ;l <esc>

" remap ctrl-a to ctrl-z for incrementing
nnoremap <C-z> <C-a>

" split window to edit .vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>

" reload .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" shift-tab to create a tab character
inoremap <S-Tab> <C-V><Tab>

" Toggles spell
nnoremap <leader>ss :setlocal spell!<cr> 

" Create tabs for all files in buffer
nnoremap <leader>bt :argdo tabnew<cr>

nnoremap <leader>n :tabn<cr>
nnoremap <leader>h :tabp<cr>
nnoremap <leader>o :tabo<cr>
nnoremap <leader>x :tabc<cr>
nnoremap <leader>r :!ruby %<cr>

" let g:ackprg = 'ag --nogroup' " use Ag instead of Ack
nnoremap <leader>a :tabnew<cr>:Ag<space>

nnoremap <leader>y :YRShow<cr>
nnoremap <leader>rt :!ctags -R `bundle show rails`/../* *<cr><cr>

nnoremap <leader>t :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

" Wrap visual blocks in specified characters
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a"<esc>`<i'<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>% <esc>`>a %><esc>`<i<% <esc>
vnoremap <leader>%= <esc>`>a %><esc>`<i<%= <esc>

let g:ruby_path = system('echo $HOME/.rbenv/shims') " speed up vim start up using RVM

" Using NoWordy
if !&wildcharm | set wildcharm=<C-z> | endif
execute 'nnoremap <leader>w :Wordy<space>'.nr2char(&wildcharm)

"----- default to unix script commenting -----"
augroup onload
  autocmd!
  autocmd BufRead,BufNewFile *.c,*.cpp,*.pc,*.h,*.pl,*.pm,*.plx,*.html,*.htm,*.css,*.java,*.cgi set cindent
  autocmd BufRead,BufNewFile *.txt,*.rdoc,*.markdown,*.md set textwidth=80
  autocmd BufRead,BufNewFile *.pc set filetype=c
  autocmd BufRead,BufNewFile *.sql set filetype=plsql
  autocmd BufRead,BufNewFile *.tt,*.tt2 set filetype=html
  autocmd BufRead,BufNewFile *pm,*.pxl,*plx set filetype=perl
  autocmd BufRead,BufNewFile *.css set filetype=css
  autocmd BufRead,BufNewFile *.thor set filetype=ruby
  autocmd BufRead,BufNewFile *.m set filetype=objc
  autocmd BufRead,BufNewFile *.md,*.markdown set filetype=markdown
  autocmd BufRead,BufNewFile *.feature set filetype=gherkin
  autocmd BufRead,BufNewFile * setlocal formatoptions+=tcqr
  autocmd BufRead,BufNewFile * setlocal formatoptions-=o
augroup END

augroup filetypes
  autocmd!
  " Comment out blocks of code
  autocmd FileType c,cpp,javascript let b:comment_leader = '// '
"  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType vim              let b:comment_leader = '" '
augroup END

"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"----- Mappings -----"
nnoremap + <C-w>+
nnoremap - <C-w>-

command! Rroutes :e config/routes.rb
command! RTroutes :tabe config/routes.rb
command! Rgemfile :e Gemfile
command! RTgemfile :tabe Gemfile

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

colorscheme samullen
