--[[
-- save require telescope.builtin
local ok, toggleterm = pcall(require, "toggleterm")
if not ok then return end

-- shell for windows
if vim.fn.has('win32') or vim.fn.has('win64') then
  vim.opt.shell = '"c://Program Files//Git//bin//bash.exe"'
  vim.opt.shellcmdflag = '-c'
  vim.opt.shellquote = ''
end

toggleterm.setup({
  open_mapping = [[<A-t>]-]
})

-- key mappings
function _G.set_terminal_keymaps()
  vim.keymap.set('t', '<C-h>', '<Cmd>wincmd h<CR>', { buffer = 0 })
  vim.keymap.set('t', '<C-j>', '<Cmd>wincmd j<CR>', { buffer = 0 })
  vim.keymap.set('t', '<C-k>', '<Cmd>wincmd k<CR>', { buffer = 0 })
  vim.keymap.set('t', '<C-l>', '<Cmd>wincmd l<CR>', { buffer = 0 })
end

vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')

]]--
