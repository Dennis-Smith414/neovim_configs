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
end)

