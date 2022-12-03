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

-- TOKYONIGHT COLORSCHEME
vim.cmd [[colorscheme tokyonight]]
