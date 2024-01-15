vim.opt.number = true
vim.opt.rnu = true

vim.keymap.set({'n', 'x'}, 'gy', '"+y')
vim.keymap.set({'n', 'x'}, 'gp', '"+p')

vim.keymap.set('i', 'jj', '<Esc>', {silent = true})
