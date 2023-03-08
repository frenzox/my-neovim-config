return {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
        local nls = require("null-ls")
        return {
            sources = {
                nls.builtins.formatting.stylua,
                nls.builtins.formatting.isort,
            },
        }
    end,
}