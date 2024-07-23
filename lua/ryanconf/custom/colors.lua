function ColorMyPencils(color)
	color = color or "midnight"
    -- vim.cmd.colorscheme ("industry")
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#458588", bold = true })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#ffcc00", bold = true })
	vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#cc241d", bold = true })

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
