vim.g.mapleader = ","

-- remove highlights
vim.keymap.set("n", "<leader>h", ":nohl<CR>")

-- nerdtree
vim.keymap.set("n", "<leader>f", ":NERDTreeToggle<CR>")
vim.g.NERDTreeMapActivateNode = "l"

-- save and quit
vim.keymap.set("n", "<C-s>", ":wa<CR>")
vim.keymap.set("n", "<leader>w", ":wa<CR>")
vim.keymap.set("i", "<C-s>", "<Esc>:wa<CR>a")
vim.keymap.set("n", "<leader>q", ":wqa<CR>")

-- telescope
local tel = require("telescope.builtin")
vim.keymap.set("n", "<leader>sf", tel.find_files)
vim.keymap.set("n", "<leader>sg", tel.live_grep)

