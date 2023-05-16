require('nvim-tree').setup({
    --[[
    auto_close = true,
    diagnostics = { enable = true }
    --]]
    actions = {
        open_file = {
            quit_on_open = true,
        },
    },
})
