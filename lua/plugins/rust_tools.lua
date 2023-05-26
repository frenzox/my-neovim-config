return {
    "simrat39/rust-tools.nvim",
    config = function()
        local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.8.1/"
        local codelldb_path = extension_path .. "adapter/codelldb"
        local liblldb_path = extension_path .. "lldb/lib/liblldb.so"

        local opts = {
            dap = {
                adapter = require("rust-tools.dap").get_codelldb_adapter(
                    codelldb_path,
                    liblldb_path
                ),
            },
            server = {
                settings = {
                    ["rust-analyzer"] = {
                        procMacro = {
                            enabled = true,
                        },
                        diagnostics = {
                            disabled = { "unresolved-proc-macro" },
                        },
                    },
                },
            },
        }
        require("rust-tools").setup(opts)
    end,
}
