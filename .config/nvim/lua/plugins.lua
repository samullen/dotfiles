-- use :map to see a list of all mappings

return {
  "tpope/vim-sensible",
  "vim-jp/syntax-vim-ex",
  "elixir-editors/vim-elixir",
  "junegunn/fzf",
  "junegunn/fzf.vim",
  "tpope/vim-commentary",
  "tpope/vim-fugitive",
  "tpope/vim-projectionist",
  "tpope/vim-rails",
  "tpope/vim-surround",
  "andymass/vim-matchup",
  "pangloss/vim-javascript",
  "vim-scripts/YankRing.vim",
  {
    "ervandew/supertab",

    init = function()
      -- vim.g.SuperTabDefaultCompletionType = '<C-n>'
      -- vim.g.SuperTabDefaultCompletionType = '<C-n>'

      vim.g.SuperTabDefaultCompletionType = 'context'
    end,
  },
  {
    "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp",

    init = function()
      local ls = require("luasnip")

      require("luasnip.loaders.from_snipmate").lazy_load()

      vim.keymap.set({"i"}, "<C-K>", function()
        ls.expand()
      end, {silent = true})
      vim.keymap.set({"i", "s"}, "<C-L>", function()
        ls.jump(1)
      end, {silent = true})
      vim.keymap.set({"i", "s"}, "<C-H>", function()
        ls.jump(-1)
      end, {silent = true})

      vim.keymap.set({"i", "s"}, "<C-E>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, {silent = true})
    end,
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
        command = "inoremap <silent><expr><buffer> <M-N> vimwiki#tbl#kbd_tab()"
      })
      autocmd("FileType", {
        group = "VimwikiRemaps",
        pattern = "vimwiki",
        command = "inoremap <silent><expr><buffer> <M-P> vimwiki#tbl#kbd_shift_tab()"
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
      vim.keymap.set('i', '<C-Y>', 'copilot#AcceptWord()', {
        expr = true,
      })
      vim.keymap.set('i', '<C-P>', '<Cmd>Copilot panel<cr>')
      vim.keymap.set('n', '<leader>cd', '<Cmd>Copilot disable<cr>', { desc = "Disable Copilot" })
    end,
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      model = "gpt-4o", -- or "claude-3.5-sonnet", "gemini-1.5-pro", "o1-preview"
    },
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
