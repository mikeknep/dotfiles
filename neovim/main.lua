local opts = {noremap = true, silent = true}
local map = vim.api.nvim_set_keymap

local nvim_lsp = require('lspconfig')
local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  --Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Only hook these mappings up when there is a LSP client attached
  -- See `:help vim.lsp.*` for documentation on any of the below functions
--  map('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
--  map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
--  map('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
  map('n', 'K', '<Cmd> lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  map('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  map('n', '<leader>q', "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>", opts)
  map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
--  map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  -- Forward to other plugins
  require'completion'.on_attach(client)
end

local servers = { "rust_analyzer" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
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
end

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = false,
    update_in_insert = false,
  }
)

local actions = require "telescope.actions"
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
