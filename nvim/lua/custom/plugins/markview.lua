return {
  'OXY2DEV/markview.nvim',
  lazy = false, -- Recommended
  -- ft = "markdown" -- If you decide to lazy-load anyway

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local presets = require('markview.presets').headings
    require('markview').setup {
      headings = presets.glow,
      typst = { enable = false },
    }
    require('markview.extras.headings').setup()
  end,
}
