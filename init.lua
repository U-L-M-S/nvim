require('settings')
require('packer-config')
require('colorschemes-config.carbonfox')
require('nvim-tree-config')
require('mappings')
local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
end)
require('lsp-config.nvim-cmp')
require'lspconfig'.pyright.setup{}





