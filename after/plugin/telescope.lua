local telescope = require('telescope')
telescope.setup({
    pickers = {
        find_files = {
            no_ignore = true,
            hidden = true,
        }
    }
})

telescope.load_extension('file_browser')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fl', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', telescope.extensions.file_browser.file_browser, {})
