local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    mycolors = {
        lytNone = 'NONE',
        lytFront = '#c7cfe5',
        lytWhite = '#eff1f5',
        lytBack = '#2d3039',
        lytBackDark = '#23242a',

        lytTabCurrent = '#2d3039',
        lytTabOther = '#2d2d2d',
        lytTabOutside = '#424552',

        lytLeftDark = '#2d3039',
        lytLeftMid = '#424552',
        lytLeftLight = '#636369',

        lytPopupFront = '#cfd2dd',
        lytPopupBack = '#292b32',
        lytPopupHighlightBlue = '#343a4b',
        lytPopupHighlightGray = '#343b41',

        lytSplitLight = '#898989',
        lytSplitDark = '#515666',
        -- lytSplitThumb = '#424242',

        lytCursorDarkDark = '#3c3f4a',
        lytCursorDark = '#51504f',
        lytCursorLight = '#aeafad',
        lytSelection = '#515666',
        lytLineNumber = '#7c849c',

        lytDiffRedDark = '#463643',
        lytDiffRedLight = '#5a3a4c',
        -- lytDiffRedLightLight = '#FB0101',
        lytDiffGreenDark = '#2b4245',
        lytDiffGreenLight = '#295150',
        lytDiffYellowDark = '#3e4040',
        lytDiffYellowLight = '#525449',
        lytSearch = '#515c6a',

        lytGitAdded = '#1dc7a0',
        lytGitModified = '#d7d583',
        lytGitDeleted = '#fb5f8e',
        lytGitRenamed = '#1dc7a0',
        lytGitUntracked = '#1dc7a0',
        lytGitIgnored = '#8c94aa',
        lytGitStageModified = '#d7d583',
        lytGitStageDeleted = '#fb5f8e',

        lytGreenDim = '#248372',
        lytYellowDim = '#8a8b62',
        lytRedDim = '#9e4a68',
        -- lytGitConflicting = '#e4676b',
        -- lytGitSubmodule = '#8db9e2',

        lytContext = '#404040',
        lytContextCurrent = '#707070',

        lytFoldBackground = '#373a45',

        lytSuggestion = '#6a6a6a',

        -- Syntax colors
        lytGray = '#7c849c',
        lytViolet = '#b894ff',
        lytLightViolet = '#c9b8ff',
        lytBlue = '#38b4da',
        lytLightBlue = '#71c2d4',
        lytAccentBlue = '#0cc8f2',
        lytDisabledBlue = '#4f7984',
        lytGreen = '#1dc7a0',
        lytRed = '#fb5f8e',
        lytOrange = '#f8a257',
        lytLightRed = '#f85f57',
        lytYellowOrange = '#dea471',
        lytYellow = '#d7d583',
        lytDarkYellow = '#d8d516',
        lytPink = '#ff7fb6',

        -- Low contrast with default background
        lytDimHighlight = '#51504f',
    }

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('lytmode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
