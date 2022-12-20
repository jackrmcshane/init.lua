local opt = vim.opt

opt.guicursor = ""

opt.number = true
opt.relativenumber = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true


opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true


opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

opt.colorcolumn = "80"

-- folding
opt.foldenable = true
opt.foldminlines = 4
opt.foldnestmax = 10
opt.foldmethod = 'expr'
opt.foldexpr = 'nvim_treesitter#foldexpr()'
