--SETTINGS
--Leader
vim.g.mapleader = " "

-- Set keyboard
vim.opt.clipboard = "unnamedplus"

--KEY BINDS
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set({"n", "v"}, "<C-y>", '"+yy')
vim.keymap.set("n", "<C-p>", '"+p')
vim.keymap.set("i", "<C-p>", '<C-r>+')
vim.keymap.set("i", "<C-y>", '<Esc>"+yygi') 

