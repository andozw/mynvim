local M = {}

M.set_maps = function (bufnr)
    local opts = { noremap = true, silent = true }

    local mappings = {
        ["gD"] = "vim.lsp.buf.declaration()",
        ["gd"] = "vim.lsp.buf.definition()",
        ["K"] = "vim.lsp.buf.hover()",
        ["gi"] = "vim.lsp.buf.implementation()",
        ["<leader>k"] = "vim.lsp.buf.signature_help()",
        ["<leader>rn"] = "vim.lsp.buf.rename()",
        ["gr"] = "vim.lsp.buf.references()",
        ["<leader>ca"] = "vim.lsp.buf.code_action()",
        ["<leader>f"] = "vim.diagnostic.open_float()",
        ["[d"] = 'vim.diagnostic.goto_prev({ border = "rounded" })',
        ["gl"] = 'vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })',
        ["]d"] = 'vim.diagnostic.goto_next({ border = "rounded" })',
        ["<leader>q"] = "vim.diagnostic.setloclist()"
    }

    for k, v in pairs(mappings) do
        local command = "<CMD>lua " .. v .. "<CR>"
        vim.api.nvim_buf_set_keymap(bufnr, "n", k, command, { noremap = true, silent = true })
    end

    vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

return M
