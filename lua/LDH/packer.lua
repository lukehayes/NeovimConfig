-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-----------------------------------------------------------------------
	-- Base Necessary Setup
	-- 

	-- Packer
	-- 
	use 'wbthomason/packer.nvim'

	-- Telescope
	-- 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.2',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Treesitter
	-- 
	use {'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}}

	-- LSP
	-- 
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			run = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
		},

		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		-- Autocompletion
		{'hrsh7th/nvim-cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required

		}
	}


	-----------------------------------------------------------------------
	-- Cool Plugins
	-- 

	-- Lualine (statusbar)
	-- 
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	-- Indent Blankline (indentation guides)
	-- 
	use { 'lukas-reineke/indent-blankline.nvim' }

	-- Neotree (file explorer)
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-desvicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		}
	}

	-----------------------------------------------------------------------
	-- Colour Schemes
	-- 
	use { 'savq/melange-nvim'            }
	use { 'rose-pine/neovim'             }
	use { 'wadackel/vim-dogrun'          }
	use { 'NLKNguyen/papercolor-theme'   }
	use { 'cocopon/iceberg.vim'          }
	use { 'jaredgorski/fogbell.vim'      }
	use { 'atelierbram/Base2Tone-nvim'   }
	use { 'rakr/vim-two-firewatch'       }
	use { 'liuchengxu/space-vim-dark'    }
	use { 'TheNiteCoder/mountaineer.vim' }
	use { 'Shatur/neovim-ayu'            }
	use { 'Badacadabra/vim-archery'      }
	use { 'gilgigilgil/anderson.vim'     }
	use { 'oxfist/night-owl.nvim'        }
	use { 'sainnhe/gruvbox-material'     }
	use { 'sainnhe/sonokai'              }
	use { 'sainnhe/everforest'           }
	use { 'sainnhe/edge'                 }


	use {
		"kyazdani42/blue-moon",
		config = function()
			vim.opt.termguicolors = true
		end
	}

	use({
		'NTBBloodbath/doom-one.nvim',
		setup = function()
			-- Add color to cursor
			vim.g.doom_one_cursor_coloring   = true
			-- Set :terminal colors
			vim.g.doom_one_terminal_colors   = true
			-- Enable TS support
			vim.g.doom_one_enable_treesitter = true

			-- Plugins integration
			vim.g.doom_one_plugin_telescope        = true
			vim.g.doom_one_plugin_neogit           = true
			vim.g.doom_one_plugin_dashboard        = true
			vim.g.doom_one_plugin_indent_blankline = true
		end
	})

end)

