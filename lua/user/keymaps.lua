local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
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
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)



-- Renamer
--vim.api.nvim_set_keymap("i", "<leader>5", '<cmd>lua require("renamer").rename()<cr>', {noremap = true, silent = true})
--vim.api.nvim_set_keymap("n", "<leader>5", '<cmd>lua require("renamer").rename()<cr>', {noremap = true, silent = true})

-- vim.api.nvim_set_keymap("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n", "<F2>", '<cmd>lua require("renamer").rename()<cr>', {noremap = true, silent = true})
-- vim.api.nvim_set_keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })


  -- vim.api.nvim_set_keymap("i", "<F2>", '<cmd>lua require("renamer").rename()<cr>', {noremap = true, silent = true})
  -- vim.api.nvim_set_keymap("n", "<F2>", '<cmd>lua require("renamer").rename()<cr>', {noremap = true, silent = true})
--easy_repalce
--keymap("n", "<F2>", '<cmd>lua require("easy_repalce").replace_selection()<cr>', {noremap = true, silent = true}))
--keymap("i", "<F2>", '<cmd>lua require("easy_repalce").replace_selection()<cr>', {noremap = true, silent = true}))


-- vim.api.nvim_set_keymap('n', '<F3>', ':lua require("replacer").run()<cr>', { silent = true })
--
-- keymap('i', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
-- keymap('n', '<F2>', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
-- keymap('n', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
-- keymap('v', '<leader>rn', '<cmd>lua require("renamer").rename()<cr>', { noremap = true, silent = true })
--

-- LSP Rename
-- notes for the future: Create a mini plugin. usinh Quickipeek (https://www.youtube.com/watch?v=1AOhfnokacE) 
-- to create a mini window for the user input to rename a variable (LSP.rename + Quickpeek)
keymap('i', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', {noremap = true, silent = true})
keymap('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', {noremap = true, silent = true})


local modes = {
  normal = "n",
  insert = "i",
  visual = "v",
  visual_block = "x",
  -- add more mode here if you want
}
local opts = { noremap = true, silent = true }

function set_keymap(keys)
  for mode, map in pairs(keys) do
      local key_mode = modes[mode]
      for key, value in pairs(map) do
        vim.api.nvim_set_keymap(key_mode, key, value, opts)
      end
  end
end
