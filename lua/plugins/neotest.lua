return {
    "nvim-neotest/neotest",
    dependencies = {
        "antoinemadec/FixCursorHold.nvim",
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        "rouge8/neotest-rust",
    },
    config = function()
        return require("neotest").setup({
            adapters = {
                require("neotest-rust")({
                    args = { "--no-capture", "--exclude=rocsys-embedded-gpio-mini" },
                }),
            },
        })
    end,
}
