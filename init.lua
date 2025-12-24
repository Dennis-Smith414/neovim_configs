--SETTINGS
--Leader
vim.g.mapleader = " "

-- Set keyboard
vim.opt.clipboard = "unnamedplus"

-- Disable swap files
vim.opt.swapfile = false


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
vim.keymap.set("n", "<C-k>", ":q!<cr>") --exit without saving




