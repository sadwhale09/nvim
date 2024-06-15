--]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- [[ Basic Keymaps ]]

-- Better navibation between windows
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Toggle Zen Mode
vim.keymap.set("n", "<leader>z", ":ZenMode<CR>", { desc = "Toggle Zen Mode" })

-- Close current buffer (window/tab)
vim.keymap.set("n", "<leader>x", ":close<CR>", { desc = "Close the current buffer" })

-- Escape to normal mode
vim.keymap.set("i", "JK", "<ESC>", { desc = "Escape insert mode" })
vim.keymap.set("t", "JK", "<C-\\><C-n>", { desc = "Escape terminal mode" })

-- Clear highlight
vim.keymap.set("n", "<ESC>", ":noh<CR>", { desc = "Clear highlight" })

-- Open file tree
vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Open file tree" })

-- Open terminam in bottom split
vim.keymap.set("n", "<leader>t", ":16 sp | :term<CR>i", { desc = "Open [t]erminal at bottom" })
vim.keymap.set("n", "<leader>T", ":vsp | :term<CR>i", { desc = "Open [T]erminal on vertical split" })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Move lines
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
-- vim.keymap.set('n', '<A-j>', '<Esc>:m .+1<CR>==gi', { desc = 'Move line down' })
-- vim.keymap.set('n', '<A-k>', '<Esc>:m .-2<CR>==gi', { desc = 'Move line up' })
-- vim.keymap.set('n', '<A-j>', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
-- vim.keymap.set('n', '<A-k>', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })

-- Replace every occurence of text under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

