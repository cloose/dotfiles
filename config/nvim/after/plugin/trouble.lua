-- save require trouble
local ok, trouble = pcall(require, "trouble")
if not ok then return end

trouble.setup()

vim.keymap.set('n', '<leader>ld', '<cmd>TroubleToggle<cr>', { desc = '[L]SP [D]iagnostics', silent = true, noremap = true })

