-----------------
-- COLORSCHEME --
-----------------

-- local colorscheme = 'kanagawa-dragon'
-- wave (default heart warming theme)
-- dragon (late night sessions)
-- lotus (out in the open)

local colorscheme = 'moonfly'

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify('colorscheme ' .. colorscheme .. ' not found!')
    return
end