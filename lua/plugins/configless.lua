return {
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "dracula",
        },
    },

    {
        "saecki/crates.nvim",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
        },
    },

    { "Mofiqul/dracula.nvim" },
    { "github/copilot.vim" },
    { "rmagatti/auto-session" },
    { "stevearc/dressing.nvim" },
    { "tpope/vim-abolish" },
    { "tpope/vim-commentary" },
    { "tpope/vim-endwise" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-repeat" },
    { "tpope/vim-speeddating" },
    { "tpope/vim-surround" },
}
