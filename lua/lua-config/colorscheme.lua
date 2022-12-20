function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)
end


ColorMyPencils() -- have to actually call the function
