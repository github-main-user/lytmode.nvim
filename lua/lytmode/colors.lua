local colors = {}
colors.get_colors = function()
    local mycolors = {} ---@type table<string,string>

    mycolors = {
        lytNone = 'NONE',
        lytFront = '#b9c3df',
        lytBack = '#2d3039',
        lytBackDark = "#23242a",

        lytTabCurrent = '#2d3039',
        lytTabOther = '#2D2D2D',
        lytTabOutside = '#424552',

        lytLeftDark = '#2d3039',
        lytLeftMid = '#424552',
        lytLeftLight = '#636369',

        lytPopupFront = '#cfd2dd',
        lytPopupBack = '#292b32', 
        lytPopupHighlightBlue = '#343a4b',
        lytPopupHighlightGray = '#343B41',

        lytSplitLight = '#898989',
        lytSplitDark = '#515666',
        -- lytSplitThumb = '#424242',

        lytCursorDarkDark = '#3c3f4a',
        lytCursorDark = '#51504F',
        lytCursorLight = '#AEAFAD',
        lytSelection = '#515666',
        lytLineNumber = '#7c849c',

        lytDiffRedDark = '#4B1818',
        lytDiffRedLight = '#6F1313',
        -- lytDiffRedLightLight = '#FB0101',
        lytDiffGreenDark = '#373D29',
        lytDiffGreenLight = '#4B5632',
        lytSearchCurrent = '#515c6a',
        lytSearch = '#613315',

        lytGitAdded = '#81b88b',
        lytGitModified = '#e2c08d',
        lytGitDeleted = '#c74e39',
        lytGitRenamed = '#73c991',
        lytGitUntracked = '#73c991',
        lytGitIgnored = '#8c8c8c',
        lytGitStageModified = '#e2c08d',
        lytGitStageDeleted = '#c74e39',
        -- lytGitConflicting = '#e4676b',
        -- lytGitSubmodule = '#8db9e2',

        lytContext = '#404040',
        lytContextCurrent = '#707070',

        lytFoldBackground = '#373a45',

        lytSuggestion = '#6A6A6A',

        -- Syntax colors
        lytGray = '#7c849c',
        lytViolet = '#b894ff', 
        lytLightViolet = '#c9b8ff', 
        lytBlue = '#38b4da', 
        lytLightBlue = '#71c2d4', 
        lytAccentBlue = '#0cc8f2', 
        lytDarkBlue = '#223E55',
        lytMediumBlue = '#0cc8f2', 
        lytDisabledBlue = '#4f7984', 
        lytGreen = '#1dc7a0', 
        lytRed = "#fb5f8e", 
        lytOrange = '#f8a257', 
        lytLightRed = '#D16969',
        lytYellowOrange = '#D7BA7D',
        lytYellow = '#d7d583', 
        lytDarkYellow = '#FFD602',
        lytPink = '#ff7fb6', 

        -- Low contrast with default background
        lytDimHighlight = '#51504F',
    }

    -- Other ui specific colors
    mycolors.lytUiBlue = '#38b4da' 
    mycolors.lytUiOrange = '#f28b25'
    mycolors.lytPopupHighlightLightBlue = '#d7eafe'

    -- Extend the colors with overrides passed by `color_overrides`
    local config = require('lytmode.config')
    if config.opts.color_overrides then
        mycolors = vim.tbl_extend('force', mycolors, config.opts.color_overrides)
    end

    return mycolors
end

return colors
