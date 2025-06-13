return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    lazy = true,
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    opts = function(_, opts) 
        local function on_move(data)
            Snacks.rename.on_rename_file(data.source, data.destination)
        end
        local events = require("neo-tree.events")
        opts.event_handlers = opts.event_handlers or {}
        vim.list_extend(opts.event_handlers, {
            { event = events.FILE_MOVED, handler = on_move },
            { event = events.FILE_RENAMED, handler = on_move },
        })
        return {
            filesystem = {
                filtered_items = {
                    visible = true,
                },
            },
        }
    end,
    keys = {
        { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
    },
}
