return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    opts = {
    },
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
}
