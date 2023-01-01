-- save require bufferline
local ok, bufferline = pcall(require, "bufferline")
if not ok then return end

-- save require nvim-tree.view
local tree_view_ok, tree_view = pcall(require, 'nvim-tree.view')
if not tree_view_ok then return end

bufferline.setup({
  -- auto-hide tabbar for single buffer
  auto_hide = true
})

local tree_events = require('nvim-tree.events')
local api = require('bufferline.api')

local function get_tree_size()
  return tree_view.View.width
end

tree_events.subscribe('TreeOpen', function()
  api.set_offset(get_tree_size())
end)

tree_events.subscribe('Resize', function()
  api.set_offset(get_tree_size())
end)

tree_events.subscribe('TreeClose', function()
  api.set_offset(0)
end)

-- key mapping
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<A-h>', '<Cmd>BufferPrevious<CR>', opts)
vim.keymap.set('n', '<A-l>', '<Cmd>BufferNext<CR>', opts)

vim.keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
vim.keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
vim.keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
vim.keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
vim.keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
vim.keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
vim.keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
vim.keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
vim.keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
vim.keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
