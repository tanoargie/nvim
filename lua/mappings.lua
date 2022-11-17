-- Functional wrapper for mapping custom keybindings
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- UTILS
map("n", "<Leader>d", "\"_d")
map("v", "<Leader>d", "\"_d")
map("n", "<Leader>p", "\"_dP")
map("n", "<Leader>ca", ":%bd|e#<cr>")
map("n", "<Leader>e", ":NvimTreeToggle<CR>")

-- VIM-FUGITIVE
map("n", "<Leader>gs", ":Git<CR>")
map("n", "<Leader>gp", ":Git push<CR>")

-- VIM-TEST
map("n", "<Leader>tf", ":TestFile<CR>")
map("n", "<Leader>tn", ":TestNearest<CR>")
map("n", "<Leader>ts", ":TestSuite<CR>")
map("n", "<Leader>tl", ":TestLast<CR>")
map("n", "<Leader>tv", ":TestVisit<CR>")

-- TELESCOPE MAPPINGS
local builtin = require('telescope.builtin')
local find_files_hidden = function() return builtin.find_files({ hidden = true }) end

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fy', find_files_hidden)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)

-- NVIM-LSPCONFIG
local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<space>of', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

