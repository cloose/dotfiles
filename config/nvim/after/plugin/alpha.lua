-- save require alpha
local ok, alpha = pcall(require, "alpha")
if not ok then return end

local dashboard_theme = require('alpha.themes.dashboard')
alpha.setup(dashboard_theme.config)

