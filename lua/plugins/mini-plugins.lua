return {
    {
        "echasnovski/mini.pairs",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            modes = { insert = true, command = true, terminal = false },
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            skip_ts = { "string" },
            skip_unbalanced = true,
            markdown = true,
        },
    },
    {
        "echasnovski/mini.comment",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = { "JoosepAlviste/nvim-ts-context-commentstring" },
        config = function()
            require("ts_context_commentstring").setup({
                enable_autocmd = false,
            })
            require("mini.comment").setup {
                -- tsx, jsx, html , svelte comment support
                options = {
                    custom_commentstring = function()
                        return require('ts_context_commentstring.internal').calculate_commentstring({ key =
                            'commentstring' })
                            or vim.bo.commentstring
                    end,
                },
            }
        end,
    },
    {
        "echasnovski/mini.surround",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            custom_surroundings = nil,
            highlight_duration = 300,
            mappings = {
                add = 'sa',            -- Add surrounding in Normal and Visual modes
                delete = 'ds',         -- Delete surrounding
                find = 'sf',           -- Find surrounding (to the right)
                find_left = 'sF',      -- Find surrounding (to the left)
                highlight = 'sh',      -- Highlight surrounding
                replace = 'sr',        -- Replace surrounding
                update_n_lines = 'sn', -- Update `n_lines`

                suffix_last = 'l',     -- Suffix to search with "prev" method
                suffix_next = 'n',     -- Suffix to search with "next" method
            },
            n_lines = 20,
            respect_selection_type = false,
            search_method = 'cover',
            silent = false,
        },
    },
    {
        "echasnovski/mini.splitjoin",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            local miniSplitJoin = require("mini.splitjoin")
            miniSplitJoin.setup({
                mappings = { toggle = "" }, -- Disable default mapping
            })
            vim.keymap.set({ "n", "x" }, "sj", function() miniSplitJoin.join() end, { desc = "Join arguments" })
            vim.keymap.set({ "n", "x" }, "sk", function() miniSplitJoin.split() end, { desc = "Split arguments" })
        end,
    },
}
