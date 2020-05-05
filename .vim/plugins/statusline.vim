" `:h status line` to find configuration
" `:hi` will return list of current terms and values

hi Base ctermbg=0 ctermfg=6 guibg=#292d3e guifg=#929dcb
hi Mode ctermbg=39 ctermfg=232 cterm=bold guibg=#82aaff guifg=#181824 gui=bold
hi Git ctermbg=12 ctermfg=232 guibg=#292d3e guifg=#929dcb
" hi Filetype ctermbg= ctermfg= guibg=#292d3e guifg=#929dcb
" hi LineCol ctermbg= ctermfg= cterm=bold guibg=#82aaff guifg=#181824 gui=bold

let g:currentmode={
  \'n' : 'Normal ',
  \'no' : 'N·Operator Pending ',
  \'v' : 'Visual ',
  \'V' : 'V·Line ',
  \'^V' : 'V·Block ',
  \'s' : 'Select ',
  \'S': 'S·Line ',
  \'^S' : 'S·Block ',
  \'i' : 'Insert ',
  \'R' : 'Replace ',
  \'Rv' : 'V·Replace ',
  \'c' : 'Command ',
  \'cv' : 'Vim Ex ',
  \'ce' : 'Ex ',
  \'r' : 'Prompt ',
  \'rm' : 'More ',
  \'r?' : 'Confirm ',
  \'!' : 'Shell ',
  \'t' : 'Terminal '
  \}

" Get current mode
function! ModeCurrent() abort
  let l:modecurrent = mode()
  let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V·Block '))
  let l:current_status_mode = l:modelist
  return l:current_status_mode
endfunction

" Get current git branch
function! GitBranch(git)
  if a:git == ""
    return '-'
  else
    return "\u16A0 " . a:git
  endif
endfunction

" Get current filetype
function! CheckFT(filetype)
  if a:filetype == ''
    return '-'
  else
    return tolower(a:filetype)
  endif
endfunction

function! ActiveLine()
  let statusline = ""

  " Current mode
  let statusline .= "%#Mode# %{ModeCurrent()}"

  " Current git branch
  let statusline .= "%#Git# %{GitBranch(fugitive#head())} "

  let statusline .= "%#Base# %t %m"

  let statusline .= "%="

  let statusline .= "%{CheckFT(&filetype)} "

  " Current line and column
  let statusline .= "%#Git# %p%% %#Mode# %l:%L+%v "

  return statusline
endfunction

function! InactiveLine()
  let statusline = ""
  let statusline .= "%#Base#"

  " Full path of the file
  let statusline .= "%#LineCol# %F "

  return statusline
endfunction

augroup Statusline
  autocmd!
  autocmd WinEnter,BufEnter * setlocal statusline=%!ActiveLine()
  autocmd WinLeave,BufLeave * setlocal statusline=%!InactiveLine()
augroup END

set laststatus=2
