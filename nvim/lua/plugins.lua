local Plug = vim.fn["plug#"]
vim.call("plug#begin", "~/.config/nvim/plugged")

-- File explorer
Plug "preservim/nerdtree"
Plug "ryanoasis/vim-devicons"

-- auto completion
Plug "neovim/nvim-lspconfig"
Plug 'SirVer/ultisnips'
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-path"
Plug "hrsh7th/cmp-nvim-lsp-signature-help"
Plug "onsails/lspkind-nvim"
Plug "nvim-lua/lsp-status.nvim"
Plug 'j-hui/fidget.nvim'

-- Rust
Plug "rust-lang/rust.vim"
Plug "simrat39/rust-tools.nvim"

-- Comments
Plug "tpope/vim-commentary"

-- KDL
Plug "imsnif/kdl.vim"

-- Close pairs
Plug "windwp/nvim-autopairs"

-- Colors
Plug('folke/tokyonight.nvim', { branch = 'main' })
Plug "leafOfTree/vim-svelte-plugin"
Plug "cakebaker/scss-syntax.vim"
Plug "khaveesh/vim-fish-syntax"

Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'

-- Movemnt
Plug "easymotion/vim-easymotion"

-- Discord
Plug "andweeb/presence.nvim"

-- File searching
Plug "nvim-lua/plenary.nvim"
Plug("nvim-telescope/telescope.nvim", {tag = "0.1.1"})

-- latex
Plug 'lervag/vimtex'

-- Idk
Plug 'folke/trouble.nvim'
Plug 'folke/todo-comments.nvim'

Plug "Aasim-A/scrollEOF.nvim"
vim.call("plug#end")
