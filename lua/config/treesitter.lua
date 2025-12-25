--Very janky set up for treesitter took a long time for it to not be so jank
vim.cmd('packadd nvim-treesitter')

local status, ts_configs = pcall(require, "nvim-treesitter.configs")
if not status then
    status, ts_configs = pcall(require, "nvim-treesitter.config")
end

if status and ts_configs then
    --Force an actual compiler
    require('nvim-treesitter.install').compilers = { "/usr/bin/gcc" }
    require('nvim-treesitter.install').prefer_git = false

    --Functions
    ts_configs.setup({
	ensure_installed = {
		"lua", "vim", "vimdoc",
		"c", "cpp", "asm",
		"python", "bash",
		"javascript", "typescript", "html", "css",
		"json", "yaml", "toml", "markdown"
	},
        sync_install = true,
        auto_install = true,

        -- Highlight function
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
	
        -- Indent function
        indent = {
            enable = true
        },

        -- Incremental Selection function
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn",
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
    })
    --Prints make sure this actually loads will remove at somepoint
    print("TREESITTER: Full Config Loaded")
else
    print("TREESITTER: Module not found")
end
