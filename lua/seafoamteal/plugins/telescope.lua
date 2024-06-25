return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "folke/todo-comments.nvim",
    },
    config = function()
        require("telescope").setup({})

        local builtin = require("telescope.builtin")
        local keymap = vim.keymap

        keymap.set("n", "<leader>pf", builtin.find_files, {
            desc = "Find files"
        })

        keymap.set("n", "<leader>ps",
        --function()
            --builtin.grep_string({ search = vim.fn.input("Grep> ") })
        --end,
        builtin.live_grep,
        { desc = "Grep string" })

        keymap.set("n", "<leader>pb", builtin.buffers, {
            desc = "Search buffers"
        })
        
        keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", {
            desc = "Find todos"
        })
    end
}
