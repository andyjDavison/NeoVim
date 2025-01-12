-------------
-- KEYMAPS --
-------------

-- define common options
local opts = {
    noremap = true, -- nonrecursive
    silent = true, -- do not show messages
}

local utils = require('utils')

-- Map arrows to move between windows
vim.keymap.set('n', '<S-Up>', '<C-w>k')
vim.keymap.set('n', '<S-Right>', '<C-w>l')
vim.keymap.set('n', '<S-Left>', '<C-w>h')
vim.keymap.set('n', '<S-Down>', '<C-w>j')

-- Map Copy Paste and Cut in visual mode
vim.keymap.set('v', '<C-c>', 'y') -- copy
vim.keymap.set('v', '<C-S-v>', '<S-P>') -- paste before cursor
vim.keymap.set('v', '<C-x>', 'd') -- cut

-- Map Bufferline Keys
utils.map('n', [[<C-b>]], ':BufferLinePick<CR>')
utils.map('n', [[<C-d>]], ':BufferLinePickClose<CR>')

-- Toggle NvimTree
utils.map('n', [[<C-n>]], ":NvimTreeToggle<CR>")
utils.map('i', [[<C-n>]], ":NvimTreeToggle<CR>")

-- Toggle Terminal
utils.map('n', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm"<CR>')
utils.map('i', [[<C-\>]], '<cmd>exe v:count1 . "ToggleTerm"<CR>')

function _G.set_terminal_keymaps()
    --local opts = {noremap = true}
    vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
end
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')