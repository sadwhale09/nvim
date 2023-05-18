-- Set leader key to space
vim.g.mapleader = " "

-- Open file explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

-- Move selected lines up and down
-- vim.keymap.set('n', '<M-j>', ":m '>+1<CR>gv=gv'")
-- vim.keymap.set('n', '<M-k>', ":m '<-2<CR>gv=gv'")

-- Keep cursor in the middle when:
-- Jumping half page
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- Jumping between search results
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Keep copied text while pasting over
vim.keymap.set('x', 'p', '\"_dP')

-- Copy to system clipboard (may as well do the automatic rule for
-- unnamedplus, but ThePrimeagen says that it is better to have separate
-- clipboards for vim and system and it sounds sensible)
vim.keymap.set('n', '<leader>y', '\"+y')
vim.keymap.set('v', '<leader>y', '\"+y')
vim.keymap.set('n', '<leader>y', '\"+y')

-- Remap Escape to jk
vim.keymap.set('i', 'jk', '<Esc>')

-- Replace every occurance of text under cursor
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make current file executable
vim.keymap.set('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })

