-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	use {
		"catppuccin/nvim",
		as = "catppuccin",
		config = function()
			vim.cmd("colorscheme catppuccin-mocha")
		end
	}

	-- LSP
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{                   -- Optional
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'L3MON4D3/LuaSnip' }, -- Required
		}
	}

	-- Go
	use { 'fatih/vim-go', run = ':GoUpdateBinaries' }

	-- From primeagon
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'nvim-treesitter/playground' }
	use { 'theprimeagen/harpoon' }
	use { 'mbbill/undotree' }
	use { 'tpope/vim-fugitive' }

	-- From Craftzdog
	use { 'windwp/nvim-autopairs' }
	use { 'windwp/nvim-ts-autotag' }
	-- use 'akinsho/nvim-bufferline.lua'
	use { 'nvim-lualine/lualine.nvim' }
	-- use { 'MunifTanjim/prettier.nvim' }
	use { 'kyazdani42/nvim-web-devicons' }
	-- use { 'jose-elias-alvarez/typescript.nvim' }

	-- For myself
	use { 'norcalli/nvim-colorizer.lua' }
	use { "lukas-reineke/indent-blankline.nvim" }
	use {
		'numToStr/Comment.nvim',
		requires = { 'JoosepAlviste/nvim-ts-context-commentstring' },
		config = function()
			require('Comment').setup()
		end
	}
	use { "jose-elias-alvarez/null-ls.nvim" }
	use { 'wakatime/vim-wakatime' }
	use { "folke/todo-comments.nvim", requires = { "nvim-lua/plenary.nvim" } }
	use { "eandrju/cellular-automaton.nvim" }
end)
