local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }




vim.g.mapleader = ' '

map('n', '<leader>m', ':NvimTreeToggle<CR>', opts)


--NAVIGATION--
-- Move between windows in a buffer
map('n', '<C-Left>', '<C-w>h', opts)
map('n', '<C-Down>', '<C-w>h', opts)
map('n', '<C-Up>',   '<C-w>k', opts)
map('n', '<C-Right>','<C-w>l', opts)


--RESIZE WINDOWS--
map('n', '<C-h>',':vertical resize +2<CR>', opts)
map('n', '<C-l>',':vertical resize -2<CR>', opts)
map('n', '<C-j>',':resize +2<CR>', opts)
map('n', '<C-k>',':resize -2<CR>', opts)


map('n', '<S-u>', ':redo<CR>', opts)

-- INDENT MODE--
-- Move selected areas (shift+v) to right on left
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)


-- BARBAR MAPPINGS --
-- Move to previous/next
map('n', '<S-Up>', '<Cmd>BufferPrevious<CR>', opts)  -- Capital H
map('n', '<S-Down>', '<Cmd>BufferNext<CR>', opts)      -- Capital L
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)



-- TELESCOPE MAPPINGS --
map('n', '<Space>ff', '<Cmd>Telescope find_files<CR>', opts)
map('n', '<Space>fg', '<Cmd>Telescope live_grep<CR>', opts)
map('n', '<Space>fc', '<Cmd>Telescope git_bcommits<CR>', opts)
