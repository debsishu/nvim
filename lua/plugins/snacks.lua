return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        bigfile = { enabled = true },
        dashboard = { 
            enabled = true,
            preset = {
                header = [[
█▀▄ ██▀ █▄▄ ▄▀▀ █ ▄▀▀ █▄█ █ █
█▄▀ █▄▄ █▄█ ▄██ █ ▄██ █ █ ▀▄█
                ]],
                -- stylua: ignore
                ---@type snacks.dashboard.Item[]
                keys = {
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "f", desc = "Find File", action = ":lua require('telescope.builtin').find_files()" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua require('telescope.builtin').live_grep()" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua require('fzf-lua').oldfiles()" },
                    { icon = " ", key = "s", desc = "Restore Session", action = ":lua require('persistence').load({ last = true })" },
                    { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
                },
            },
        },
        indent = { enabled = true },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        scope = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        rename = { enabled = true },
        scratch = { enabled = true },
        bufdelete = { enabled = true },
    },
    keys = {
        { "<leader>.",  function() Snacks.scratch() end, desc = "Toggle Scratch Buffer" },
        { "<leader>S",  function() Snacks.scratch.select() end, desc = "Select Scratch Buffer" },
        { "<leader>bd",  function() Snacks.bufDelete() end, desc = "Delete/Close Current Buffer" },
        { "<leader>bod",  function() Snacks.bufdelete.other() end, desc = "Delete/Close All Other Buffers Except the Current" },
    }
}
