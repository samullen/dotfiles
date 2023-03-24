"------------------------------------------------------------------------------"
" General
"------------------------------------------------------------------------------"
packadd minpac

call minpac#init()

" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Add other plugins here.
call minpac#add('vim-jp/syntax-vim-ex')
call minpac#add('elixir-editors/vim-elixir')
call minpac#add('mhinz/vim-mix-format')
call minpac#add('junegunn/fzf')
call minpac#add('junegunn/fzf.vim')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-projectionist')
call minpac#add('tpope/vim-rails')
call minpac#add('tpope/vim-surround')
call minpac#add('andymass/vim-matchup')
call minpac#add('pangloss/vim-javascript')
call minpac#add('godlygeek/tabular')
call minpac#add('ervandew/supertab')
call minpac#add('rust-lang/rust.vim')
call minpac#add('vim-scripts/YankRing.vim')
call minpac#add('SirVer/ultisnips')
call minpac#add('vimwiki/vimwiki')
call minpac#add('github/copilot.vim')

let g:nv_directory = '~/Library/Mobile Documents/iCloud~co~fluder~fsnotes/Documents'
let g:nv_show_preview = 1

syntax on

set autoread " automatically read files when they are changed outside of VIM.
set autowrite " automatically write to file only when editing multiple files
set backspace=indent,eol,start
set backupdir=~/tmp
set clipboard=unnamed
set complete-=i
set cpoptions=abABceFs$
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
set rulerformat=%40(%<%f%=[%l:%L,%v]%)
" set statusline
set shiftwidth=2
set shortmess-=S
set showcmd           " show line count in visual mode
set smartcase
set smarttab          " inteliigently add spaces to tab stop
set tabstop=2
set tags^=./.git/tags
set title
set wildmenu
set wildignore+=*.class,*.o,tmp/**
set wildmode=list:longest,list:full " for finding files when opening new frames
set wrapmargin=0

filetype plugin on

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
vnoremap <C-z> <C-a>

" .vimrc
nnoremap <leader>ev :split ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" shift-tab to create a tab character
inoremap <S-Tab> <C-V><Tab>

" Toggles spell
nnoremap <leader>ss :setlocal spell!<cr>

" Create tabs for all files in buffer
nnoremap <leader>p :argdo tabnew<cr>

nnoremap <leader>h :tabp<cr>
nnoremap <leader>l :tabn<cr>
nnoremap <leader>o :tabo<cr>
nnoremap <leader>x :tabc<cr>

nnoremap <leader>y :YRShow<cr>

" Easily traverse paragraphs w/ backspace and Enter
nnoremap <BS> {
onoremap <BS> {
vnoremap <BS> {

nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
vnoremap <CR> }

" FZF
nnoremap <leader>a :Rg<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>t :Tags<cr>
nnoremap <leader>gc :Commits<cr>

" SuperTab
" let g:SuperTabDefaultCompletionType = '<C-n>'

" UltiSnips
let g:UltiSnipsEditSplit="horizontal"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Valt
nnoremap <leader>v :NV<CR>

" Fugitive remaps
nnoremap <leader>gb :Git blame<cr>
nnoremap <leader>gc :Git commit<cr>
nnoremap <leader>gl :Git log<cr>

" Matchup settings
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_deferred_show_delay = 200
let g:matchup_matchparen_deferred_hide_delay = 300

" Wrap visual blocks in specified characters
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>
vnoremap <leader>' <esc>`>a'<esc>`<i'<esc>
vnoremap <leader>` <esc>`>a`<esc>`<i`<esc>
vnoremap <leader>( <esc>`>a)<esc>`<i(<esc>
vnoremap <leader>[ <esc>`>a]<esc>`<i[<esc>
vnoremap <leader>{ <esc>`>a}<esc>`<i{<esc>
vnoremap <leader>% <esc>`>a %><esc>`<i<% <esc>
vnoremap <leader>%= <esc>`>a %><esc>`<i<%= <esc>

" vim-markdown settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2

let g:ruby_path = system('echo $HOME/.asdc/shims') " speed up vim start up using asdf

" vimwiki settings
let g:vimwiki_list = [{'path': '~/Library/Mobile Documents/iCloud~co~fluder~fsnotes/Documents', 'syntax': 'markdown', 'ext': '.md'}]
nnoremap wlx :VimwikiToggleListItem<cr>

" Disable vimwiki tabs
let g:vimwiki_table_mappings = 0

augroup VimwikiRemaps
    autocmd!
    " unmap tab in insert mode
    autocmd Filetype vimwiki silent! iunmap <buffer> <Tab>
    " remap table tab mappings to M-n M-p
    autocmd Filetype vimwiki inoremap <silent><expr><buffer> <M-n> vimwiki#tbl#kbd_tab()
    autocmd Filetype vimwiki inoremap <silent><expr><buffer> <M-p> vimwiki#tbl#kbd_shift_tab()
    " on enter if completion is open, complete first element otherwise use
    " default vimwiki mapping
    autocmd Filetype vimwiki inoremap <silent><expr><buffer> <cr> pumvisible() ? coc#_select_confirm()
                              \: "<C-]><Esc>:VimwikiReturn 1 5<CR>"
augroup end

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

fun! TrimWhitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun

autocmd BufWritePre * call TrimWhitespace()

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

colorscheme samullen

source ~/.vim/plugins/statusline.vim
