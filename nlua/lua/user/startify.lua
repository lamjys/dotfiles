vim.cmd [[
" custom header
let g:startify_custom_header =
    \ 'startify#pad(startify#fortune#boxed())'

" custom number of most recent use files
let g:startify_files_number = 5

" hard code bookmarks of files or dir
let g:startify_bookmarks = [
    \ { 'c': '~/appdata/dotfiles/nvim/init.vim' },
    \ '~/appdata/mdnotes',
    \ ]
]]
