vim.g.mapleader = ' '
vim.g.maplocalleader = ' '


-- editor related options
vim.o.showcmd = true                 -- displays partial command in last line of the screen
vim.o.number = true                  -- show line no's
vim.o.cursorline = true              -- highlight line where cursor is
vim.o.mouse = 'a'                    -- all modes
vim.o.autoread = true                -- reads file changes into cur buffer if buffer is pure

vim.o.backspace = 'indent,eol,start' -- backspacing over chars

vim.o.ignorecase = true              -- searching ignores case
vim.o.smartcase = true               -- auto enable case sensitive search with uppercase char
vim.o.laststatus = 2                 -- always display status line in all split windows
vim.o.wrap = true                    -- enable word wrap
vim.o.breakindent = true             -- preserve indent of virtual line

vim.o.tabstop = 2                    -- space tab char occupies
vim.o.shiftwidth = 2                 -- num chars used to indent a line
vim.o.expandtab = true               -- whether to turn tab into spaces
vim.o.shiftround = true              -- rounds indent to nearest shiftwidth multiple


-- Save undo history
vim.o.undofile = true

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'


-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true
