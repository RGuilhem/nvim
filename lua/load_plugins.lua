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
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			position = "right",
		},
	},

	-- UI
	{ 'folke/which-key.nvim' },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{ 'nvim-tree/nvim-tree.lua' },
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{ 'preservim/tagbar' },
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		}
	},

	-- terminal
	{ 'voldikss/vim-floaterm' },

	-- Git
	{ 'lewis6991/gitsigns.nvim' },
	{ 'rhysd/git-messenger.vim' },
}

require("lazy").setup(lazy_plugins, {})
require('gitsigns').setup()

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

local function window()
  return vim.api.nvim_win_get_number(0)
end
require('lualine').setup {
	sections = {
		lualine_c = {
			{
				'filename',
				path = 1,
			},
		},
	},
	inactive_sections = {
		lualine_a = { window },
		lualine_c = {
			{
				'filename',
				path = 1,
			},
		},
	},
}

require("nvim-tree").setup({
	filters = {
		dotfiles = true,
	},
})
vim.api.nvim_set_keymap('n', '<C-f>', "<cmd>NvimTreeToggle<CR>", { noremap = true })

vim.keymap.set('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ")
vim.keymap.set('n', "t", ":FloatermToggle myfloat<CR>")
vim.keymap.set('t', "<Esc>", "<C-\\><C-n>:q<CR>")

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set('n', '<leader>t', "<cmd>TroubleToggle<CR>", { noremap = true })
vim.keymap.set('n', '<leader>b', "<cmd>TagbarToggle<CR>", { noremap = true })
