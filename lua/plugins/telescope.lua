return {
    {
        "telescope.nvim",
        dependencies = {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            config = function()
                require("telescope").load_extension("fzf")
            end,
        },
        opts = {
            defaults = {
                mappings = {
                    i = {
                        ["<C-n>"] = require("telescope.actions").move_selection_next,
                        ["<C-p>"] = require("telescope.actions").move_selection_previous,
                    },
                },
            },
        },
    },
}
