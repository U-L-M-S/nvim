return require 'packer'.startup(function()
    use 'wbthomason/packer.nvim'    --> Pack Manager
    use 'EdenEast/nightfox.nvim'    --> Theme. My Favorite:CARBON
    use 'nvim-tree/nvim-tree.lua'   --> Menubar on the left
    use 'nvim-tree/nvim-web-devicons' --> Enable icons for the menubar
    use 'rcarriga/nvim-notify' --> Notifications bar
    use 'nvim-lualine/lualine.nvim' --> Line with informations about the file
    use 'romgrk/barbar.nvim' --> Tabs bar
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'nvim-treesitter/nvim-treesitter-refactor' --> Module of treesitter. It makes the code more readibly and better to navigate
                                -- or , branch = '0.1.x',
    use{'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { {'nvim-lua/plenary.nvim'} }}
    use 'windwp/nvim-autopairs'    --> It closes automatically syntax like (), [], <>, etc
	use 'norcalli/nvim-colorizer.lua'
	use 'lukas-reineke/indent-blankline.nvim' --> indent guides for neovim
	use 'akinsho/toggleterm.nvim' --> Terminal inside nvim
	use 'numToStr/Comment.nvim'   --> Create shortcuts for comments
	use 'ggandor/lightspeed.nvim' --> Allow the user to search for words by jumping lines and words 
    use 'fladson/vim-kitty'       --> Give kitty-config a better look (only the fount colors actually...)
	use 'startup-nvim/startup.nvim' --> Startup page
    use 'lervag/vimtex' --> For the usage of LaTex
    use 'mfussenegger/nvim-dap'
    use 'p00f/nvim-ts-rainbow' 
    use 'JoosepAlviste/nvim-ts-context-commentstring'  --> Create shortcuts for comments
    use 'Pocco81/TrueZen.nvim'  --> Focus only the current window
    use 'nvim-lua/plenary.nvim'


    --> LSP plugins <--
--    use 'williamboman/mason.nvim' --> Make LSP easier
--    use 'williamboman/mason-lspconfig.nvim' --> nvim-lsp-installer 2.0
--    use 'neovim/nvim-lspconfig' --> Configurations for Nvim LSP
--    use 'hrsh7th/nvim-cmp' --> Autocompletion plugin
--    use 'hrsh7th/cmp-nvim-lsp' --> LSP source for nvim-cmp
--    use 'saadparwaiz1/cmp_luasnip' --> Snippets source for nvim-cmp
--!    use 'L3MON4D3/LuaSnip' --> Snippets plugin
--    use 'rafamadriz/friendly-snippets'
--    use 'onsails/lspkind-nvim' --> Icons like VScode
--    use 'tami5/lspsaga.nvim' --> icons for LSP diagnostics
--    use 'jose-elias-alvarez/null-ls.nvim'



    --> CMP PLUGINS <--
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline' 
    use 'saadparwaiz1/cmp_luasnip'

    --> For Snippets
    use 'L3MON4D3/LuaSnip'
    use 'rafamadriz/friendly-snippets'

end)

