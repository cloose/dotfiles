-- save require nvim-tree
local ok, nvim_tree = pcall(require, "nvim-tree")
if not ok then return end

nvim_tree.setup({
  -- disable netrw completely
  disable_netrw = true,
  remove_keymaps = {
    -- remove default keymap '<Tab> = File Preview'
    '<Tab>'
  }
})

-- key mapping
vim.keymap.set('n', '<F7>', ':NvimTreeToggle<CR>', { desc = '[F7] Toggle File Tree', silent = true })
vim.keymap.set('n', '<S-F7>', ':NvimTreeFocus<CR>', { desc = '[Shift+F7] Focus File Tree', silent = true })
