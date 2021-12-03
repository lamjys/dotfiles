syntax enable
filetype plugin indent on
set nocompatible    " be improved
set encoding=UTF-8  " Set encoding
set hidden          " Navigate to another buffer w/o saving current
set termguicolors   " Enable 24-bit color in TUI
set ruler           " Show the cursor position all the time
set nowrap          " Display long lines as just one line
set number          " Show lines numbers
set relativenumber  " Show relative number
set mouse=a         " Enable mouse
set cursorline      " Enable highlighting of the current line
set hlsearch        " Enable highlighting of the search
set incsearch       " show pattern as it was typed so far
set ignorecase      " Case insensitive search
set clipboard=unnamedplus
set scrolloff=4     " Scroll start when cursor N lines before
set autoindent      " Good auto indent
set smartindent     " Makes indenting smart
set smartcase       " Makes case smart
set tabstop=4 softtabstop=4 shiftwidth=4
set smarttab        " Will realize you have 2 vs 4
set expandtab       " Converts tab to spacces
set fdm=indent      " Set fold method to indent
set foldlevelstart=99
set list                 " Show tabs
set listchars+=space:.   " Add show space
set undofile                           " Save undos after file closes
set undodir=$HOME/.config/nvim/undo    " Where to save undo histories

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'                                  " Color scheme
Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Conquer of Completion
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'preservim/nerdcommenter'                          " Commenter
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

colorscheme gruvbox


" Alt+<key> to move up / down line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap jk <esc>
inoremap kj <esc>


" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Airline theme
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" Coc Extension
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-pairs', 'coc-yaml', 
    \ 'coc-vimlsp', 'coc-tsserver', 'coc-sh', 'coc-css', 'coc-html', 
    \ 'coc-docker', 'coc-explorer', 'coc-phpls', 'coc-python']


set background=dark                             " for the dark version

autocmd BufRead,BufNewFile *.vifm set filetype=vim
