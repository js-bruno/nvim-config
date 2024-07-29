local function getMode()
    local mode = vim.api.nvim_get_mode().mode
    if mode == "n" then
        return "NORMAL"
    elseif "i" then
        return "INSERT"
    else
        return mode
    end
end

local function filename3()
    return vim.fn.expand("%:t")
end

local function stats()
    return vim.fn.expand("%l:%c")
end

local bar = { getMode(), filename3(), stats() }

function statusline_render()
    return table.concat(bar, "      ")
end

vim.opt.statusline = "%{%v:lua.statusline_render()%}"
