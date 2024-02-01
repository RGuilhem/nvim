vim.opt.number = true
vim.opt.rnu = true
vim.opt.scrolloff = 10

vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')

vim.keymap.set('i', 'jj', '<Esc>', {silent = true})

-- Window switching
vim.keymap.set('n', '<leader>w1', "<cmd>1wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w2', "<cmd>2wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>ww', "<cmd>2wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w3', "<cmd>3wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w4', "<cmd>4wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w5', "<cmd>5wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w6', "<cmd>6wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w7', "<cmd>7wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w8', "<cmd>8wincmd w<CR>", { silent = true, noremap = true })
vim.keymap.set('n', '<leader>w9', "<cmd>9wincmd w<CR>", { silent = true, noremap = true })
