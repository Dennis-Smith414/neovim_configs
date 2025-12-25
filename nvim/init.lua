--SETTINGS
--Plugins

require('plugins')
require('config.neotree')
require('config.treesitter')

--Leader
vim.g.mapleader = " "

-- Set keyboard
vim.opt.clipboard = "unnamedplus"

-- Disable swap files
vim.opt.swapfile = false

--Always show line numbers
vim.wo.number = true

--KEY BINDS
--Copy and paste controls
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set({"n", "v"}, "<C-y>", '"+yy')
vim.keymap.set("n", "<C-p>", '"+p')
vim.keymap.set("i", "<C-p>", '<C-r>+')
vim.keymap.set("i", "<C-y>", '<Esc>"+yygi') 

--Save
vim.keymap.set("n", "<C-s>", ":w<cr>")
vim.keymap.del("i", "<C-s>")
vim.keymap.set("i", "<C-s>", '<Esc>:w<CR>:echo "File saved"<CR>a', { noremap = true })
--Save and exit
vim.keymap.set("n", "<C-o>", ":wq<cr>")
vim.keymap.set("n", "<C-q>", ":q!<cr>", { noremap = true }) --exit without saving

--Moving around in insert mode
vim.keymap.set("i", "<C-l>", '<Right>', { noremap = true })
vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')

--Neo-Tree keybinds
vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })

--Splits and terminal 
vim.keymap.set('n', '<C-t>', ':botright split | terminal<CR>') --Open terminal
vim.keymap.set('t', '<C-q>', '<C-\\><C-n>:q!<CR>', { noremap = true, silent = true }) --Exit 
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true, silent = true }) --Exit and leave the term open

vim.keymap.set('n', '<C-h>', '<C-w>h') --Navigate aroud splits
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

--Toggle line numbers on and off default is on
vim.keymap.set('n', '<leader>l', ':set number!<CR>', { silent = true })

--Custom Commands
--Auto enter on term opened
vim.api.nvim_create_autocmd('TermOpen', {
	pattern = '*',
	callback = function()
		vim.cmd('startinsert')
	end,
})

--Auto enter when switching to term mode
vim.api.nvim_create_autocmd('BufEnter', {
	pattern = 'term://*',
	callback = function()
		vim.cmd('startinsert')
	end,
})












