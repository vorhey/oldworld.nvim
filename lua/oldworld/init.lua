local config = require("oldworld.config")

local M = {}

function M.colorscheme()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    local variant = config.variant == "light" and "light" or "dark"
    vim.o.background = variant
    vim.o.termguicolors = true
    vim.g.colors_name = "oldworld"
    require("oldworld.highlights").setup()
end

M.setup = config.setup

return M
