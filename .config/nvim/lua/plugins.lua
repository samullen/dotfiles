return {
  "tpope/vim-sensible",
  "vim-jp/syntax-vim-ex",
  "elixir-editors/vim-elixir",
  "mhinz/vim-mix-format",
  "junegunn/fzf",
  "junegunn/fzf.vim",
  "tpope/vim-commentary",
  "tpope/vim-fugitive",
  "tpope/vim-projectionist",
  "tpope/vim-rails",
  "tpope/vim-surround",
  "andymass/vim-matchup",
  "pangloss/vim-javascript",
  "ervandew/supertab",
  "vim-scripts/YankRing.vim",
  {
    "SirVer/ultisnips",
    init = function()
      vim.g.UltiSnipsEditSplit = "horizontal"
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<tab>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<s-tab>"
    end
  },
  {
    "vimwiki/vimwiki",
    init = function()
      vim.g.vimwiki_list = {{
        path = '~/projects/notes',
        syntax = 'markdown',
        ext = '.md',
      }}
      vim.keymap.set("n", "wlx", "<cmd>VimwikiToggleListItem<cr>", { desc = "Toggle List Item" })

      local augroup = vim.api.nvim_create_augroup
      local autocmd = vim.api.nvim_create_autocmd

      augroup("VimwikiRemaps", { clear = true })
      autocmd({"FileType"}, {
        group = "VimwikiRemaps",
        pattern = "vimwiki",
        command = "silent! iunmap <buffer> <Tab>"
      })
      autocmd("FileType", {
        group = "VimwikiRemaps",
        pattern = "vimwiki",
        command = "inoremap <silent><expr><buffer> <M-n> vimwiki#tbl#kbd_tab()"
      })
      autocmd("FileType", {
        group = "VimwikiRemaps",
        pattern = "vimwiki",
        command = "inoremap <silent><expr><buffer> <M-p> vimwiki#tbl#kbd_shift_tab()"
      })
      autocmd("FileType", {
        group = "VimwikiRemaps",
        pattern = "vimwiki",
        command = "inoremap <silent><expr><buffer> <cr> pumvisible() ? coc#_select_confirm() : \"<C-]><Esc>:VimwikiReturn 1 5<CR>\""
      })
    end,
  },
  {
    "github/copilot.vim",
    init = function()
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_filetypes = { markdown = false, vimwiki = false }
      vim.keymap.set('i', '<C-J>', 'copilot#Accept("\\<CR>")', {
        expr = true,
        replace_keycodes = false
      })
      vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-word)', {
        expr = true,
      })
      vim.keymap.set('i', '<C-M>', '<Cmd>Copilot panel<cr>')
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    init = function()
      vim.g.copilot_chat_filetypes = { markdown = false, vimwiki = false }
      vim.keymap.set("n", "<leader>cc", "<cmd>CopilotChatToggle<cr>", { desc = "Open Copilot Chat" })
      vim.keymap.set("v", "<leader>cc", "<cmd>CopilotChat <input>?<cr>", { desc = "Open Copilot Chat" })
      vim.keymap.set("n", "<localleader>m", "<cmd>CopilotChatModels<cr>", { desc = "View/select available models" })
      vim.keymap.set("n", "<localleader>p", "<cmd>CopilotChatPrompts<cr>", { desc = "View/select prompt templates" })
      vim.keymap.set("n", "<localleader>r", "<cmd>CopilotChatReset<cr>", { desc = "Reset chat window" })
      vim.keymap.set("n", "<localleader>s", "<cmd>CopilotChatStop<cr>", { desc = "Stop current output" })
    end,

    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
      window = {
        layout = "horizontal",
      },
    },
  },
  "nickeb96/fish.vim",
  {
    "samullen/valt",
    init = function()
      vim.g.nv_directory = '~/projects/notes'
      vim.g.nv_show_preview = 1
    end
  }
}
