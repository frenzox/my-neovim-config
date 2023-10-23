return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                rust_analyzer = {},
            },
            setup = {
                pyright = function(_, _)
                    local capabilities = vim.lsp.protocol.make_client_capabilities()
                    capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }

                    require("lspconfig").pyright.setup({
                        capabilities = capabilities,
                    })

                    return true
                end,
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rustfmt",
                "shellcheck",
                "shfmt",
                "stylua",
            },
        },
    },
}
