local set = vim.opt

set.hidden = true                     -- Navigate to another buffer w/o saving current
set.clipboard = "unnamedplus"
set.conceallevel = 0                  -- Markdown file need this
set.fileencoding = "utf-8"            -- Set encoding
set.mouse = "a"                       -- Enable mouse
set.termguicolors = true              -- Enalbe 24-bit color in TUI
set.ruler = true                      -- Show the cursor position all the time

set.expandtab = true                  -- Convert tab to spaces
set.smarttab = true                   -- Will realize you have 2 vs 4
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.smartindent = true                -- Make indent smart
set.autoindent = true

set.hlsearch = true                   -- Enable highlighting of search
set.incsearch = true                  -- Show pattern as it was typed so far
set.ignorecase = true                 -- Case insensitive search
set.smartcase = true                  -- Case sensitivie when cap exist in search

set.splitbelow = true                 -- Split to below
set.splitright = true                 -- Split to right
set.wrap = false                      -- Wrap text in long line - set nowrap
set.scrolloff = 5                     -- Scroll start when cursor is N lines before

set.relativenumber = true             -- Show relative number
set.cursorline = true                 -- Enable highlighting of current line

set.list = true                       -- Enable list chars
set.listchars:append("space:.", "eol:↴") -- Append.listchars: space, eol

set.undofile = true                   -- Enable undo file
set.completeopt = "menuone,noselect"  -- mostly just for cmp

-- vim global variables for bullets.vim
-- vim.g.bullets_enable_in_empty_buffers = 0          -- default is '1' enable bullets
vim.g.bullets_enabled_file_types = {"markdown"}       -- list of file types enabled
