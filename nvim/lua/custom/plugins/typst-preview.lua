return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
  config = function()
    require('typst-preview').setup {
      -- open_cmd = 'firefox %s -P typst-preview --class typst-preview',
      open_cmd = 'firefox %s',
      dependencies_bin = {
        ['tinymist'] = nil,
        ['websocat'] = nil,
      },
    }
  end,
}
