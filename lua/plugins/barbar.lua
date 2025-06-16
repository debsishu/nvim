return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim',
        'nvim-tree/nvim-web-devicons',
    },
    event = "BufAdd",
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        sidebar_filetypes = {
            -- Offset when Neo-tree is open
            ["neo-tree"] = {
                event = "BufWinLeave",
                text = "Neo-tree",
                align = "left",
                highlight = "Directory",
            },
        },
    },
    keys = {
        -- Pinned buffers
        { "<leader>bp", "<Cmd>BufferPin<CR>", desc = "Toggle Pin" },
        { "<leader>bP", "<Cmd>BufferCloseAllButPinned<CR>", desc = "Delete Non-Pinned Buffers" },

        -- Close to left/right
        { "<leader>br", "<Cmd>BufferCloseBuffersRight<CR>", desc = "Delete Buffers to the Right" },
        { "<leader>bl", "<Cmd>BufferCloseBuffersLeft<CR>", desc = "Delete Buffers to the Left" },

        -- Navigation
        { "<S-h>", "<Cmd>BufferPrevious<CR>", desc = "Prev Buffer" },
        { "<S-l>", "<Cmd>BufferNext<CR>", desc = "Next Buffer" },
        { "[b", "<Cmd>BufferPrevious<CR>", desc = "Prev Buffer" },
        { "]b", "<Cmd>BufferNext<CR>", desc = "Next Buffer" },

        -- Reordering
        { "[B", "<Cmd>BufferMovePrevious<CR>", desc = "Move buffer prev" },
        { "]B", "<Cmd>BufferMoveNext<CR>", desc = "Move buffer next" },
    },
    version = '^1.0.0',
}
