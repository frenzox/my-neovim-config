return {
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                pyright = {},
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "flake8",
                "rust-analyzer",
                "rustfmt",
                "shellcheck",
                "shfmt",
                "stylua",
            },
        },
    },
}
