--Config for neotree, file explorer

require("neo-tree").setup({
	close_if_last_window=false,
	popup_border_style = "rounded", 
	enable_git_status = true,
	enable_diagonstics = true,

	window = {
		postion = "left",
		width = 30,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
	},
	
	filesystem = {
		follow_current_file = {
			enabled = true,
		},
		hijak_netrw_behavior = "open_default",
		use_libuv_file_watcher = true,
	},
})
