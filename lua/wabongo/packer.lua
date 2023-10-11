-- This file can be loaded by calling `lua require('plugins')` from your init.vim
--
-- -- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
--
return require('packer').startup(function(use)
--   -- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
	'nvim-telescope/telescope.nvim', tag = '0.1.3',
	requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ 'rose-pine/neovim', as = 'rose-pine',
	config = function()
		vim.cmd('colorscheme rose-pine')
	end})

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use{
	"windwp/nvim-autopairs",
    	config = function() require("nvim-autopairs").setup {} 
    end}
    
    use 'nvim-tree/nvim-tree.lua'
    use {'akinsho/toggleterm.nvim', tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use {
	'neovim/nvim-lspconfig'
    }
    use{
	'VonHeikemen/lsp-zero.nvim',
	branch = 'v3.x',
	requires = {
	    {'neovim/nvim-lspconfig'},
	}
    }
    use {
	    "williamboman/mason.nvim",
	    "williamboman/mason-lspconfig.nvim",
    }
end)
