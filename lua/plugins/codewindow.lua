return {
    "frenzox/codewindow.nvim",
    config = function()
        local codewindow = require("codewindow")

        codewindow.setup({
            auto_enable = false,
            exclude_filetypes = { "neo-tree" },
            window_border = "none",
            show_cursor = false,
            rel = "window",
        })
        codewindow.apply_default_keybinds()

        vim.api.nvim_set_hl(0, "CodewindowBackground", { bg = "#282a36" })
        vim.api.nvim_set_hl(0, "CodewindowUnderline", { bg = "#44475a" })
    end,
}
