local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.ensure_installed({
	'tsserver',
	'rust_analyzer',
})

lsp.setup()

-- Autocompletion keybinds:

    -- <Ctrl-y>: Confirms selection.

    -- <Ctrl-e>: Cancel completion.

    -- <Down>: Navigate to the next item on the list.

    -- <Up>: Navigate to previous item on the list.

    -- <Ctrl-n>: If the completion menu is visible, go to the next item. Else, trigger completion menu.

    -- <Ctrl-p>: If the completion menu is visible, go to the previous item. Else, trigger completion menu.

    -- <Ctrl-d>: Scroll down the documentation window.

    -- <Ctrl-u>: Scroll up the documentation window.


-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select = {behaior = cmp.SelectBehavior.Select}

cmp.setup({
	-- Additional sources
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp'},
		{name = 'buffer', keyword_length = 3},
		{name = 'luasnip', keyword_length = 2},
	},

	-- Keymaps
	mapping = {
		-- Select next item
		['<C-j>'] = cmp.mapping.select_next_item(cmp_select),

		-- Select previous item
		['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
		--
		-- `Enter` key to confirm completion
		-- ['<CR>'] = cmp.mapping.confirm({select = false}),

		-- Ctrl+Space to trigger completion menu
		-- ['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		-- ['<C-f>'] = cmp_action.luasnip_jump_forward(),
		-- ['<C-b>'] = cmp_action.luasnip_jump_backward(),
	}
})


