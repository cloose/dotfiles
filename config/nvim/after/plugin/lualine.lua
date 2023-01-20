-- save require lualine
local ok, lualine = pcall(require, "lualine")
if not ok then return end

-- status line
lualine.setup {
  options = {
    theme = 'onedark'
    -- theme = 'tokyonight'
  }
}

