-- Autocommand that reloads neovim whenever the file is saved
vim.cmd [[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]]

local packer = require('packer')
-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install plugins here
return packer.startup(function()
    use 'wbthomason/packer.nvim'              -- Packer itself
    use 'nvim-lua/plenary.nvim'               -- Common lua functions
    use 'kyazdani42/nvim-web-devicons'        -- Icons
    use 'kyazdani42/nvim-tree.lua'            -- File explorer
    use 'EdenEast/nightfox.nvim'              -- Colorscheme in LUA
    use 'windwp/nvim-autopairs'               -- Pair brackets
    use 'tpope/vim-unimpaired'                -- keymap for exchange line [e, ]e
    use 'lambdalisue/suda.vim'                -- :SudaRead or :SudaWrite to file
    use 'matbme/JABS.nvim'                    -- Buffer switcher in interactive way
    use 'hoob3rt/lualine.nvim'                -- Status line
    use 'mhinz/vim-startify'                  -- Startify greeter
    use 'lukas-reineke/indent-blankline.nvim' -- Indent blank line
    use 'Bryley/neoai.nvim'                   -- Neo AI
    use 'Decodetalkers/csv-tools.lua'         -- CSV highlight
    use 'dkarter/bullets.vim'
    use 'MunifTanjim/nui.nvim'
    use 'tpope/vim-fugitive'                  -- fugitive git function in vim
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    --[[
    use({
        'MeanderingProgrammer/markdown.nvim',
        as = 'render-markdown', -- Only needed if you have another plugin named markdown.nvim
        after = { 'nvim-treesitter' },
        -- requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
        -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
        config = function()
            require('render-markdown').setup({})
        end,
    })
    ]]--
    use {
        "nvim-neorg/neorg",
        rocks = { "lua-utils.nvim", "nvim-nio", "nui.nvim", "plenary.nvim", "pathlib.nvim" },
        tag = "*", -- Pin Neorg to the latest stable release
        config = function()
        require("neorg").setup()
        end,
    }
    use {
            "OXY2DEV/markview.nvim",
            lazy = false,      -- Recommended
            -- ft = "markdown" -- If you decide to lazy-load anyway
            dependencies = {
                "nvim-treesitter/nvim-treesitter",
                "nvim-tree/nvim-web-devicons"
            }
    }
    local presets = require("markview.presets").headings;
    require("markview").setup({
        headings = presets.glow;
    });
    require("markview.extras.headings").setup();
end)
