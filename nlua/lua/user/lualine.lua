require('lualine').setup({
    options = {theme = 'nord'},
    sections = {
        lualine_c = {'filename', {'buffers', mode = 1}},
        lualine_y = {'%p%%/%L'}  -- vim statusline item
    }
})
