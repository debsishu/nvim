return {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        require("todo-comments").setup()
        require("telescope").load_extension("todo-comments")
    end,
    keys = {
        { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Fuzzy Find Todos" },
    }
}
