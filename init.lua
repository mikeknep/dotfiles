local Plug = vim.fn["plug#"]
vim.call("plug#begin", "~/.config/nvim/plugged")
Plug("christoomey/vim-tmux-navigator")
Plug("elmcast/elm-vim")
Plug("junegunn/fzf")
Plug("junegunn/fzf.vim")
Plug("gruvbox-community/gruvbox")
Plug("sheerun/vim-polyglot")
Plug("tpope/vim-fugitive")
Plug("vim-scripts/tComment")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("neovim/nvim-lspconfig")
Plug("nvim-lua/lsp_extensions.nvim")
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")
Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
Plug("WhoIsSethDaniel/toggle-lsp-diagnostics.nvim")
Plug("MunifTanjim/nui.nvim")
Plug("kyazdani42/nvim-web-devicons")
Plug("nvim-neo-tree/neo-tree.nvim", { branch = "v2.x" })
Plug("j-hui/fidget.nvim")
vim.call("plug#end")

vim.opt.autoindent = true
vim.opt.background = "dark"
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard = "unnamed"
vim.opt.confirm = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.list = true
vim.opt.listchars = "tab:»·,trail:·"
vim.opt.number = true
vim.opt.scrolloff = 4
vim.opt.shiftwidth = 2
vim.opt.showcmd = true
vim.opt.smartcase = true
vim.opt.softtabstop = 2
vim.opt.splitright = true
vim.opt.startofline = false
vim.opt.swapfile = false
vim.opt.tabstop = 2
vim.opt.wrap = false

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[lua vim.lsp.buf.formatting_sync()]],
})

vim.keymap.set("n", "<leader><leader>", ":Neotree toggle<CR>")
vim.keymap.set("n", "<C-f><C-r>", ":%s/")
vim.keymap.set("v", "<C-f><C-r>", ":s/")
vim.keymap.set("n", "<C-p>", ":execute 'FZF'<CR>")

vim.env.FZF_DEFAULT_COMMAND = "rg --files --hidden"

-- It'd be nice to switch to ellisonleao/gruvbox.nvim (lua),
-- but unfortunately while the colors as rendered by that plugin
-- are "more correct," I actually prefer the seemingly "incorrect"
-- way they are rendered by the gruvbox-community/gruvbox plugin.
-- For example, running the script linked below "fixes" the colors
-- to "precise gruvbox colors" that indeed match the way they are
-- rendered by default with ellisonleao/gruvbox.nvim... but they're
-- so much uglier! I've decided to just leave it alone.
-- https://github.com/gruvbox-community/gruvbox/wiki/Terminal-specific#a-256-color-gruvbox-palette-shellscript
vim.g.gruvbox_contrast_dark = "hard"
vim.cmd("colorscheme gruvbox")

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      always_show = {
        "zzz-mk",
      }
    }
  }
})

require("mason").setup()
-- Available LSP servers and their mason-lspconfig names can be found here:
-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
require("mason-lspconfig").setup({
  ensure_installed = {"gopls", "pylsp", "rust_analyzer", "terraformls"}
})

local opts = {noremap = true, silent = true}

local on_attach = function(client, bufnr)
  --Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

  tele = require("telescope.builtin")

  vim.keymap.set("n", "gd",         vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gi",         vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "K",          vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>a",  vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<leader>r",  tele.lsp_references, opts)
  vim.keymap.set("n", "<leader>d",  tele.lsp_document_symbols, opts)
  vim.keymap.set("n", "<leader>q",  tele.lsp_workspace_symbols, opts)
  vim.keymap.set("n", "<leader>k",  vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>j",  vim.diagnostic.goto_next, opts)
end

local nvim_lsp = require("lspconfig")

nvim_lsp["gopls"].setup {
  on_attach = on_attach,
  settings = {}
}

nvim_lsp["pylsp"].setup {
  on_attach = on_attach,
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {"E501"}
        }
      }
    }
  }
}

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
      checkOnSave = {
        extraArgs = {
          "--target-dir", "/tmp/rust-analyzer-check"
        }
      }
    }
  }
}

nvim_lsp["terraformls"].setup {
  on_attach = on_attach,
  settings = {}
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = false,
    update_in_insert = false,
  }
)

require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
      }
    }
  }
}

require("toggle_lsp_diagnostics").init({
  start_on = false,
})

require("fidget").setup()
