return {
    "simrat39/rust-tools.nvim",
    config = function()
        local extension_path = vim.env.HOME .. "/.vscode/extensions/vadimcn.vscode-lldb-1.9.1/"
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
                cmd = { "ra-multiplex" },
                settings = {
                    ["rust-analyzer"] = {
                        check = {
                            overrideCommand = {
                                "cargo",
                                "clippy",
                                "--message-format=json-diagnostic-rendered-ansi",
                                "--fix",
                                "--allow-dirty",
                            },
                        },
                        procMacro = {
                            enabled = true,
                        },
                        diagnostics = {
                            disabled = { "unresolved-proc-macro" },
                        },
                        semanticHighlighting = {
                            punctuation = {
                                enable = true,
                            },
                        },
                    },
                },
            },
            tools = {
                inlay_hints = {
                    enabled = false,
                },
            },
        }

        require("rust-tools").setup(opts)
    end,
}
