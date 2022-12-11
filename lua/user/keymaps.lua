local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local map = vim.api.nvim_set_keymap

--Remap space as leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Move between windows 
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

-- Navigate buffers
map("n", "<S-Up>", ":bnext<CR>", opts)
map("n", "<S-Down>", ":bprevious<CR>", opts)


-- Visual --
-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)


-- TELESCOPE MAPPINGS --
map('n', '<Space>ff', '<Cmd>Telescope find_files<CR>', opts)
map('n', '<Space>fg', '<Cmd>Telescope live_grep<CR>', opts)
map('n', '<Space>fc', '<Cmd>Telescope git_bcommits<CR>', opts)


-- Visual Block --
-- Move text up and down
map("x", "J", ":move '>+1<CR>gv-gv", opts)
map("x", "K", ":move '<-2<CR>gv-gv", opts)
map("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
map("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

