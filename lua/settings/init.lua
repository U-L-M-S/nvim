local set = vim.opt

set.expandtab = true                                        -- convert tabs to spaces
set.smarttab = true 
set.shiftwidth = 4                                          -- the number of spaces inserted for each indentation
set.tabstop = 4                                             -- insert 4 spaces for a tab

set.hlsearch = true                                         -- highlight all matches on previous search pattern
set.incsearch = true
set.ignorecase = true                                       -- ignore case in search patterns
set.smartcase = true                                        -- smart case

set.splitbelow = true                                       -- force all horizontal splits to go below current window
set.splitright = true                                       -- force all vertical splits to go to the right of current window
set.wrap = false                                            -- display lines as one long line
set.scrolloff = 5                                           -- minimal number of screen lines to keep above and below the cursor
set.signcolumn = "yes"                                      -- always show the sign column, otherwise it would shift the text each time
set.fileencoding = 'utf-8'                                  -- the encoding written to a file

set.number = true                                           -- set numbered lines
set.relativenumber = true                                   -- set relative numbered lines
set.cursorline = true                                       -- highlight the current line

set.updatetime = 100                                        -- faster completion (4000ms default)

set.hidden = true

vim.notify = require("notify")

set.clipboard = "unnamedplus"                               -- allows neovim to access the system clipboard
set.mouse = "a"                                             -- allow the mouse to be used in neovim


-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.api.nvim_exec('silent! normal! g`"zv', false)
    end,
})
