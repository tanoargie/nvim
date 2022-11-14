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
map("n", "<Leader>e", ":NvimTreeToggle")

-- TELESCOPE MAPPINGS
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>fh', builtin.help_tags)

