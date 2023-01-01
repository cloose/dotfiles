vim.g.mapleader = " "

-- windows
vim.keymap.set('n', '<C-h>', '<Cmd>wincmd h<CR>', { noremap = true })
vim.keymap.set('n', '<C-j>', '<Cmd>wincmd j<CR>', { noremap = true })
vim.keymap.set('n', '<C-k>', '<Cmd>wincmd k<CR>', { noremap = true })
vim.keymap.set('n', '<C-l>', '<Cmd>wincmd l<CR>', { noremap = true })

-- buffers
vim.keymap.set('n', '<Tab>', '<Cmd>bnext<CR>', { noremap = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>bprevious<CR>', { noremap = true })


vim.keymap.set('n', '<leader>.', ':lcd %:p:h<CR>', {})

