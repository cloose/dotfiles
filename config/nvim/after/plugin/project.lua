-- save require project_nvim
local ok, project = pcall(require, "project_nvim")
if not ok then return end

project.setup()


local telescope_ok, telescope = pcall(require, "telescope")
if not telescope_ok then return end

telescope.load_extension("projects")
