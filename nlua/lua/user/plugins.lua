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
    use 'Decodetalkers/csv-tools.lua'
    use 'MunifTanjim/nui.nvim'
    use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
end)
