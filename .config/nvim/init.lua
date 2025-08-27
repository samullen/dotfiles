-- init.lua

require("config.lazy")

-- Options
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.backspace = "indent,eol,start"
vim.opt.backupdir = vim.fn.stdpath("state") .. "/tmp"
vim.opt.clipboard = "unnamed"
vim.cmd([["complete-=i"]])
vim.opt.cpoptions = "abABceFs_$"
vim.opt.directory = vim.fn.stdpath("state") .. "/tmp"
vim.opt.expandtab = true
vim.opt.formatoptions = "tcqj"
vim.opt.grepprg = "rg --vimgrep --no-heading --smart-case"
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.history = 500
vim.opt.ignorecase = true
vim.opt.lazyredraw = true
vim.opt.magic = true
vim.opt.mouse = "h"
vim.opt.ai = false
vim.opt.backup = false
vim.opt.hlsearch = false
vim.opt.showmatch = false
vim.opt.nrformats = "" -- force numbers to use base-10
vim.opt.ruler = true
vim.opt.rulerformat = "%40(%<%f%=[%l:%L,%v]%)"
vim.opt.shiftwidth = 2
vim.cmd([["set shortmess-=S"]])
vim.opt.showcmd = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.tabstop = 2
vim.cmd([["set tags^=./.git/tags"]])
vim.opt.title = true
vim.opt.wildmenu = true
vim.cmd([["set wildignore+=*.class,*.o,tmp/**"]])
vim.opt.wildmode = "list:longest,list:full" -- for finding files when opening new frames
vim.opt.wrapmargin = 0
vim.opt.completeopt = "menuone,noinsert,noselect,popup"

-- vim.opt.cursorline = true
-- vim.opt.scrolloff = 5
-- vim.opt.hlsearch = true
-- vim.opt.incsearch = true
-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true
-- vim.opt.showmatch = true
-- vim.opt.showmode = false
-- vim.opt.showcmd = true
-- vim.opt.ruler = true
-- vim.opt.laststatus = 2
-- vim.opt.encoding = 'utf-8'
-- vim.opt.fileencoding = 'utf-8'
-- vim.opt.autoread = true
-- vim.opt.autowrite = true
-- vim.opt.clipboard = 'unnamedplus'
-- vim.opt.completeopt = 'menuone,noselect'
-- vim.opt.conceallevel = 0
-- vim.opt.confirm = true
-- vim.opt.expandtab = true
-- vim.opt.shiftwidth = 2
-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2
-- vim.opt.smartindent = true
-- vim.opt.autoindent = true
-- vim.opt.wrap = false
-- vim.opt.undofile = true
-- vim.opt.undodir = vim.fn.stdpath('config') .. '/undodir'
-- vim.opt.backup = false
-- vim.opt.writebackup = false
-- vim.opt.swapfile = false
-- vim.opt.splitright = true
-- vim.opt.splitbelow = true
-- vim.opt.wildmenu = true
-- vim.opt.wildmode = 'longest,list,full'
-- vim.opt.visualbell = true
-- vim.opt.errorbells = false
-- vim.opt.hidden = true
-- vim.opt.pumheight = 10
-- vim.opt.cmdheight = 1
-- vim.opt.updatetime = 300
-- vim.opt.shortmess:append('c')
-- vim.opt.signcolumn = 'yes'
-- vim.opt.termguicolors = true
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '▸ ', trail = '·', nbsp = '␣' }
-- vim.opt.foldmethod = 'marker'
-- vim.opt.foldlevel = 99
-- vim.opt.foldlevelstart = 99
-- vim.opt.foldenable = true
-- vim.opt.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize'
-- vim.opt.formatoptions = 'jqlnt'

vim.cmd([[
filetype plugin on
match ErrorMsg '\s\+$'
]])

-- Leader key
vim.g.mapleader = ','
vim.g.maplocalleader = "\\"

-- Key Mappings
local map = vim.keymap.set

-- ctrl-p and ctrl-n in command mode to navigate history
map("c", "<C-p>", "<Up>")
map("c", "<C-n>", "<Down>")

-- Expand path to active file directory in command mode
-- cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

map("i", ";l", "<Esc>")

-- remap ctrl-a to ctrl-z for incrementing
map("n", "<C-z>", "<C-a>")
map("v", "<C-z>", "<C-a>")

-- .vimrc
map("n", "<leader>ev", ":split ~/.config/nvim/init.lua<cr>")
map("n", "<leader>sv", ":source ~/.config/nvim/init.lua<cr>")

-- shift-tab to create a tab character
map("i", "<S-Tab>", "<C-V><Tab>")

