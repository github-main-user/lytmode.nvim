local utils = {}

utils.terminal = function(colors)
    -- dark
    vim.g.terminal_color_0 = colors.lytBack
    vim.g.terminal_color_8 = colors.lytGray

    -- light
    vim.g.terminal_color_7 = colors.lytFront
    vim.g.terminal_color_15 = colors.lytFront

    -- colors
    vim.g.terminal_color_1 = colors.lytRed
    vim.g.terminal_color_9 = colors.lytRed

    vim.g.terminal_color_2 = colors.lytGreen
    vim.g.terminal_color_10 = colors.lytGreen

    vim.g.terminal_color_3 = colors.lytYellow
    vim.g.terminal_color_11 = colors.lytYellow

    vim.g.terminal_color_4 = colors.lytBlue
    vim.g.terminal_color_12 = colors.lytBlue

    vim.g.terminal_color_5 = colors.lytPink
    vim.g.terminal_color_13 = colors.lytPink

    vim.g.terminal_color_6 = colors.lytAccentBlue
    vim.g.terminal_color_14 = colors.lytAccentBlue
end

return utils
