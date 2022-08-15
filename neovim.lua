local Plug = vim.fn["plug#"]
vim.call("plug#begin", "~/.config/nvim/plugged")

Plug("christoomey/vim-tmux-navigator")
Plug("elmcast/elm-vim")
Plug("fatih/vim-go")
Plug("junegunn/fzf")
Plug("junegunn/fzf.vim")
Plug("morhetz/gruvbox")
Plug("sheerun/vim-polyglot")
Plug("tpope/vim-fugitive")
Plug("vim-scripts/tComment")
Plug("williamboman/mason.nvim")
Plug("williamboman/mason-lspconfig.nvim")
Plug("neovim/nvim-lspconfig")
Plug("nvim-lua/completion-nvim")
Plug("nvim-lua/lsp_extensions.nvim")
Plug("nvim-lua/plenary.nvim")
Plug("nvim-telescope/telescope.nvim")
Plug("nvim-treesitter/nvim-treesitter", {["do"] = ":TSUpdate"})
Plug("WhoIsSethDaniel/toggle-lsp-diagnostics.nvim")
Plug("MunifTanjim/nui.nvim")
Plug("kyazdani42/nvim-web-devicons")
Plug("nvim-neo-tree/neo-tree.nvim", { branch = "v2.x" })

vim.call("plug#end")

vim.opt.autoindent = true
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

vim.g.elm_format_autosave = 1
vim.g.go_fmt_autosave = 1
vim.g.rustfmt_autosave = 1
vim.g.terraform_align=1
vim.g.terraform_fmt_on_save=1

vim.keymap.set("n", "<leader><leader>", ":Neotree toggle<CR>")
vim.keymap.set("n", "<C-f><C-r>", ":%s/")
vim.keymap.set("v", "<C-f><C-r>", ":s/")
vim.keymap.set("n", "<C-p>", ":execute 'FZF'<CR>")

vim.env.FZF_DEFAULT_COMMAND = "rg --files --hidden"

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
      always_show = {
        ".github",
        "zzz-mk",
      }
    }
  }
})

-- TODO:
-- clean up ./neovim/main.lua, and maybe just dunk it all into this file
-- mason-lspconfig bridge (esp. for auto-requirements)
-- decide on trim trailing whitespace (vim: autocmd BufWritePre ...)
-- colors (consider switching to https://github.com/ellisonleao/gruvbox.nvim)
-- check if any more vim options can be removed (e.g. setting to default)
