function ColorMyPencils(color)
    color = color or "gruber-darker"
    -- vim.cmd.colorscheme("vim")
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#0000ff", bold = true })
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffcc00", bold = true })
    vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#ff0000", bold = true })

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
