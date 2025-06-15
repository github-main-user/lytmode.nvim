local lytmode = {}
local config = require('lytmode.config')
local theme = require('lytmode.theme')
local utils = require('lytmode.utils')

-- Pass setup to config module
lytmode.setup = config.setup

lytmode.load = function()
    vim.cmd('hi clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'lytmode'
    if config.opts.terminal_colors then
        utils.terminal(require('lytmode.colors').get_colors())
    end

    theme.set_highlights(config.opts)
    theme.link_highlight()

    if config.opts.group_overrides then
        for group, val in pairs(config.opts['group_overrides']) do
            vim.api.nvim_set_hl(0, group, val)
        end
    end
end

return lytmode
