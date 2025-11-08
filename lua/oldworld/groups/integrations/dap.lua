local p = require("oldworld.palette")

return {
    DapBreakpoint = { fg = p.soft_red },
    DapBreakpointGreen = { fg = p.kind_green },
    DapBreakpointYellow = { fg = p.kind_gold },
    DapBreakpointRejected = { fg = p.rose },
    DapLogPoint = { fg = p.kind_green },
    DapStopped = { fg = p.kind_green, bg = p.navy },
    DapUIPlayPauseNC = { bg = p.bg },
    DapUIRestartNC = { bg = p.bg },
    DapUIUnavailableNC = { fg = p.muted_purple, bg = p.bg },
    DapUIStopNC = { bg = p.bg },
    DapUIStepOverNC = { bg = p.bg },
    DapUIStepIntoNC = { bg = p.bg },
    DapUIStepBackNC = { bg = p.bg },
    DapUIStepOutNC = { bg = p.bg },
}
