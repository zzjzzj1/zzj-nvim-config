return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- gruvbox theme
    use {
        "ellisonleao/gruvbox.nvim",
        requires = { "rktjmp/lush.nvim" }
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    use({ "neovim/nvim-lspconfig" })
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
    -- vsnip
    use 'hrsh7th/cmp-vsnip' -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'nvim-lualine/lualine.nvim'
    use "windwp/nvim-autopairs"
    use "windwp/nvim-ts-autotag"
    use { 'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons' }
    use "onsails/lspkind.nvim"
    use 'numToStr/Comment.nvim'
    use {
        "max397574/better-escape.nvim",
        config = function()
            require("better_escape").setup()
        end,
    }
    use {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            require('dashboard').setup {

                config = {
                    header = {
                        '',
                        '███████╗███████╗░░░░░██╗███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗',
                        '╚════██║╚════██║░░░░░██║████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║',
                        '░░███╔═╝░░███╔═╝░░░░░██║██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║',
                        '██╔══╝░░██╔══╝░░██╗░░██║██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║',
                        '███████╗███████╗╚█████╔╝██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║',
                        '╚══════╝╚══════╝░╚════╝░╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝',
                        '',
                    },
                }
            }
        end,
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    use { "akinsho/toggleterm.nvim", tag = '*' }
    use "folke/trouble.nvim"
    use { 'stevearc/dressing.nvim' }
end)
