return {
    "nvim-telescope/telescope.nvim",
    -- branch = "master", 
    tag = '0.1.8',
    dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        defaults = {
            file_ignore_patterns = {
                ".git/",
                "tmp/",
                "dryrun/",
                "node_modules/",
                "target/",
                "__pycache__/",
                ".pytest_cache/",
                "build/",
                ".bemol/",
                ".brazil/",
                "release-info/",
                "env/",
                ".settings/",
                "logs/",
                "versionSets/",
                "packageInfo",
                "venv",
                "packageInfo.bak",
                ".gradle",
            },
            path_display = { "smart" },
            sorting_strategy = "ascending",
            layout_config = {
                prompt_position = "top",
                width = 0.95,       -- 95% of the editor width
                height = 0.90,      -- 90% of the editor height
                preview_width = 0.6 -- optional: widen preview too 60%
            },
        },
    },
    keys = {
        { "<leader><space>", function() require('telescope.builtin').find_files() end, desc = "Find Files" },
        { "<leader>/", function() require('telescope.builtin').live_grep() end, desc = "Grep Files" },
    }
}
