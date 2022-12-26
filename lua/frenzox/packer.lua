vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)

    use('akinsho/org-bullets.nvim')
    use('arkav/lualine-lsp-progress')
    use('dracula/vim')
    use('editorconfig/editorconfig-vim')
    use('folke/todo-comments.nvim')
    use('github/copilot.vim')
    use('glts/vim-magnum')
    use('glts/vim-radical')
    use('goerz/jupytext.vim')
    use('hkupty/iron.nvim')
    use('kosayoda/nvim-lightbulb')
    use('kyazdani42/nvim-web-devicons')
    use('linty-org/readline.nvim')
    use('lukas-reineke/indent-blankline.nvim')
    use('lukas-reineke/virt-column.nvim')
    use('mbbill/undotree')
    use('nvim-lua/plenary.nvim')
    use('nvim-lua/popup.nvim')
    use('nvim-lualine/lualine.nvim')
    use('nvim-telescope/telescope-file-browser.nvim')
    use('nvim-telescope/telescope.nvim')
    use('rmagatti/auto-session')
    use('romgrk/barbar.nvim')
    use('rust-lang/rust.vim')
    use('simrat39/symbols-outline.nvim')
    use('stevearc/dressing.nvim')
    use('tpope/vim-abolish')
    use('tpope/vim-commentary')
    use('tpope/vim-endwise')
    use('tpope/vim-fugitive')
    use('tpope/vim-repeat')
    use('tpope/vim-speeddating')
    use('tpope/vim-surround')
    use('wbthomason/packer.nvim')

    use('mg979/vim-visual-multi', {
        branch = 'master'
    })

    use('nvim-treesitter/nvim-treesitter', {
        run = function()
            vim.cmd('TSUpdate')
        end
    })

    use {
        'nvim-orgmode/orgmode',
        config = function()
                require('orgmode').setup{}
        end
    }


    use {
        'saecki/crates.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } },
        config = function()
            require('crates').setup()
        end,
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-cmdline'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-vsnip'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/vim-vsnip'},
            {'saadparwaiz1/cmp_luasnip'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
end)