-- Toggles spell
map("n", "<leader>ss", ":setlocal spell!<cr>")

-- Create tabs for all files in buffer
map("n", "<leader>p", ":argdo tabnew<cr>")

map("n", "<leader>h", ":tabp<cr>")
map("n", "<leader>l", ":tabn<cr>")
map("n", "<leader>o", ":tabo<cr>")
map("n", "<leader>x", ":tabc<cr>")

map("n", "<leader>y", ":YRShow<cr>")

-- Easily traverse paragraphs w/ backspace and Enter
map("n", "<BS>", "{")
map("o", "<BS>", "{")
map("v", "<BS>", "{")

vim.cmd([[
  nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
  onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
  vnoremap <CR> }
]])

-- FZF
map("n", "<leader>a", ":Rg<cr>")
map("n", "<leader>b", ":Buffers<cr>")
map("n", "<leader>f", ":Files<cr>")
map("n", "<leader>t", ":Tags<cr>")
map("n", "<leader>gc", ":Commits<cr>")

-- CopilotChat
map("n", "<leader>cc", ":CopilotChatToggle<cr>")

-- SuperTab
-- let g:SuperTabDefaultCompletionType = '<C-n>'

-- Valt
map("n", "<leader>v", ":NV<CR>")

-- Fugitive remaps
map("n", "<leader>gb", ":Git blame<cr>")
map("n", "<leader>gc", ":Git commit<cr>")
map("n", "<leader>gl", ":Git log<cr>")

-- Matchup settings
vim.g.matchup_matchparen_deferred = 1
vim.g.matchup_matchparen_deferred_show_delay = 200
vim.g.matchup_matchparen_deferred_hide_delay = 300

-- Wrap visual blocks in specified characters
map("v", '<leader>k', '<esc>`>a"<esc>`<i"<esc>')
map("v", "<leader>'", "<esc>`>a'<esc>`<i'<esc>")
map("v", "<leader>`", "<esc>`>a`<esc>`<i`<esc>")
map("v", "<leader>(", "<esc>`>a)<esc>`<i(<esc>")
map("v", "<leader>[", "<esc>`>a]<esc>`<i[<esc>")
map("v", "<leader>{", "<esc>`>a}<esc>`<i{<esc>")
map("v", "<leader>%", "<esc>`>a %><esc>`<i<% <esc>")
map("v", "<leader>%=", "<esc>`>a %><esc>`<i<%= <esc>")

-- vim-markdown settings
vim.g.vim_markdown_folding_disabled = 1
vim.g.vim_markdown_new_list_item_indent = 2

vim.g.ruby_path = "~/.asdf/shims" -- speed up vim start up using asdf

---

-- vim-mix-format
vim.g.mix_format_on_save = 1

-- vim-javascript-syntax
vim.g.javascript_plugin_jsdoc = 1
vim.g.javascript_plugin_flow = 1

-- emmet-vim
vim.g.user_emmet_leader_key = '<C-Z>'

