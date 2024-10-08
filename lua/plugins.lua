-------------
-- PLUGINS --
-------------

local PATH = "~/.vim/plugged"
local Plug = vim.fn['plug#']
require('config.nvim-cmp')
vim.call('plug#begin', PATH)

    Plug 'nvim-tree/nvim-tree.lua'
    Plug 'nvim-tree/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    Plug 'rebelot/kanagawa.nvim'
    Plug ('bluz71/vim-moonfly-colors', {as = 'moonfly'})
    Plug 'tpope/vim-endwise'
    Plug 'rstacruz/vim-closer'
    Plug ("akinsho/toggleterm.nvim", {['tag'] = '*' })
    -- Plug 's1n7ax/nvim-terminal'
    -- Plug 'CRAG666/betterTerm.nvim'
    Plug ('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
    Plug 'steelsojka/pears.nvim'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'L3MON4D3/LuaSnip'
    Plug "rafamadriz/friendly-snippets"
    Plug ('akinsho/bufferline.nvim', {['tag'] = '*' })

vim.call('plug#end')

------------------
-- Plugin Setup --
------------------

-- Tree Setup ----------------------------------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()
    if vim.fn.argc(-1) == 0 then
        vim.cmd("NvimTreeOpen")
    end

-- Lualine Setup -------------------------------------------------------------
require('lualine').setup {
    options = {
        theme = 'auto'
    }
}

-- Pears Config --------------------------------------------------------------
require('pears').setup()

-- TreeSitter Setup ----------------------------------------------------------
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true
    }
}

-- Terminal Config -----------------------------------------------------------
require("toggleterm").setup {
    size = 10,
    open_mapping = [[<C-t>], [2<C-t>]]
}

-- require('nvim-terminal').setup {
--     toggle_keymap = '<C-t>',
--     window = {
--         height = 10
--     }
-- require('betterTerm').setup {
--     prefix = "ANDY_",
--     startInserted = true,
--     position = "bot",
--     size = 10
-- }

-- local betterTerm = require('betterTerm')
-- -- toggle firts term
-- vim.keymap.set({"n", "t"}, "<C-;>", betterTerm.open, { desc = "Open terminal"})
-- -- Select term focus
-- vim.keymap.set({"n"}, "<leader>tt", betterTerm.select, { desc = "Select terminal"})
-- -- Create new term
-- local current = 2
-- vim.keymap.set(
--     {"n"}, "<leader>tn",
--     function()
--         betterTerm.open(current)
--         current = current + 1
--     end,
--     { desc = "New terminal"}
-- )

-- Bufferline Config ---------------------------------------------------------
require('bufferline').setup {
    options = {
        separator_style = "slope",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        indicator = {
            style = 'underline'    
        },
        diagnostics_indicator = function (count, level)
            local icon = level:match("error") and ""
            return " " .. icon .. count
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                highlight = "Directory",
                separator = true
            }
        }
    }
}
