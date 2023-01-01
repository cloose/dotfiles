local ok, lsp = pcall(require, 'lsp-zero')
if not ok then return end

lsp.preset('recommended')

-- ensure all these LSP servers are installed
lsp.ensure_installed({
  'sumneko_lua'
})

-- neovim-specific lua completions
lsp.nvim_workspace()

lsp.setup()