-- General
-- map('n', '<leader>w', ':w<CR>')
-- map('n', '<leader>q', ':q<CR>')
-- map('n', '<leader>Q', ':qa<CR>')
-- map('n', '<C-s>', ':w<CR>')
-- map('i', '<C-s>', '<Esc>:w<CR>a')
-- map('n', '<leader>e', ':NERDTreeToggle<CR>')
-- map('n', '<leader>b', ':Buffers<CR>')
-- map('n', '<leader>p', ':Files<CR>')
-- map('n', '<leader>P', ':GFiles<CR>')
-- map('n', '<leader>ps', ':Rg<CR>')
-- map('n', '<leader>h', ':History<CR>')
-- map('n', '<leader>l', ':Lines<CR>')
-- map('n', '<leader>c', ':Commits<CR>')
-- map('n', '<leader>C', ':BCommits<CR>')
-- map('n', '<leader>t', ':Tags<CR>')
-- map('n', '<leader>T', ':BTags<CR>')
-- map('n', '<leader>s', ':Snippets<CR>')
-- map('n', '<leader>H', ':Helptags<CR>')
-- map('n', '<leader>gs', ':Gstatus<CR>')
-- map('n', '<leader>gd', ':Gdiff<CR>')
-- map('n', '<leader>gc', ':Gcommit<CR>')
-- map('n', '<leader>gb', ':Gblame<CR>')
-- map('n', '<leader>gl', ':Glog<CR>')
-- map('n', '<leader>gp', ':Gpush<CR>')
-- map('n', '<leader>gP', ':Gpull<CR>')
-- map('n', '<leader>gw', ':Gwrite<CR>')
-- map('n', '<leader>gr', ':Gremove<CR>')
-- map('n', '<leader>gg', ':GitGutterToggle<CR>')
-- map('n', '<leader>gh', ':GitGutterNextHunk<CR>')
-- map('n', '<leader>gH', ':GitGutterPrevHunk<CR>')
-- map('n', '<leader>gs', ':GitGutterStageHunk<CR>')
-- map('n', '<leader>gu', ':GitGutterUndoHunk<CR>')
-- map('n', '<leader>v', ':vsplit<CR>')
-- map('n', '<leader>S', ':split<CR>')
-- map('n', '<C-h>', '<C-w>h')
-- map('n', '<C-j>', '<C-w>j')
-- map('n', '<C-k>', '<C-w>k')
-- map('n', '<C-l>', '<C-w>l')
-- map('n', '<leader><space>', ':noh<CR>')
-- map('n', 'Y', 'y$')
-- map('n', 'J', 'mzJ`z')
-- map('n', '<C-d>', '<C-d>zz')
-- map('n', '<C-u>', '<C-u>zz')
-- map('n', 'n', 'nzzzv')
-- map('n', 'N', 'Nzzzv')
-- map('x', '<leader>p', '"_dP')
-- map('n', '<leader>y', '"+y')
-- map('v', '<leader>y', '"+y')
-- map('n', '<leader>d', '"_d')
-- map('v', '<leader>d', '"_d')
-- map('i', '<C-c>', '<Esc>')
-- map('n', 'Q', '<nop>')
-- map('n', '<leader>ca', ':Copilot<CR>')
-- map('n', '<leader>ce', ':CopilotChat<CR>')
-- map('n', '<leader>cf', ':CopilotChat a new chat<CR>')
-- map('n', '<leader>ct', ':CopilotChat tests<CR>')
-- map('n', '<leader>cd', ':CopilotChat docs<CR>')
-- map('n', '<leader>cx', ':CopilotChat explain<CR>')
-- map('n', '<leader>cr', ':CopilotChat review<CR>')
-- map('n', '<leader>cn', ':CopilotChat name<CR>')
-- map('n', '<leader>ci', ':CopilotChat issue<CR>')
-- map('n', '<leader>cs', ':CopilotChat /<CR>')
-- map('n', '<leader>cc', ':CopilotChatCommit<CR>')
-- map('n', '<leader>ccs', ':CopilotChatCommitStaged<CR>')

-- Autocmds
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augroup("onload", { clear = true })
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.c,*.cpp,*.pc,*.h,*.pl,*.pm,*.plx,*.html,*.htm,*.css,*.java,*.cgi",
  command = "set smartindent"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.txt,*.rdoc,*.markdown,*.md",
  command = "set textwidth=80"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.pc",
  command = "set filetype=c"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.sql",
  command = "set filetype=plsql"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.css,*.scss",
  command = "set filetype=css"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.thor,*.rake",
  command = "set filetype=ruby"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.m",
  command = "set filetype=objc"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.md,*.markdown",
  command = "set filetype=markdown"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*",
  command = "setlocal formatoptions+=tcqr"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*",
  command = "setlocal formatoptions-=o"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "*.eex,*.heex,*.leex,*.sface,*.lexs",
  command = "set filetype=eelixir"
})
autocmd({"BufRead","BufNewFile"}, {
  group = "onload",
  pattern = "mix.lock",
  command = "set filetype=elixir"
})

function TrimWhitespace()
  local save = vim.fn.winsaveview()
  vim.cmd([[%s/\s\+$//e]])
  vim.fn.winrestview(save)
end

autocmd('BufWritePre', {
  group = augroup('trim_whitespace', { clear = true }),
  pattern = '*',
  callback = TrimWhitespace,
})

augroup("filetypes", { clear = true })
autocmd("FileType", {
  group = "filetypes",
  pattern = "c,cpp,javascript,typescript",
  command = "let b:comment_leader = '// '"
})

-- local filetype_group = augroup('filetype_settings', { clear = true })
-- autocmd('BufWritePre', {
--   group = filetype_group,
--   pattern = '*.js,*.jsx,*.ts,*.tsx',
--   command = 'silent! EslintFix',
-- })

-- autocmd('BufWritePre', {
--   group = filetype_group,
--   pattern = '*.rb',
--   command = 'silent! Rubocop',
-- })

-- autocmd('BufWritePre', {
--   group = filetype_group,
--   pattern = '*.ex,*.exs',
--   command = 'silent! MixFormat',
-- })

-- Colorscheme
vim.cmd('colorscheme ghdark')

