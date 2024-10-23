vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-a>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertical" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontal" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { 
    desc = "Close current split" 
})

keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })
