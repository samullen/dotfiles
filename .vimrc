filetype plugin indent on

"------------------------------------------------------------------------------"
" General
"------------------------------------------------------------------------------"

" Begin Vundle plugin
set nocompatible     " do not make VIM compatible with VI
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'isRuslan/vim-es6'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'mxw/vim-jsx'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'pangloss/vim-javascript'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'SirVer/ultisnips'
Plugin 'w0rp/ale'

Plugin 'samullen/valt'
let g:nv_directory = '~/Dropbox/Apps/Notational Data'
let g:nv_show_preview = 1

call vundle#end()
filetype plugin indent on

" End Vundle plugin
syntax on

set autoread " automatically read files when they are changed outside of VIM.
set autowrite " automatically write to file only when editing multiple files
set backspace=indent,eol,start
set backupdir=~/tmp
set clipboard=unnamed
set complete-=i
set cpoptions=abABceFs$   " compatability options. Must come after nocompatible
set directory=~/tmp
set expandtab
set formatoptions-=o
set formatoptions=tcqj
set grepprg=/usr/local/bin/ag\ --nogroup\ --column
set grepformat=%f:%l:%c:%m
set history=500
set ignorecase
set lazyredraw
set magic
set mouse=h " only use mouse in help files
set noai
set nobackup
set nohlsearch
set noshowmatch
set nrformats= " force numbers to use base-10
set pastetoggle=<f2>
set ruler
set rulerformat=%40(%<%f%=[%l,%v:%L]%)
set shiftwidth=2
set smartcase
set smarttab          " inteliigently add spaces to tab stop
set tabstop=2
set title
set wildmenu
set wildignore+=*.class,*.o,tmp/**
set wildmode=list:longest,list:full " for finding files when opening new frames
set wrapmargin=0

match ErrorMsg '\s\+$'

let mapleader = ','

" map ctrl-p|n to go up and down in command-mode history
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" Expand path to active file directory in command mode
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

inoremap ;l <Esc>

" remap ctrl-a to ctrl-z for incrementing
nnoremap <C-z> <C-a>

" .vimrc
nnoremap <leader>ev :split $MYVIMRC<cr>
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

nnoremap <leader>y :YRShow<cr>

" Easily traverse paragraphs w/ backspace and Enter
nnoremap <BS> {
onoremap <BS> {
vnoremap <BS> {

nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
vnoremap <CR> }

" ALE

let g:ale_enabled = 0
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
nnoremap <leader>al :ALELint<cr>
nnoremap <leader>at :ALEToggle<cr>

" FZF
nnoremap <leader>a :Ag<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>t :Tags<cr>
nnoremap <leader>gc :Commits<cr>

" UltiSnips
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsExpandTrigger="<tab>"

" Valt
nnoremap <leader>v :NV<CR>

" Fugitive remaps
nnoremap <leader>gb :Gblame<cr>

nnoremap <leader>wc g<C-g>

" Wrap visual blocks in specified characters
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>` <esc>`>a`<esc>`<i`<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>% <esc>`>a %><esc>`<i<% <esc>
vnoremap <leader>%= <esc>`>a %><esc>`<i<%= <esc>

let g:ruby_path = system('echo $HOME/.rbenv/shims') " speed up vim start up using RVM

"----- default to unix script commenting -----"
augroup onload
  autocmd!
  autocmd BufRead,BufNewFile *.c,*.cpp,*.pc,*.h,*.pl,*.pm,*.plx,*.html,*.htm,*.css,*.java,*.cgi set smartindent
  autocmd BufRead,BufNewFile *.txt,*.rdoc,*.markdown,*.md set textwidth=80
  autocmd BufRead,BufNewFile *.pc set filetype=c
  autocmd BufRead,BufNewFile *.sql set filetype=plsql
  autocmd BufRead,BufNewFile *.css,*.scss set filetype=css
  autocmd BufRead,BufNewFile *.thor,*.rake set filetype=ruby
  autocmd BufRead,BufNewFile *.m set filetype=objc
  autocmd BufRead,BufNewFile *.md,*.markdown set filetype=markdown
  autocmd BufRead,BufNewFile * setlocal formatoptions+=tcqr
  autocmd BufRead,BufNewFile * setlocal formatoptions-=o
augroup END

augroup filetypes
  autocmd!
  " Comment out blocks of code
  autocmd FileType c,cpp,javascript let b:comment_leader = '// '
"  autocmd FileType sh,ruby,python   let b:comment_leader = '# '
  autocmd FileType vim              let b:comment_leader = '" '
  
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  " autocmd FileType ruby,eruby,yaml setlocal colorcolumn=81
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
  autocmd FileType eruby UltiSnipsAddFiletypes eruby.rails.ruby
augroup END

runtime macros/matchit.vim

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
"noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
"noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"----- Mappings -----"
nnoremap + <C-w>+
nnoremap - <C-w>-

command! Eroutes :e config/routes.rb
command! Troutes :tabe config/routes.rb
command! Egemfile :e Gemfile
command! Tgemfile :tabe Gemfile

"###############################################################################
" Functions
"###############################################################################

"----- simple same-file Tab completion -----"
" function InsertTabWrapper()
"   let col = col('.') - 1
"   if !col || getline('.')[col - 1] !~ '\k'
"     return "\<tab>"     
"   else
"     return "\<c-p>"
"   endif
" endfunction
" inoremap <tab> <c-r>=InsertTabWrapper()<cr>

colorscheme samullen
