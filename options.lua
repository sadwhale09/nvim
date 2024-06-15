-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- No .swp file
-- vim.o.swapfile = ""

-- Margin on top and bottom at scrolling
vim.o.scrolloff = 5

-- Set splits default positions
vim.o.splitbelow = true

-- Set highlight on search
vim.o.hlsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.linebreak = true

-- Indent settings (see 'tpope/vim-sleuth' above)
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Holy 80-column line
vim.opt.colorcolumn = "80"

-- Disable wrap
vim.o.wrap = false

-- Disable mouse mode
vim.o.mouse = ""

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true
