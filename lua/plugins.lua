--Plugins for neovim, using packer

--set up for packer
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
   	
	--Neo-tree
	use {
	 "nvim-neo-tree/neo-tree.nvim",
	 branch ="v3.x",
	 requires = {
           "nvim-lua/plenary.nvim",
	   "nvim-tree/nvim-web-devicons",
	   "MunifTanjim/nui.nvim",
   	 }
	}

	--Tree Sitter
	use {
	 'nvim-treesitter/nvim-treesitter',
	 run = ':TSUpdate'
	}
  --for treesitter
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
end)

