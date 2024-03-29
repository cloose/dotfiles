-- save require nvim-treesitter.configs
local ok, treesitter_configs = pcall(require, "nvim-treesitter.configs")
if not ok then return end

treesitter_configs.setup({
  ensure_installed = { 'lua', 'c', 'cpp', 'cmake', 'python' }
})

