function ColorMyPencils(color)
	color = color or "base16-isotope"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

if not FancyColors() and not Ssh() then
    ColorMyPencils()
else
    ColorMyPencils("rose-pine")
end
