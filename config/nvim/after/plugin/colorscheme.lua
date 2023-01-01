-- save require onedark
local ok, onedark = pcall(require, "onedark")
if not ok then return end

vim.opt.termguicolors = true

-- color scheme
onedark.setup {
  style = 'darker'
}
onedark.load()

