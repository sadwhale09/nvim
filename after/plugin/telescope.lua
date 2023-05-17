local builtin = require('telescope.builtin')

-- Keybinds:

-- Find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

-- Find git files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
