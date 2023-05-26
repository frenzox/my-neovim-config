local util = require("lspconfig.util")
local path = util.path

local function get_venv_python(workspace)
    local match = vim.fn.glob(util.path.join(workspace, "Pipfile"))
    if match ~= "" then
        return vim.fn.trim(vim.fn.system("PIPENV_PIPFILE=" .. match .. " pipenv --venv"))
    end

    match = vim.fn.glob(path.join(workspace, "poetry.lock"))
    if match ~= "" then
        return vim.fn.trim(vim.fn.system("poetry --directory " .. workspace .. " env info -p"))
    end

    if vim.env.VIRTUAL_ENV then
        return vim.env.VIRTUAL_ENV
    end
end

return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            setup = {
                -- pylsp = function(_, opts)
                --     require("lspconfig").pylsp.setup({
                --         server = opts,
                --         cmd = { vim.env.HOME .. "/.local/share/nvim/mason/bin/pylsp" },
                --         cmd_env = {
                --             PYTHONPATH = vim.fn.glob(
                --                 util.path.join(
                --                     get_venv_python(vim.fn.getcwd()),
                --                     "lib/python*/site-packages/"
                --                 )
                --             ),
                --         },
                --     })
                --     return true
                -- end,
                pyright = function(_, opts)
                    local capabilities = vim.lsp.protocol.make_client_capabilities()
                    capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }

                    require("lspconfig").pyright.setup({
                        capabilities = capabilities,
                    })
                    return true
                end,
            },
            servers = {
                -- pylsp = {
                --     settings = {
                --         pylsp = {
                --             plugins = {
                --                 flake8 = {
                --                     enabled = true,
                --                     config = ".flake8",
                --                 },
                --                 pylsp_mypy = {
                --                     enabled = false,
                --                     report_progress = true,
                --                     ignore_missing_imports = true,
                --                 },
                --                 pycodestyle = {
                --                     enabled = false,
                --                 },
                --             },
                --         },
                --     },
                -- },
            },
        },
    },
    { import = "lazyvim.plugins.extras.lang.json" },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "rustfmt",
                "shellcheck",
                "shfmt",
                "stylua",
            },
        },
    },
}
