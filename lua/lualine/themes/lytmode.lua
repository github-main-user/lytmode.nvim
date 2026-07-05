local config = require('lytmode.config')
local c = require('lytmode.colors').get_colors()
local lytmode = {}

local colors = {
    inactive = c.lytGray,
    bg = c.lytBackDark,
    bg2 = c.lytPopupHighlightBlue,
    fg = c.lytFront,
    red = c.lytRed,
    green = c.lytGreen,
    blue = c.lytBlue,
    lightblue = c.lytLightBlue,
    yellow = c.lytYellow,
    pink = c.lytPink,
}

lytmode.normal = {
    a = { fg = colors.bg, bg = colors.blue, gui = 'bold' },
    b = { fg = colors.blue, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

lytmode.visual = {
    a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
    b = { fg = colors.yellow, bg = config.opts.transparent and 'NONE' or colors.bg },
}

lytmode.inactive = {
    a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
    b = { fg = colors.inactive, bg = config.opts.transparent and 'NONE' or colors.bg },
    c = { fg = colors.inactive, bg = config.opts.transparent and 'NONE' or colors.bg },
}

lytmode.replace = {
    a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
    b = { fg = colors.red, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

lytmode.insert = {
    a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.green, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

lytmode.terminal = {
    a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
    b = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

lytmode.command = {
    a = { fg = colors.bg, bg = colors.pink, gui = 'bold' },
    b = { fg = colors.pink, bg = config.opts.transparent and 'NONE' or colors.bg2 },
    c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

return lytmode
