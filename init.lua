require('lua-config')


-- all code below sources vim files from 'vim' dir
local vim_files = {
    'mappings.vim',
    'autocommands.vim',
    'wilder.vim',
    'asyncrun.vim',
    'markdown.vim',
}


for _, fname in ipairs(vim_files) do
    local path = string.format("%s/vim/%s", vim.fn.stdpath("config"), fname)
    local source_cmd = "source" .. path
    vim.cmd(source_cmd)
end


vim.cmd('colorscheme gruvbox')
