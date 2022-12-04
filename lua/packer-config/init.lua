return require 'packer'.startup(function()
    use 'wbthomason/packer.nvim'    --Pack Manager
    use 'EdenEast/nightfox.nvim'    --Theme. My Favorite:CARBON
    use 'nvim-tree/nvim-tree.lua'   --Menubar on the left
    use 'nvim-tree/nvim-web-devicons' --Enable icons for the menubar
    use 'wbthomason/packer.nvim' -- Package manager
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'onsails/lspkind-nvim'

end)
