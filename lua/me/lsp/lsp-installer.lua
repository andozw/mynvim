local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
    print("nvim-lsp-installer fail")
    return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = require("me.lsp.handlers").on_attach,
        capabilities = require("me.lsp.handlers").capabilities,
    }

    -- if server.name == "jsonls" then
    --     local jsonls_opts = require("me.lsp.settings.jsonls")
    --     opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
    -- end

    -- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
    server:setup(opts)
end)
