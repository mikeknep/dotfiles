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
Plug("j-hui/fidget.nvim", { tag = "legacy" })
Plug("rktjmp/lush.nvim")
Plug("mcchrish/zenbones.nvim")
Plug("rktjmp/fwatch.nvim")
Plug("olimorris/codecompanion.nvim")
Plug("zbirenbaum/copilot.lua")
vim.call("plug#end")

vim.opt.autoindent = true
vim.opt.background = "dark"
vim.opt.backspace = "indent,eol,start"
vim.opt.clipboard = "unnamed"
vim.opt.cmdheight = 0
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

vim.g.csv_no_conceal = 1
vim.g.gruvbox_contrast_dark = "hard"

require("color_switcher").setup({
    on_dark = function()
      vim.opt.background = "dark"
      vim.opt.termguicolors = false
      vim.cmd("colorscheme gruvbox")
    end,
    on_light = function()
      vim.opt.background = "light"
      vim.opt.termguicolors = true
      vim.api.nvim_set_hl(0, "MsgArea", { fg = 'black', bg = '#ecd0a9' })
      vim.cmd("colorscheme rosebones")
    end,
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})

vim.keymap.set("n", "<leader><leader>", ":Neotree toggle reveal float<CR>")
vim.keymap.set("n", "<C-f><C-r>", ":%s/")
vim.keymap.set("v", "<C-f><C-r>", ":s/")
vim.keymap.set("n", "<C-p>", ":execute 'FZF'<CR>")

vim.env.FZF_DEFAULT_COMMAND = "rg --files --hidden"

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

vim.keymap.set({'i', 'n', 'v'}, '<C-C>', '<esc>', { desc = 'Make Ctrl+C behave exactly like escape.' })

local nvim_lsp = require("lspconfig")

nvim_lsp["gopls"].setup {
  on_attach = on_attach,
  settings = {}
}

nvim_lsp.ruff.setup{
  on_attach = on_attach,
  init_options = {
    settings = {
      lint = {
        ignore = {
          -- https://docs.astral.sh/ruff/rules
          "D", -- all pydocstyle rules
          "E266", -- multiple leading '#' for comments
          "E402", -- module level input not at top of file
          "E501", -- line length
          "E722", -- bare 'except'
          "E731", -- assign a lambda expression (e.g. my_func = lambda: "hi")
        }
      }
    }
  }
}

nvim_lsp.basedpyright.setup{
  on_attach = on_attach,
  settings = {
    basedpyright = {
      analysis = {
        diagnosticSeverityOverrides = {
          -- https://docs.basedpyright.com/dev/configuration/config-files/#type-check-rule-overrides
          reportExplicitAny = false,
          reportMissingTypeStubs = false,
          reportUnannotatedClassAttribute = false,
          reportUnknownVariableType = false,
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

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
  signs = false,
  update_in_insert = false,
})


require("telescope").setup{
  defaults = {
    mappings = {
      i = {
        ["<C-h>"] = "which_key",
      }
    }
  }
}

require("fidget").setup()

require("copilot").setup()

local adapter = "copilot"
local cc = require("codecompanion")
cc.setup({
  display = {
    chat = {
      window = {
        layout = 'float',
        height = 0.8,
        width = 0.8,
      },
    },
  },
  adapters = {
    copilot = function()
      return require('codecompanion.adapters').extend('copilot', {
          schema = {
            model = {
              default = 'claude-3.7-sonnet',
            },
          },
        })
    end,
  },
  strategies = {
    chat = {
      adapter = adapter,
    },
    inline = {
      adapter = adapter,
    },
  },
})
vim.keymap.set('n', '<leader>c', cc.toggle, { silent = true })
vim.keymap.set('v', '<leader>c', ':CodeCompanionChat Add<CR>')
