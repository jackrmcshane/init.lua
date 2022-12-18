local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>pf", builtin.git_files, {}) -- searches files tracked by git repo
vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- searches entire project/directory
vim.keymap.set("n", "<leader>ps", function()
    builtin.grep_string({ search = vim.fn.input("grep > ") });
end)
