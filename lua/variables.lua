-- LEADER KEY
vim.g.mapleader = " "

-- NVIM-TREE
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.termguicolors = true

require("nvim-tree").setup({
  filters = { dotfiles = false },
  view = { 
    relativenumber = true,
    number = true 
  }
})

-- TOKYONIGHT COLORSCHEME
vim.cmd[[colorscheme tokyonight]]

