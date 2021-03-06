"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------

syntax enable
filetype plugin indent on
set nocompatible    " be improved
set hidden          " Navigate to another buffer w/o saving current
set encoding=UTF-8  " Set encoding
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
set smartcase       " Case sensitive when cap exist in search
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
set signcolumn=yes:2     " Show column for sign
set undofile                           " Save undos after file closes
set undodir=$HOME/.config/nvim/undo    " Where to save undo histories
set splitright

"--------------------------------------------------------------------------
" Key maps 
"--------------------------------------------------------------------------

" Alt+<key> to move up / down line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap jk <esc>
inoremap kj <esc>

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

call plug#begin('~/.config/nvim/plugged')
source ~/.config/nvim/plugins/gruvbox.vim               " Color scheme
source ~/.config/nvim/plugins/coc.vim                   " Conquer of completion
source ~/.config/nvim/plugins/semshi.vim                " Semantic Python highlight
source ~/.config/nvim/plugins/nerdcommenter.vim         " Nerd commenter
source ~/.config/nvim/plugins/airline.vim               " Airline
source ~/.config/nvim/plugins/vim-kitty.vim             " vim-kitty syntax highlight
source ~/.config/nvim/plugins/startify.vim              " Startup screen
source ~/.config/nvim/plugins/vim-unimpaired.vim        " Pairs mapping, exchange line(s)
source ~/.config/nvim/plugins/suda.vim                  " :SudaRead or :SudaWrite files with sudo command
" Plug 'morhetz/gruvbox'                                  " Color scheme
" Plug 'neoclide/coc.nvim', {'branch': 'release'}         " Conquer of Completion
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plug 'preservim/nerdcommenter'                          " Commenter
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
call plug#end()

"--------------------------------------------------------------------------
" Miscellaneous
"--------------------------------------------------------------------------

" netrw settings
let g:netrw_preview = 1                         " Split open right
let g:netrw_liststyle = 3                       " Show tree listing
" other settings
set background=dark                             " for the dark version
autocmd BufRead,BufNewFile *.vifm set filetype=vim
autocmd TermOpen * setlocal nonumber norelativenumber scl=no 
