local p = require("oldworld.palette")

return {
    MiniFilesBorder = { link = "FloatBorder" },
    MiniFilesBorderModified = { fg = p.blue },
    MiniFilesCursorLine = { link = "CursorLine" },
    MiniFilesDirectory = { fg = "#7677b7" },
    MiniFilesFile = { fg = "#827182" },
    MiniFilesNormal = { link = "NormalFloat" },
    MiniFilesTitle = { fg = p.red },
    MiniFilesTitleFocused = { fg = p.fg, bold = true },
    MiniStatusLineModeInsert = { bg = p.kind_purple, fg = "#000000" },
}
