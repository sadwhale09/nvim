-- NON-PLUGIN RELATED KEYBINDS
-- Set leader key to space
vim.g.mapleader = ' '

-- Open file explorer
-- vim.keymap.set('n', '<leader>e', vim.cmd.Ex)

-- Move selected lines up and down
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move up" })

-- Keep cursor in the middle when:
-- Jumping half page
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
-- Jumping between search results
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
-- Hitting bottom
vim.keymap.set('n', 'G', 'Gzz')

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

-- Clear search highlight
vim.keymap.set('n', '<Esc>', ':nohl<CR>')

-- Deleted single character does not go to the copy register
vim.keymap.set('n', 'x', '"_x')

-- Increment and decrement numbers
vim.keymap.set('n', '<leader>=', '<C-a>')
vim.keymap.set('n', '<leader>-', '<C-x>')

-- Splits
vim.keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
vim.keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=') -- make split equal width
vim.keymap.set('n', '<leader>sx', ':close<CR>') -- close current pane
-- Navigation between splits with Ctrl+{hjkl}
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew<CR>') -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>') -- close current tab
-- Next tab
vim.keymap.set('n', '<Tab>', ':tabn<CR>')
vim.keymap.set('n', '<leader>tn', ':tabn<CR>')
vim.keymap.set('n', 'L', ':tabn<CR>')
-- Previous tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>')
vim.keymap.set('n', 'H', ':tabp<CR>')

-- Trigger path selection
vim.keymap.set('i', './', '<C-x><C-f>')

-- Terminal splits; TODO: trigger terminal in bottom split with lower height
-- Horizontal terminal split
vim.keymap.set('n', '<leader>t', ':sp | :term <CR>i')
-- Vertical terminal split
vim.keymap.set('n', '<leader>tv', ':vsp | :term <CR>i')
