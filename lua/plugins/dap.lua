return {
    "mfussenegger/nvim-dap",
    keys = {
        {
            "<F5>",
            function()
                require("dap").continue()
            end,
        },
        {
            "<F10>",
            function()
                require("dap").step_over()
            end,
        },
        {
            "<F11>",
            function()
                require("dap").step_into()
            end,
        },
        {
            "<F12>",
            function()
                require("dap").step_out()
            end,
        },
        {
            "<Leader>b",
            function()
                require("dap").toggle_breakpoint()
            end,
        },
        {
            "<Leader>B",
            function()
                require("dap").set_breakpoint()
            end,
        },
        -- {
        --     "<Leader>lp",
        --     function()
        --         require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))
        --     end,
        -- },
        {
            "<Leader>dr",
            function()
                require("dap").repl.open()
            end,
        },
        {
            "<Leader>dl",
            function()
                require("dap").run_last()
            end,
        },
        {
            "<Leader>dh",
            function()
                require("dap.ui.widgets").hover()
            end,
        },
        {
            "<Leader>dp",
            function()
                require("dap.ui.widgets").preview()
            end,
        },
        {
            "<Leader>df",
            function()
                require("dap.ui.widgets").centered_float(require("dap.ui.widgets").frames)
            end,
        },
        {
            "<Leader>ds",
            function()
                require("dap.ui.widgets").centered_float(require("dap.ui.widgets").scopes)
            end,
        },
    },
}
