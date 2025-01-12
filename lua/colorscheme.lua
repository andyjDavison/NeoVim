-----------------
-- COLORSCHEME --
-----------------

-- local colorscheme = 'moonfly'

-- local colorscheme = 'kanagawa-dragon'
-- wave (default heart warming theme)
-- dragon (late night sessions)
-- lotus (out in the open)

local colorscheme = 'tokyonight-night'
-- There are also colorschemes for the different styles.
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end