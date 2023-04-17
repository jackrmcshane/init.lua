function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end


-- ColorMyPencils("gruvbox") -- have to actually call the function
