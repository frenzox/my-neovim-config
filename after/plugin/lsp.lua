local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'clangd',
    'eslint',
    'rust_analyzer',
    'sumneko_lua',
    'tsserver',
})

lsp.set_preferences({
    set_lsp_keymaps = false
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', { settings = { Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.configure('pylsp', {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    enabled = false
                },
                pyflakes = {
                    enabled = false
                },
            }
        }
    }
})


local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ['<CR>'] = function(fallback)
        if cmp.visible() then
            cmp.confirm({ select = true })
        else
            fallback()
        end
    end,
})

--[[
Disable completion with tab.
This helps with copilot setup.
--]]
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

local cmp_sources = lsp.defaults.cmp_sources()
table.insert(cmp_sources, { name = 'crates' })
table.insert(cmp_sources, { name = 'orgmode' })

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    sources = cmp_sources,
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = ' ',
        warn = ' ',
        hint = ' ',
        info = ' '
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    if client.name == 'eslint' then
        vim.cmd.LspStop('eslint')
        return
    end

    client.server_capabilities.semanticTokensProvider = nil

    vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '<space>ws', vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})
