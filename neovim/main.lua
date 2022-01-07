local opts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  tele = require('telescope.builtin')

  -- Only hook these mappings up when there is a LSP client attached
  map('n', 'gd',          '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
  map('n', 'gi',          '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
  map('n', 'K',           '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
  map('n', '<leader>rn',  '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
  map('n', '<leader>a',   '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
  map('n', '<leader>ref', '<cmd>lua tele.lsp_references()<cr>', opts)
  map('n', '<leader>d',   '<cmd>lua tele.lsp_document_symbols()<cr>', opts)
  map('n', '<leader>q',   '<cmd>lua tele.lsp_workspace_symbols()<cr>', opts)
  map('n', '<leader>k',   '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
  map('n', '<leader>j',   '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)

  -- Forward to other plugins
  require'completion'.on_attach(client)
end

nvim_lsp["rust_analyzer"].setup {
  on_attach = on_attach,
  flags = {
    debounce_text_changes = 150,
  },
  settings = {
    ["rust-analyzer"] = {
      assist = {
        importGranularity = "module",
        importPrefix = "by_self",
      },
      cargo = {
        loadOutDirsFromCheck = true
      },
      -- procMacro = {
      --   enable = false
      -- },
      checkOnSave = {
        extraArgs = {
          "--target-dir", "/tmp/rust-analyzer-check"
        }
      }
    }
  }
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = false,
    update_in_insert = false,
  }
)

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
      }
    }
  }
}

require'toggle_lsp_diagnostics'.init({
  start_on = false,
})
