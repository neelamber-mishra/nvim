vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { noremap = true, silent = true })
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", ";", ":") 
vim.opt.clipboard="unnamedplus"
-- Key mappings you might want to add
vim.keymap.set('n', '<leader>ctr', ':CompetiTest run<CR>', { desc = 'Run test cases' })
vim.keymap.set('n', '<leader>cta', ':CompetiTest add_testcase<CR>', { desc = 'Add test case' })
vim.keymap.set('n', '<leader>t', '<cmd>vsp | term<CR>', { desc = 'Open terminal in vertical split' })
