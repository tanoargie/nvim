-- LEADER KEY
vim.g.mapleader = " "

-- NVIM-TREE
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.termguicolors = true

local nvimTree = require('nvim-tree')

require("nvim-tree").setup({
  filters = { dotfiles = false },
  actions = {
    open_file = {
      quit_on_open = true
    }
  },
  view = {
    relativenumber = true,
    number = true
  },
  update_focused_file = {
    enable = true
  }
})

-- MARKDOWN-PREVIEW.NVIM
vim.g.mkdp_auto_start = 0

vim.g.mkdp_auto_close = 1

vim.g.mkdp_refresh_slow = 0

vim.g.mkdp_command_for_global = 0

vim.g.mkdp_open_to_the_world = 0

vim.g.mkdp_open_ip = ''

vim.g.mkdp_browser = ''

vim.g.mkdp_echo_preview_url = 0

vim.g.mkdp_browserfunc = ''

vim.g.mkdp_markdown_css = ''

vim.g.mkdp_highlight_css = ''

vim.g.mkdp_port = ''

vim.g.mkdp_page_title = '「${name}」'

vim.g.mkdp_filetypes = { 'markdown' }

vim.g.mkdp_theme = 'dark'

-- TOKYONIGHT COLORSCHEME
vim.cmd [[colorscheme tokyonight]]
