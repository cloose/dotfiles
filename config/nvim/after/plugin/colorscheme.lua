-- save require onedark
local ok, onedark = pcall(require, "onedark")
if not ok then return end

vim.opt.termguicolors = true

-- color scheme
onedark.setup {
  style = 'darker'
}
onedark.load()

-- folke/tokyonight.nvim
-- additional schemes: tokyonight-night, tokyonight-storm, tokyonight-day, tokyonight-moon
-- vim.cmd[[colorscheme tokyonight-night]]

-- EdenEast/nightfox.nvim
-- additional schemes: Dayfox, Dawnfox, Duskfox, Nordfox, Terafox, Carbonfox
-- vim.cmd[[colorscheme nightfox]]
