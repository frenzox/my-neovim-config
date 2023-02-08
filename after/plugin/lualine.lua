require('lualine').setup {
    sections = {
        lualine_c = {
            {
                'lsp_progress',
                display_components = { 'spinner', { 'percentage' }},
                separators = {
                    component = ' ',
                    progress = ' | ',
                    message = { pre = '(', post = ')'},
                    percentage = { pre = '', post = '%% ' },
                    title = { pre = '', post = ': ' },
                    lsp_client_name = { pre = '[', post = ']' },
                    spinner = { pre = '', post = '' },
                },
                timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 1000 },
                spinner_symbols = {
                    '◜',
                    '◠',
                    '◝',
                    '◞',
                    '◡',
                    '◟',
                }
            }
        }
    },
    options = {
        theme = 'dracula',
        globalstatus = true,
    }
}
