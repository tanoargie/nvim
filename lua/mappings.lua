-- Functional wrapper for mapping custom keybindings
local map = function(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local dap = require('dap-configs')

local continue = function()
  if vim.fn.filereadable('.vscode/launch.json') then
    require('dap.ext.vscode').load_launchjs(nil, { lldb = { 'c', 'cpp' } })
  end
  dap.continue()
end

-- NVIM-DAP
map("n", "<Leader>dt", ":lua require('dapui').toggle()<CR>")
map("n", "<Leader>db", ":DapToggleBreakpoint<CR>")
map("n", "<Leader>dc", ":DapContinue", { callback = continue })
map("n", "<Leader>dr", ":lua require('dapui').open({ reset = true })<CR>")

-- NVIM-CODECOMPANION
map("n", "<Leader>ac", ":CodeCompanionChat<CR>")

-- UTILS
map("n", "<Leader>d", "\"_d")
map("v", "<Leader>d", "\"_d")
map("v", "<Leader>p", "\"_dP")
map("n", "<Leader>cab", ":%bd|e#<CR>")
map("n", "<Leader>e", ":NvimTreeToggle<CR>")

-- VIM-FUGITIVE
map("n", "<Leader>gs", ":Git<CR>")
map("n", "<Leader>gp", ":Git push<CR>")
map("n", "<Leader>gl", ":Git pull<CR>")
map("n", "<Leader>gu", ":Git push -u origin HEAD<CR>")
map("n", "<Leader>gF", ":Git push -f origin HEAD<CR>")

-- VIM-TEST
map("n", "<Leader>tf", ":TestFile<CR>")
map("n", "<Leader>tn", ":TestNearest<CR>")
map("n", "<Leader>ts", ":TestSuite<CR>")
map("n", "<Leader>tl", ":TestLast<CR>")
map("n", "<Leader>tv", ":TestVisit<CR>")

-- TELESCOPE MAPPINGS
local builtin = require('telescope.builtin')
local lga = require('telescope').extensions.live_grep_args
local find_files_hidden = function() return builtin.find_files({ hidden = true }) end

vim.keymap.set('n', '<Leader>p', builtin.find_files)
vim.keymap.set('n', '<Leader>h', find_files_hidden)
vim.keymap.set('n', '<Leader>l', builtin.live_grep)
vim.keymap.set('n', '<Leader>L', lga.live_grep_args)
vim.keymap.set('n', '<Leader>b', builtin.buffers)
vim.keymap.set('n', '<Leader>t', builtin.help_tags)

-- NVIM-LSPCONFIG
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<Leader>of', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, opts)

-- Move between panes
map("n", "<Leader><C-k>", ":wincmd k<CR>")
map("n", "<Leader><C-j>", ":wincmd j<CR>")
map("n", "<silent> <C-h>", ":wincmd h<CR>")
map("n", "<silent> <C-l>", ":wincmd l<CR>")
