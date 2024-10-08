---------------------
-- GENERAL OPTIONS --
---------------------

-- use `:h <option>` to figure out the meaninig

vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a' -- allow mouse to be used in Nvim

--Tab
vim.opt.tabstop = 4 -- number of spaces per TAB
vim.opt.softtabstop = 4 -- number of spaces in tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces
vim.opt.showmode = false

-- UI config
vim.opt.number = true -- show absolute number
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.termguicolors = true
vim.o.hidden = true