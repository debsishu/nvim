return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    keys = {
        { "<leader><space>", function() require('fzf-lua').files() end, desc = "Find Files" },
        { "<leader>/", function() require('fzf-lua').live_grep_native() end, desc = "Grep Files" },
    }
}
