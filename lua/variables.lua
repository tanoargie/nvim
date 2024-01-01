-- LEADER KEY
vim.g.mapleader = " "

-- NVIM-TREE
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.termguicolors = true

-- NVIM-DAP
require("dapui").setup()

-- NVIM-TREE
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

-- open_on_setup replacement
local function open_nvim_tree(data)
  -- buffer is a [No Name]
  local no_name = data.file == "" and vim.bo[data.buf].buftype == ""

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not no_name and not directory then
    return
  end

  -- change to the directory
  if directory then
    vim.cmd.cd(data.file)
  end

  -- open the tree
  require('nvim-tree.api').tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

-- NVIM-TREESITTER

require('nvim-treesitter.configs').setup({
  autotag = {
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
