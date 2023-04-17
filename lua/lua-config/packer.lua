-- Install packer if not installed on system
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

-- packer is a lua based package manager for vim
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end



local use = require('packer').use
require('packer').startup( function()

    -- DEBUGGING PLUGINS
    use { "mfussenegger/nvim-dap" }
    use { "mfussenegger/nvim-dap-python" }
    use { "rcarriga/nvim-dap-ui" }
    use { "theHamsta/nvim-dap-virtual-text" }
    use { "nvim-telescope/telescope-dap.nvim" }
    -- END DEBUGGING PLUGINS

    -- use { 'jiangmiao/auto-pairs' }

    -- markdown functionality
    use { 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end }
    use { 'junegunn/goyo.vim' }
    use { 'junegunn/limelight.vim' }

    -- Asynchronous command execution
    use { "skywind3000/asyncrun.vim", opt = true, cmd = { "AsyncRun" } }

    -- does not seem to be working
    -- The missing auto-completion for cmdline!
    use { "gelguy/wilder.nvim", opt = true, setup = [[vim.cmd('packadd wilder.nvim')]] }

    -- Show git change (change, delete, add) signs in vim sign column
    use { "lewis6991/gitsigns.nvim", config = [[require('lua-config.plugins.gitsigns')]] }



    -- require packer package manager
    use { "wbthomason/packer.nvim" }
    -- fuzzy finder
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = {{'nvim-lua/plenary.nvim'}} }

    -- colorscheme
    -- use({ 'rose-pine/neovim', as = 'rose-pine', config = function() vim.cmd('colorscheme rose-pine') end })
    -- gruvbox
    use { 'morhetz/gruvbox', config = function() vim.cmd('colorscheme gruvbox') end }


    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use ('theprimeagen/harpoon')

    use ('mbbill/undotree')

    use ('tpope/vim-fugitive')

    -- lsp & cmp setup # iss verry nice
    use {'VonHeikemen/lsp-zero.nvim',
    requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},
	    {'williamboman/mason.nvim'},
	    {'williamboman/mason-lspconfig.nvim'},

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},
	    {'hrsh7th/cmp-buffer'},
	    {'hrsh7th/cmp-path'},
	    {'saadparwaiz1/cmp_luasnip'},
	    {'hrsh7th/cmp-nvim-lsp'},
	    {'hrsh7th/cmp-nvim-lua'},

	    -- Snippets
	    {'L3MON4D3/LuaSnip'},
	    {'rafamadriz/friendly-snippets'},
    }
    }

end)
