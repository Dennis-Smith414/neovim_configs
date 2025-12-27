local lspconfig = require('lspconfig')

--Use capabilites from nvim-cmp

local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- C/C++ clangd
vim.lsp.config.clangd = {
  cmd = { 'clangd' },
  filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
  root_markers = { 'compile_commands.json', '.git' },
  capabilities = capabilities,
}

-- Python pyright
vim.lsp.config.pyright = {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', '.git' },
  capabilities = capabilities,
}

-- Lua
vim.lsp.config.lua_ls = {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.git' },
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
    }
  }
}

-- Bash
vim.lsp.config.bashls = {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'sh' },
  root_markers = { '.git' },
  capabilities = capabilities,
}

-- Ts and JS
vim.lsp.config.ts_ls = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
  root_markers = { 'package.json', 'tsconfig.json', '.git' },
  capabilities = capabilities,
}

-- HTML
vim.lsp.config.html = {
  cmd = { 'vscode-html-language-server', '--stdio' },
  filetypes = { 'html' },
  root_markers = { 'package.json', '.git' },
  capabilities = capabilities,
}

-- CSS
vim.lsp.config.cssls = {
  cmd = { 'vscode-css-language-server', '--stdio' },
  filetypes = { 'css', 'scss', 'less' },
  root_markers = { 'package.json', '.git' },
  capabilities = capabilities,
}

-- Enable LSP servers
vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('lua_ls')
vim.lsp.enable('bashls')
vim.lsp.enable('ts_ls')
vim.lsp.enable('html')
vim.lsp.enable('cssls')

---Keybinds

--Goto def
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { noremap = true })

--References
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { noremap = true, silent = true })

--Show docs 
vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true })

--Rename
vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { noremap = true, silent = true })

--Actions
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { noremap = true, silent = true })

--Goto prev error
vim.keymap.set('n', '<leader>k', vim.diagnostic.goto_prev, { noremap = true, silent = true })

--Goto next error
vim.keymap.set('n', '<leader>j', vim.diagnostic.goto_next, { noremap = true, silent = true })

--Show error msg
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)





