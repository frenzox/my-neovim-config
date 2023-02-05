local uconv = require('nvim-uconv')
uconv.setup({
    decimal_places = 2,
})

local opts = {
    noremap = true,
    silent = false,
    expr = true
}

vim.keymap.set({'n', 'v'}, '<leader>tr', uconv.angle.degrees_to_radians, opts)
vim.keymap.set({'n', 'v'}, '<leader>td', uconv.angle.radians_to_degrees, opts)
vim.keymap.set({'n', 'v'}, '<leader>fm', uconv.prefix.from_milli, opts)
vim.keymap.set({'n', 'v'}, '<leader>tm', uconv.prefix.to_milli, opts)
