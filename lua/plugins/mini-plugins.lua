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
}
