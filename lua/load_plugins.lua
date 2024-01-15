local lazy_plugins = {
	{ 'folke/lazy.nvim' },

	-- Themes
	{ "EdenEast/nightfox.nvim" },
	{
		'folke/tokyonight.nvim',
		lazy = false,
		priority = 1000,
		opts = {},
	},

	-- language developement
	{ 'folke/neodev.nvim' },

	-- Autocomplete
	{ 'ms-jpq/coq_nvim' },
	{ 'ms-jpq/coq.artifacts' },

	-- Highlighting
	{ 'nvim-treesitter/nvim-treesitter' },

	-- Lsp
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ 'neovim/nvim-lspconfig' },

	-- UI
	{ 'folke/which-key.nvim' },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{ 'nvim-tree/nvim-tree.lua' },

	-- Motions
	{ 'phaazon/hop.nvim' },
}

require("lazy").setup(lazy_plugins, {})

require('nightfox').setup({
	options = {
		dim_inactive = true,
	},
	styles = {
		comments = "italic",
		keywords = "bold",
		types = "italic,bold",
	},
})

require("mason").setup()
require("mason-lspconfig").setup()

require('lualine').setup()

require("nvim-tree").setup({
	filters = {
		dotfiles = true,
	},
})
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>NvimTreeToggle<CR>", { noremap = true })

require('hop').setup {
	keys = 'etovxqpdygfblzhckisuran',
	quit_key = '<SPC>',
}

vim.api.nvim_set_keymap('n', 'J', "<cmd>HopWord<CR>", { noremap = true })
vim.api.nvim_set_keymap('n', 'H', "<cmd>HopWordCurrentLine<CR>", { noremap = true })
